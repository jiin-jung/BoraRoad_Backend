# BoraRoad 기능 구현 방안

현재 백엔드는 `Place` 조회 API와 공간 좌표 저장 구조를 이미 가지고 있다. 따라서 1차 목표는 `Place`를 중심 엔티티로 유지하면서 `지도`, `코스 추천` 기능을 우선 구현하는 것이다.

## 1. 지도

### 목표
- 장소 목록/상세를 지도 위에 시각화한다.
- 사용자 현재 위치 기준으로 가까운 성지를 추천한다.
- 카테고리 기반 탐색 경험을 먼저 완성한다.

### 구현 범위
- MVP
  - 전체 장소 조회
  - 카테고리 필터 조회
  - 현재 위치 기준 반경 검색
  - 장소 상세 조회
- 확장
  - 지도 bounds 검색
  - 거리순 정렬
  - 인기 장소 추천

### 백엔드 설계
- 기존 `Place` 유지
- 필드 추가 후보
  - `addressKo`, `addressEn`
  - `phone`, `websiteUrl`
  - `openingHours`
  - `status` (`ACTIVE`, `HIDDEN`)
- `PlaceRepository` 확장
  - 카테고리별 조회
  - 반경 검색
  - 지도 bounds 검색
- API
  - `GET /api/v1/places`
  - `GET /api/v1/places?category=MV`
  - `GET /api/v1/places/nearby?lat=37.5&lng=127.0&radiusKm=3`
  - `GET /api/v1/places/{id}`

### DB 초안
- `places`
  - `id`, `name_ko`, `name_en`, `description_ko`, `description_en`
  - `location POINT SRID 4326`
  - `category`, `image_url`
  - `address_ko`, `address_en`
  - `phone`, `website_url`, `opening_hours`, `status`

### 핵심 로직
- 좌표는 MySQL spatial 유지
- 거리 계산은 `ST_Distance_Sphere`
- 리스트 API는 프론트 지도 렌더링을 고려해 동일한 `PlaceResponseDto` 구조 유지

## 2. 코스 추천

### 목표
- 운영자가 큐레이션한 추천 코스를 사용자에게 제공한다.
- 사용자는 코스를 조회하고 상세 경로와 포함 장소를 확인할 수 있다.
- 초기에는 유저 생성 코스보다 추천 코스 소비 경험을 우선한다.

### 코스 유형
- 에디터 추천 코스
- 테마 코스
  - `Spring Day 촬영지`
  - `서울 당일 BTS 코스`
  - `식당/카페 투어`
- 시즌성 추천 코스

### 도메인 설계
- `Course`
  - 코스 메타 정보
- `CoursePlace`
  - 코스에 포함된 장소와 순서

### 엔티티 초안
- `courses`
  - `id`, `title`, `summary`, `description`
  - `cover_image_url`
  - `estimated_duration_min`
  - `distance_km`
  - `difficulty`
  - `is_recommended`
  - `status` (`PUBLISHED`, `HIDDEN`)
  - `created_at`, `updated_at`
- `course_places`
  - `id`, `course_id`, `place_id`
  - `sort_order`
  - `stay_minutes`
  - `memo`

### API 초안
- `GET /api/v1/courses`
- `GET /api/v1/courses/recommended`
- `GET /api/v1/courses/{id}`

### 응답 설계 포인트
- 코스 목록에는 최소 정보만 포함
  - 제목, 요약, 커버 이미지, 예상 소요 시간, 총 거리
- 코스 상세에는 포함 장소 리스트 포함
  - `sortOrder`
  - `place`
  - `stayMinutes`

### 핵심 비즈니스 규칙
- 코스는 운영자 등록 기준으로만 공개
- `is_recommended=true` 인 코스만 추천 영역에 노출
- 코스 내 `sort_order`는 중복 불가
- 숨김 상태 코스는 외부 노출 금지

### 화면 흐름
- 홈에서 추천 코스 노출
- 코스 목록에서 테마별 탐색
- 코스 상세에서 포함 장소, 순서, 예상 시간 확인
- 장소 상세에서 관련 추천 코스 연결 가능

## 공통 설계

### 이번 범위에서 제외
- 길찾기
- 리뷰
- 커뮤니티
- 인증/인가
- 유저 생성 코스

### 공통 기술 원칙
- 엔티티 직접 응답 금지, DTO 사용 유지
- 좌표/거리 계산은 DB 수행
- 이미지 파일은 DB 저장 금지, URL만 저장
- 다국어는 `ko`, `en` 우선 지원

### 추천 패키지 구조
- `place`
  - controller, service, repository, dto, entity
- `course`
  - controller, service, repository, dto, entity
- `common`

현재 `controller/entity/service` 평면 구조보다 도메인 기준 패키지 분리가 유지보수에 유리하다.

## 우선순위 로드맵

### Phase 1
- `Place` API 스펙 고정
- 카테고리 필터
- 반경 검색
- 장소 상세 안정화

### Phase 2
- 추천 코스 조회
- 코스 상세
- 홈 추천 코스 영역 연결

### Phase 3
- 지도 bounds 검색
- 추천 코스 정렬/노출 규칙 고도화
- 운영용 코스 관리 기능

## 실제 구현 순서 제안
1. `Place` 탐색 API를 먼저 완성한다.
2. `Course`, `CoursePlace` 엔티티를 설계한다.
3. 추천 코스 목록 API를 연다.
4. 코스 상세 API를 연다.
5. 홈/장소 상세와 코스 연결을 붙인다.

## 현재 코드 기준 바로 착수할 작업
- `Place` 응답 스펙 nullable 여부 확정
- `Place` 목록 API 필터/nearby 안정화
- `Course`, `CoursePlace` 엔티티 신규 생성
- `GET /api/v1/courses/recommended` 구현
- `GET /api/v1/courses/{id}` 구현

## 리스크
- MySQL spatial 인덱스와 SRID 설정이 맞지 않으면 반경 검색 성능이 떨어질 수 있다.
- 추천 코스 데이터가 적으면 추천 영역이 빈약해 보일 수 있다.
- 운영 데이터 입력 방식이 없으면 추천 코스 유지보수가 어려울 수 있다.

## 결론
- 현재 우선순위는 `지도 -> 코스 추천` 순서가 맞다.
- `Place`가 핵심 기준 엔티티이고, `Course`는 이를 묶어 소비 경험을 강화하는 도메인이다.
- 길찾기, 리뷰, 커뮤니티는 현재 범위에서 제외하고 MVP 완성도를 먼저 올리는 편이 적절하다.
