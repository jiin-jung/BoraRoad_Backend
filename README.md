# 💜BoraRoad💜

**BTS 성지순례 경로 추천 서비스의 백엔드 API 서버**

---

## 📋 목차

- [🎯 프로젝트 소개](#-프로젝트-소개)
- [⏰ 개발 기간 및 환경](#-개발-기간-및-환경)
- [✨ 주요 기능](#-주요-기능)
- [🛠️ 기술 스택](#️-기술-스택)
- [🏗️ 프로젝트 아키텍처](#-프로젝트-아키텍처)
- [💾 설치 방법](#-설치-방법)
- [🚀 사용법](#-사용법)
- [👥 개발자 정보](#-개발자-정보)
- [🐛 버그 및 피드백](#-버그-및-피드백)
- [📄 라이선스](#-라이선스)
- [🔗 참고 및 출처](#-참고-및-출처)
- [📊 버전 및 업데이트 정보](#-버전-및-업데이트-정보)
- [📝 기여하기](#-기여하기)

---

## 🎯 프로젝트 소개

**BoraRoad_Backend**는 BTS 팬들을 위한 성지순례 경로 추천 및 관리 서비스의 백엔드 API 서버입니다. 
사용자들이 BTS와 관련된 명소들을 지도상에서 발견하고, 최적의 경로를 추천받으며, 자신의 순례 기록을 남길 수 있는 플랫폼입니다.

본 프로젝트는 **지역 기반 서비스(Location-Based Service)**와 **경로 최적화 알고리즘**을 활용하여 사용자의 편의성을 극대화합니다.
Spring Boot와 MySQL을 기반으로 구축되었으며, Docker를 통한 컨테이너화로 쉬운 배포와 확장성을 보장합니다.

### 🎯 프로젝트 목표

1. **효율적인 경로 추천** - 사용자의 위치와 선호도를 기반으로 최적의 순례 경로 제시
2. **실시간 위치 기반 서비스** - GPS 기반의 정확한 위치 정보 처리 및 근처 명소 검색
3. **사용자 경험 기록 관리** - 방문한 명소와 경로 기록을 통한 개인화된 서비스 제공
4. **높은 확장성과 유지보수성** - 마이크로서비스 기반 아키텍처로 향후 확장 가능
5. **안정적인 성능** - 많은 동시 사용자를 처리할 수 있는 최적화된 데이터베이스 설계

### 🔍 해결하는 문제

- **정보 산재**: BTS 성지들의 위치 정보가 여러 곳에 흩어져 있는 문제 해결
- **경로 계획의 어려움**: 효율적인 순례 경로를 직접 계획해야 하는 번거로움 제거
- **방문 기록 관리**: 어느 명소를 방문했는지 체계적으로 관리할 수 없는 문제 해결
- **새로운 명소 발견**: 알려지지 않은 숨은 명소들을 쉽게 발견할 수 있는 기회 제공

---

## ⏰ 개발 기간 및 환경

| 항목 | 세부 정보 |
|------|---------|
| **개발 기간** | 2026-03-20 ~ 2026-04-19 (1개월) |
| **주요 개발 언어** | Java 21 |
| **개발 OS** | Windows, macOS, Linux |
| **IDE** | IntelliJ IDEA, VS Code |
| **버전 관리 시스템** | Git / GitHub |
| **빌드 도구** | Gradle 8.x |
| **실행 환경** | JRE 21+ |

---

## ✨ 주요 기능

### 1️⃣ 지역 기반 경로 추천 및 검색
- **GPS 좌표 기반 검색**: Hibernate Spatial을 활용한 정밀한 위치 기반 쿼리
- **반경 내 명소 검색**: 사용자 현재 위치에서 지정된 반경 내 모든 명소 조회
- **경로 최적화**: 방문 예정 명소들의 최적 경로 자동 계산
- **인기도 기반 순위**: 다른 사용자들의 방문 기록을 바탕으로 명소 순위 제공

### 2️⃣ 사용자 경험 기록 관리
- **방문 기록 저장**: 방문한 명소와 방문 시간 자동 기록
- **개인 순례 통계**: 총 방문 명소 수, 경로 거리, 방문 시간 등 통계 제공
- **방문 사진 및 리뷰**: 방문 명소에 대한 사진 업로드 및 리뷰 작성
- **순례 경험 공유**: 자신의 경로와 기록을 다른 사용자와 공유

### 3️⃣ 실시간 위치 기반 서비스
- **실시간 위치 추적**: 사용자의 현재 위치 실시간 업데이트
- **자동 경고 시스템**: 특정 명소 근처에 도착 시 알림 제공
- **주변 명소 자동 발견**: 경로 진행 중 새로운 명소 자동 감지
- **배터리 최적화**: 백그라운드에서의 효율적인 위치 처리

### 4️⃣ 성지 순례 기록 및 통계
- **순례 이력 관리**: 모든 순례 기록의 상세 히스토리 저장
- **개인 대시보드**: 사용자의 순례 통계를 한눈에 볼 수 있는 대시보드
- **성취 배지 시스템**: 특정 조건 달성 시 배지 부여
- **순례 커뮤니티**: 다른 팬들과 경험 공유 및 팁 교환

---

## 🛠️ 기술 스택

### 🔧 Backend
| 기술 | 버전 | 설명 |
|------|------|------|
| **Java** | 21 | 프로젝트의 기본 개발 언어 |
| **Spring Boot** | 3.4.3 | REST API 서버 프레임워크 |
| **Spring Data JPA** | 3.4.3 | ORM 기반 데이터 접근 계층 |
| **Hibernate Spatial** | 6.x | 지리 정보 처리 및 위치 기반 쿼리 |
| **Lombok** | 1.18.30 | 보일러플레이트 코드 제거 |

### 💾 Database
| 기술 | 버전 | 설명 |
|------|------|------|
| **MySQL** | 8.0+ | 관계형 데이터베이스 |
| **GIS (Geographic Info System)** | MySQL 내장 | 지리 정보 저장 및 쿼리 |

### 🚀 DevOps & Tools
| 도구 | 버전 | 설명 |
|------|------|------|
| **Docker** | 20.10+ | 컨테이너 기반 배포 및 실행 |
| **Docker Compose** | 2.0+ | 멀티 컨테이너 오케스트레이션 |
| **Gradle** | 8.0+ | 빌드 자동화 도구 |
| **JUnit 5** | 5.x | 단위 테스트 프레임워크 |

### 📚 기타
- **Spring Boot DevTools**: 개발 환경에서의 자동 재시작
- **Spring Boot Actuator**: 애플리케이션 모니터링 및 관리
- **MySQL Connector/J**: MySQL 데이터베이스 드라이버

---

## 🏗️ 프로젝트 아키텍처

### 📂 디렉토리 구조

```
BoraRoad_Backend/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/boraroad/
│   │   │       ├── config/          # 설정 클래스
│   │   │       ├── controller/      # REST API 컨트롤러
│   │   │       ├── service/         # 비즈니스 로직
│   │   │       ├── repository/      # 데이터 접근 계층
│   │   │       ├── entity/          # JPA 엔티티
│   │   │       ├── dto/             # 데이터 전송 객체
│   │   │       ├── exception/       # 커스텀 예외
│   │   │       └── util/            # 유틸리티 클래스
│   │   └── resources/
│   │       ├── application.yml      # 애플리케이션 설정
│   │       ├── application-dev.yml  # 개발 환경 설정
│   │       └── application-prod.yml # 운영 환경 설정
│   └── test/
│       └── java/                    # 테스트 코드
├── gradle/                          # Gradle 래퍼
├── Dockerfile                       # Docker 이미지 정의
├── compose.yaml                     # 개발 환경 Docker Compose
├── compose.prod.yaml                # 운영 환경 Docker Compose
├── build.gradle                     # Gradle 빌드 설정
├── settings.gradle                  # Gradle 프로젝트 설정
├── .env.example                     # 환경 변수 예시
└── README.md                        # 프로젝트 문서
```

### 🔧 주요 구성 요소

| 모듈 | 설명 |
|------|------|
| **Controller** | HTTP 요청을 받아 Service로 전달하고 응답 반환 |
| **Service** | 비즈니스 로직 처리 및 데이터 변환 |
| **Repository** | JPA를 통한 데이터베이스 접근 계층 |
| **Entity** | 데이터베이스 테이블 매핑 객체 |
| **DTO** | 클라이언트와의 데이터 통신 객체 |
| **Config** | Spring 빈 설정 및 환경 구성 |
| **Exception** | 비즈니스 예외 처리 및 에러 핸들링 |

### 🏛️ 아키텍처 다이어그램

```
Client (Frontend)
    ↓ (HTTP Request)
API Gateway / Spring Security
    ↓
REST Controller
    ↓
Service Layer (Business Logic)
    ↓
Repository Layer (JPA)
    ↓
MySQL Database (with Spatial Extension)
```

---

## 💾 설치 방법

### ✅ 필수 요구사항

| 항목 | 최소 버전 |
|------|---------|
| JDK | 21 |
| Gradle | 8.0 |
| MySQL | 8.0 |
| Docker | 20.10 |
| Docker Compose | 2.0 |
| Git | 2.0 |

### 📦 단계별 설치 가이드

#### 1단계: 저장소 클론

```bash
git clone https://github.com/jiin-jung/BoraRoad_Backend.git
cd BoraRoad_Backend
```

#### 2단계: 환경 변수 설정

```bash
# .env.example을 .env로 복사
cp .env.example .env

# .env 파일 편집 (필요한 값 설정)
# MYSQL_DATABASE=bts_pilgrimage
# MYSQL_ROOT_PASSWORD=your-password
# SPRING_DATASOURCE_URL=jdbc:mysql://mysql:3306/bts_pilgrimage...
# SERVER_PORT=8081
```

#### 3단계: Docker Compose를 이용한 데이터베이스 실행

```bash
# 개발 환경
docker-compose up -d

# 운영 환경
docker-compose -f compose.prod.yaml up -d
```

#### 4단계: 애플리케이션 빌드 및 실행

```bash
# Gradle 빌드
./gradlew clean build

# 애플리케이션 실행 (개발 환경)
./gradlew bootRun

# 또는 빌드된 JAR 파일로 실행
java -jar build/libs/boraroad-0.0.1-SNAPSHOT.jar
```

#### 5단계: 서버 접속 확인

```bash
# 헬스 체크
curl http://localhost:8081/actuator/health

# 응답 예시
# {"status":"UP"}
```

### 🔧 트러블슈팅

**문제**: `Connection refused: MySQL`
```bash
# 해결방법: Docker 컨테이너 상태 확인
docker ps
# MySQL 컨테이너가 실행 중인지 확인
docker logs [mysql-container-id]
```

**문제**: `Port 8081 already in use`
```bash
# 포트 변경
# .env 파일에서 SERVER_PORT=8082로 변경
# 또는 기존 프로세스 종료
lsof -i :8081
kill -9 [PID]
```

**문제**: Gradle 빌드 실패
```bash
# Gradle 캐시 삭제 후 재시도
./gradlew clean --refresh-dependencies build
```

---

## 🚀 사용법

### 🔑 기본 사용 방법

#### 1단계: 애플리케이션 시작

```bash
./gradlew bootRun
```

#### 2단계: API 엔드포인트 확인

서버가 `http://localhost:8081`에서 실행됩니다.

#### 3단계: API를 통해 요청 전송

아래의 예시를 참고하여 API를 호출합니다.

### 📡 API 사용 예시

#### 1. 전체 명소 조회

```bash
curl -X GET http://localhost:8081/api/landmarks \
  -H "Content-Type: application/json"

# 응답 예시:
# {
#   "data": [
#     {
#       "id": 1,
#       "name": "방탄소년단 청사진",
#       "latitude": 37.7749,
#       "longitude": -122.4194,
#       "description": "BTS 관련 명소"
#     }
#   ],
#   "status": "success"
# }
```

#### 2. 반경 내 명소 검색

```bash
curl -X GET "http://localhost:8081/api/landmarks/nearby?latitude=37.7749&longitude=-122.4194&radius=1000" \
  -H "Content-Type: application/json"

# 응답: 지정된 반경(1000m) 내의 모든 명소 반환
```

#### 3. 사용자 경로 생성

```bash
curl -X POST http://localhost:8081/api/routes \
  -H "Content-Type: application/json" \
  -d '{
    "userId": 1,
    "startPoint": {"latitude": 37.7749, "longitude": -122.4194},
    "endPoint": {"latitude": 37.7849, "longitude": -122.4294},
    "routeName": "주말 성지순례"
  }'

# 응답: 생성된 경로 정보 반환
```

#### 4. 방문 기록 저장

```bash
curl -X POST http://localhost:8081/api/visits \
  -H "Content-Type: application/json" \
  -d '{
    "userId": 1,
    "landmarkId": 1,
    "visitDate": "2026-04-19T15:30:00",
    "review": "정말 좋은 곳이에요!",
    "rating": 5
  }'

# 응답: 저장된 방문 기록 반환
```

#### 5. 사용자 통계 조회

```bash
curl -X GET http://localhost:8081/api/users/1/statistics \
  -H "Content-Type: application/json"

# 응답:
# {
#   "userId": 1,
#   "totalVisits": 25,
#   "totalDistance": 45.5,
#   "totalTime": "120:30",
#   "favoriteRegion": "서울"
# }
```

### ⚙️ 고급 기능 설정

#### 데이터베이스 마이그레이션

```bash
# Liquibase를 사용한 스키마 관리
./gradlew flywayMigrate
```

#### 애플리케이션 프로파일 변경

```bash
# 운영 환경으로 실행
./gradlew bootRun --args='--spring.profiles.active=prod'
```

---

## 👥 개발자 정보

### 👨‍💻 프로젝트 팀

| 역할 | 이름 | 담당 영역 | GitHub |
|------|------|---------|--------|
| **프로젝트 리더 & Backend** | jiin-jung | 전체 아키텍처, API 개발, 데이터베이스 설계 | [@jiin-jung](https://github.com/jiin-jung) |
| **Backend Developer** | jiin-jung | Service 계층, Repository 구현 | [@jiin-jung](https://github.com/jiin-jung) |
| **DevOps** | limwr706 | Docker, 배포 파이프라인 구축 | [@limwr706](https://github.com/limwr706) |

### 📧 연락처

- **이메일**: jiin.jung@example.com
- **GitHub Issues**: [BoraRoad_Backend Issues](https://github.com/jiin-jung/BoraRoad_Backend/issues)
- **Discussion**: [BoraRoad_Backend Discussions](https://github.com/jiin-jung/BoraRoad_Backend/discussions)

---

## 🐛 버그 및 피드백

### 🔍 버그 보고 방법

버그를 발견했다면 다음 정보를 포함하여 [Issue를 등록](https://github.com/jiin-jung/BoraRoad_Backend/issues/new)해주세요:

#### 버그 보고 템플릿

```
## 버그 설명
어떤 버그인지 명확하게 설명해주세요.

## 재현 방법
버그를 재현할 수 있는 단계별 방법을 적어주세요:
1. ...
2. ...
3. ...

## 예상 동작
원래 어떻게 작동했어야 하는지 설명해주세요.

## 실제 동작
실제로 어떻게 작동했는지 설명해주세요.

## 환경 정보
- OS: [예: Windows 11, macOS 13]
- Java Version: [예: 21.0.1]
- Gradle Version: [예: 8.4]
- MySQL Version: [예: 8.0.35]
- 기타 정보: [필요하면 추가]
```

### 💡 개선 제안 방법

기능 개선 아이디어가 있다면 [Discussion](https://github.com/jiin-jung/BoraRoad_Backend/discussions)에서 공유해주세요.

```
## 개선 제안
현재 어떤 부분이 개선되면 좋을지 제안해주세요.

## 예상 효과
개선 시 어떤 이점이 있을지 설명해주세요.

## 추가 정보
필요하면 참고할 수 있는 링크나 예시를 첨부해주세요.
```

---

## 📄 라이선스

이 프로젝트는 **MIT License** 하에 배포됩니다.

자세한 내용은 [LICENSE](LICENSE) 파일을 참고해주세요.

### 📋 사용 권한

| 권한 | 내용 |
|------|------|
| ✅ **상업적 사용** | 프로젝트를 상업적 목적으로 사용 가능 |
| ✅ **수정 및 배포** | 코드를 수정하여 배포 가능 |
| ✅ **개인 프로젝트** | 개인 프로젝트에서 자유롭게 사용 |
| ⚠️ **저작자 표시** | 사용 시 원저작자(jiin-jung) 명시 필수 |
| ❌ **책임 제한** | 소프트웨어 사용으로 인한 손해에 대해 책임 없음 |

---

## 🔗 참고 및 출처

### 📚 공식 문서

1. [Spring Boot 공식 문서](https://spring.io/projects/spring-boot)
   - Spring Boot 3.4.3 및 Spring Framework 최신 기능

2. [Hibernate Spatial 가이드](https://docs.jboss.org/hibernate/orm/current/spatial/html_single/)
   - 지리 정보 데이터베이스 처리 및 공간 쿼리

3. [MySQL 공식 문서](https://dev.mysql.com/doc/)
   - MySQL 8.0 설치, 설정, 운영 가이드

4. [Docker 공식 문서](https://docs.docker.com/)
   - Docker 이미지 빌드, 컨테이너 실행, Docker Compose 사용법

5. [Gradle 공식 사이트](https://gradle.org/guides/)
   - Gradle 빌드 시스템 상세 가이드

### 🔗 참고 프로젝트

- [Spring Boot API 예제](https://github.com/spring-projects/spring-boot/tree/main/spring-boot-samples)
- [Hibernate Spatial 샘플](https://github.com/hibernate/hibernate-orm/tree/main/documentation/src/main/asciidoc)

---

## 📊 버전 및 업데이트 정보

### 📌 현재 버전

**v0.0.1-SNAPSHOT** (개발 중)

### 📜 버전 히스토리

| 버전 | 출시일 | 주요 변경사항 |
|------|--------|-------------|
| 0.0.1-SNAPSHOT | 2026-04-19 | 초기 프로젝트 구축, API 기본 틀 완성 |
| 0.1.0 | (예정) | 기본 CRUD 작업 완료 |
| 0.2.0 | (예정) | 지역 기반 검색 기능 완성 |
| 1.0.0 | (예정) | 첫 번째 정식 릴리스 |

### 🗓️ 향후 계획 (Roadmap)

- [x] 프로젝트 초기 셋업
- [x] 기본 엔티티 설계
- [ ] REST API 엔드포인트 구현
- [ ] 위치 기반 검색 기능
- [ ] 경로 추천 알고리즘
- [ ] 인증 및 보안 강화
- [ ] API 문서화 (Swagger/OpenAPI)
- [ ] 성능 최적화
- [ ] 배포 및 CI/CD 구축
- [ ] 모니터링 및 로깅 추가

### 📅 최근 업데이트

- **2026-04-19**: README.md 작성, 초기 프로젝트 구성 완료
- **2026-04-09**: 첫 커밋, 프로젝트 저장소 생성

---

## 📝 기여하기

이 프로젝트에 기여하고 싶으신가요? 다음 단계를 따라주세요!

### 🍴 Fork 방법

1. [이 저장소](https://github.com/jiin-jung/BoraRoad_Backend)를 Fork합니다
2. Fork한 저장소를 로컬에 클론합니다:
   ```bash
   git clone https://github.com/[your-username]/BoraRoad_Backend.git
   ```

### 🌿 기능 브랜치 생성

```bash
# 메인 브랜치에서 새로운 브랜치 생성
git checkout -b feature/your-feature-name

# 또는 버그 수정의 경우
git checkout -b bugfix/bug-name
```

### 💬 커밋 메시지 컨벤션

명확한 커밋 메시지를 작성해주세요:

```bash
# 기본 형식
git commit -m "[Type] 짧은 설명"

# 예시
git commit -m "[Feature] 주변 명소 검색 기능 추가"
git commit -m "[Fix] 위치 쿼리 버그 수정"
git commit -m "[Docs] README.md 업데이트"
git commit -m "[Refactor] 서비스 계층 리팩토링"

# 유형
# [Feature] - 새로운 기능
# [Fix] - 버그 수정
# [Docs] - 문서 수정
# [Style] - 코드 포맷팅
# [Refactor] - 코드 리팩토링
# [Test] - 테스트 코드 추가
# [Chore] - 빌드 설정, 의존성 등
```

### 📤 Push 및 Pull Request

```bash
# 로컬 변경사항을 원격 저장소에 푸시
git push origin feature/your-feature-name

# GitHub에서 Pull Request 생성
# 1. GitHub 저장소로 이동
# 2. "Compare & pull request" 클릭
# 3. PR 설명 작성
# 4. 제출
```

### ✅ Pull Request 체크리스트

PR을 제출하기 전에 다음을 확인해주세요:

- [ ] 코드가 프로젝트의 스타일을 따르고 있는가?
- [ ] 새로운 기능이나 버그 수정이 명확하게 설명되어 있는가?
- [ ] 관련 이슈가 링크되어 있는가? (예: Closes #123)
- [ ] 테스트 코드가 작성되었는가?
- [ ] 빌드가 정상적으로 완료되는가?

---

## 푸터

❤️ **Made with love by [jiin-jung](https://github.com/jiin-jung)**

**마지막 업데이트**: 2026-04-19

---

**Happy Coding! 🚀**
