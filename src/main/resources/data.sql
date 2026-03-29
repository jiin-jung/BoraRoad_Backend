DELETE FROM course_places;
DELETE FROM courses;
DELETE FROM places;
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('하이브 사옥', 'HYBE Office', '방탄소년단(BTS)의 소속사 하이브 사옥입니다.', 'The headquarters of HYBE and BTS.', ST_GeomFromText('POINT(126.964190 37.524543)'), 'PHOTO_ZONE', 'https://lh3.googleusercontent.com/p/AF1QipO3-v_Xf9_v_Xf9_v_Xf9_v_Xf9_v_Xf9_v_X=s1360-w1360-h1020', false, 'EVERGREEN', null, null, null);
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('금돼지식당', 'Geumdwaeji Sikdang', '멤버들이 자주 방문하는 미쉐린 가이드 맛집입니다.', 'Famous BBQ restaurant visited by BTS members.', ST_GeomFromText('POINT(127.0118 37.5571)'), 'RESTAURANT', 'https://images.unsplash.com/photo-1544025162-d76694265947?auto=format&fit=crop&w=800&q=60', false, 'EVERGREEN', null, null, null);
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('경복궁 근정전', 'Gyeongbokgung Geunjeongjeon', 'IDOL 무대를 촬영했던 경복궁의 정전입니다.', 'The main hall of Gyeongbokgung Palace where BTS performed IDOL.', ST_GeomFromText('POINT(126.9768 37.5786)'), 'MV', 'https://images.unsplash.com/photo-1548115184-bc6544d06a58?auto=format&fit=crop&w=800&q=60', false, 'EVERGREEN', null, null, null);
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('유정식당', 'Yoojung Sikdang', '연습생 시절 단골집으로 일명 방탄식당입니다.', 'The restaurant BTS frequented during their trainee days.', ST_GeomFromText('POINT(127.028057 37.518361)'), 'RESTAURANT', 'https://lh3.googleusercontent.com/p/AF1QipN3-v_Y5n33yQ2D396z9B_5tBq4z-PqY-L6m-S0=s1360-w1360-h1020', false, 'EVERGREEN', null, null, null);
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('서오릉', 'Seooreung', '아름다운 산책로와 세계문화유산인 조선 왕릉입니다.', 'Historical royal tombs with beautiful walking paths.', ST_GeomFromText('POINT(126.900757 37.623548)'), 'PHOTO_ZONE', 'https://images.unsplash.com/photo-1505144808419-1957a94ca61e?auto=format&fit=crop&w=800&q=60', false, 'EVERGREEN', null, null, null);
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('을지로 노가리골목', 'Euljiro Nogari Alley', '뷔가 사진을 찍어 유명해진 힙한 골목입니다.', 'Popular spot in Seoul, famous for photos taken by V.', ST_GeomFromText('POINT(126.991797 37.567118)'), 'CAFE', 'https://images.unsplash.com/photo-1555396273-367ea4eb4db5?auto=format&fit=crop&w=800&q=60', false, 'EVERGREEN', null, null, null);
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('용인 대장금 파크', 'Yongin Dae Jang Geum Park', '슈가(Agust D)의 대취타 뮤직비디오 촬영지입니다.', 'Filming location for Agust Ds Daechwita music video.', ST_GeomFromText('POINT(127.337160 37.121230)'), 'MV', 'https://images.unsplash.com/photo-1528154291023-a6525fabe5b4?auto=format&fit=crop&w=800&q=60', false, 'EVERGREEN', null, null, null);
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('주문진 BTS 버스정류장', 'Jumunjin BTS Bus Stop', '앨범 자켓 촬영지로 유명한 버스정류장 성지입니다.', 'Famous bus stop from the You Never Walk Alone album cover.', ST_GeomFromText('POINT(128.817126 37.912441)'), 'PHOTO_ZONE', 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?auto=format&fit=crop&w=800&q=60', false, 'EVERGREEN', null, null, null);
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('일영역', 'Iryeong Station', '봄날(Spring Day) 뮤직비디오에서 뷔가 기차를 기다리던 간이역입니다.', 'The train station from Spring Day music video where V waited.', ST_GeomFromText('POINT(126.929393 37.700618)'), 'MV', 'https://images.unsplash.com/photo-1474487022152-5243a48fb5b7?auto=format&fit=crop&w=800&q=60', false, 'EVERGREEN', null, null, null);
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('카페 휴가', 'Cafe Hyuga', '멤버들의 옛 숙소를 개조해 운영 중인 팬 성지 카페입니다.', 'A fan-favorite cafe converted from BTS''s former dorm.', ST_GeomFromText('POINT(127.033235 37.509641)'), 'CAFE', 'https://images.unsplash.com/photo-1509042239860-f550ce710b93?auto=format&fit=crop&w=800&q=60', false, 'EVERGREEN', null, null, null);
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('구 빅히트 사옥', 'Former Big Hit Office', '초기 연습생 시절의 서사가 남아 있는 옛 빅히트 사옥입니다.', 'The former Big Hit office tied to BTS''s early trainee era.', ST_GeomFromText('POINT(127.025071 37.518623)'), 'PHOTO_ZONE', 'https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?auto=format&fit=crop&w=800&q=60', false, 'EVERGREEN', null, null, null);
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('숭례문', 'Sungnyemun Gate', '서울 대표 랜드마크이자 BTS 관련 글로벌 무대 연출로 회자되는 장소입니다.', 'An iconic Seoul landmark associated with BTS global stage productions.', ST_GeomFromText('POINT(126.975308 37.559984)'), 'PHOTO_ZONE', 'https://images.unsplash.com/photo-1538485399081-7c897ad6a91a?auto=format&fit=crop&w=800&q=60', false, 'EVERGREEN', null, null, null);
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('서울숲 벤치가든', 'Seoul Forest Bench Garden', '팬들이 멤버 이름이 새겨진 벤치를 찾으러 방문하는 산책 코스입니다.', 'A Seoul Forest walking spot known for BTS member-themed benches.', ST_GeomFromText('POINT(127.037436 37.544387)'), 'PHOTO_ZONE', 'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=800&q=60', false, 'EVERGREEN', null, null, null);
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('학동근린공원', 'Hakdong Neighborhood Park', '연습생 시절 추억과 함께 언급되는 강남권 공원입니다.', 'A Gangnam neighborhood park often mentioned in BTS trainee-era stories.', ST_GeomFromText('POINT(127.028418 37.516938)'), 'PHOTO_ZONE', 'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?auto=format&fit=crop&w=800&q=60', false, 'EVERGREEN', null, null, null);
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('광화문광장', 'Gwanghwamun Square', '2026년 3월 21일 BTS 컴백 라이브 메인 공연이 열렸던 서울 중심 광장입니다.', 'The central Seoul square that hosted the BTS comeback live main stage on March 21, 2026.', ST_GeomFromText('POINT(126.976902 37.571478)'), 'PHOTO_ZONE', 'https://images.unsplash.com/photo-1517154421773-0529f29ea451?auto=format&fit=crop&w=800&q=60', true, 'EVENT_RETROSPECTIVE', 'COMEBACK_EVENT', '2026-03-20', '2026-03-22');
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('서울마이소울 라운지', 'Seoul My Soul Lounge', '2026년 3월 20일부터 22일까지 서울광장 일대에서 운영된 브랜드 이벤트 라운지입니다.', 'A Seoul city branding lounge that operated near Seoul Plaza from March 20 to 22, 2026.', ST_GeomFromText('POINT(126.978388 37.565909)'), 'PHOTO_ZONE', 'https://images.unsplash.com/photo-1492684223066-81342ee5ff30?auto=format&fit=crop&w=800&q=60', true, 'EVENT_RETROSPECTIVE', 'CITY_PROMO', '2026-03-20', '2026-03-22');
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('해치 아트벌룬', 'Haechi Art Balloon', '청계광장에 설치됐던 해치 포토존으로 2026년 3월 프로모션 기간에 운영됐습니다.', 'A Haechi photo installation at Cheonggye Plaza used during the March 2026 promotion period.', ST_GeomFromText('POINT(126.978940 37.569761)'), 'PHOTO_ZONE', 'https://images.unsplash.com/photo-1529156069898-49953e39b3ac?auto=format&fit=crop&w=800&q=60', true, 'EVENT_RETROSPECTIVE', 'CITY_PROMO', '2026-03-19', '2026-03-24');
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('서울 스테이 라운지', 'Seoul Stay Lounge', '서울시청 지하 서울갤러리에서 운영된 휴게형 프로모션 공간입니다.', 'A lounge-style promotion space that operated in the Seoul Gallery beneath City Hall.', ST_GeomFromText('POINT(126.977969 37.566534)'), 'CAFE', 'https://images.unsplash.com/photo-1517457373958-b7bdd4587205?auto=format&fit=crop&w=800&q=60', true, 'EVENT_RETROSPECTIVE', 'CITY_PROMO', '2026-03-20', '2026-04-12');
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('통인시장', 'Tongin Market', '광화문과 경복궁 일대 방문 시 함께 묶기 좋은 종로 로컬 미식 스팟입니다.', 'A local food market in Jongno often paired with visits to Gwanghwamun and Gyeongbokgung.', ST_GeomFromText('POINT(126.969386 37.580471)'), 'RESTAURANT', 'https://images.unsplash.com/photo-1555396273-367ea4eb4db5?auto=format&fit=crop&w=800&q=60', true, 'EVENT_RETROSPECTIVE', 'COMEBACK_EVENT', '2026-03-20', '2026-03-22');
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('토속촌 삼계탕', 'Tosokchon Samgyetang', '경복궁과 광화문 동선에서 많이 찾는 대표 삼계탕 맛집입니다.', 'A classic samgyetang restaurant frequently added to Gyeongbokgung and Gwanghwamun itineraries.', ST_GeomFromText('POINT(126.972269 37.577538)'), 'RESTAURANT', 'https://images.unsplash.com/photo-1547592180-85f173990554?auto=format&fit=crop&w=800&q=60', true, 'EVENT_RETROSPECTIVE', 'COMEBACK_EVENT', '2026-03-20', '2026-03-22');
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('고양관광정보센터', 'Goyang Tourist Information Center', '외벽의 초대형 RM 벽화로 유명한 고양 BTS 인증샷 거점입니다.', 'A key BTS photo stop in Goyang known for its giant RM mural on the exterior wall.', ST_GeomFromText('POINT(126.770500 37.661200)'), 'PHOTO_ZONE', 'https://images.unsplash.com/photo-1491553895911-0055eca6402d?auto=format&fit=crop&w=800&q=60', true, 'EVENT_GUIDE', 'CONCERT_EVENT', '2026-04-09', '2026-04-12');
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('일산호수공원', 'Ilsan Lake Park', 'RM의 고향 서사를 상징하는 산책 스팟으로 공연 전후 들르기 좋은 호수공원입니다.', 'A lakeside walk spot tied to RM''s hometown narrative and ideal before or after the concert.', ST_GeomFromText('POINT(126.765700 37.657200)'), 'PHOTO_ZONE', 'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=800&q=60', true, 'EVENT_GUIDE', 'CONCERT_EVENT', '2026-04-09', '2026-04-12');
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('라페스타 & 웨스턴돔', 'Lafesta & Western Dom', 'RM의 유년기 기억과 Ma City 서사가 겹치는 일산 대표 상권입니다.', 'A signature Ilsan commercial district tied to RM''s childhood memories and the song Ma City.', ST_GeomFromText('POINT(126.769900 37.660900)'), 'CAFE', 'https://images.unsplash.com/photo-1513104890138-7c749659a591?auto=format&fit=crop&w=800&q=60', true, 'EVENT_GUIDE', 'CONCERT_EVENT', '2026-04-09', '2026-04-12');
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('후곡 학원촌', 'Hugok Academy Village', 'RM의 학창 시절과 성장 배경을 따라가 볼 수 있는 일산의 상징적 구역입니다.', 'An iconic Ilsan area associated with RM''s school days and formative years.', ST_GeomFromText('POINT(126.751600 37.674300)'), 'PHOTO_ZONE', 'https://images.unsplash.com/photo-1496307653780-42ee777d4833?auto=format&fit=crop&w=800&q=60', true, 'EVENT_GUIDE', 'CONCERT_EVENT', '2026-04-09', '2026-04-12');
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('대화동 먹자골목', 'Daehwa-dong Food Alley', '대진고 인근에서 공연장 동선과 함께 묶기 좋은 로컬 식사 거리입니다.', 'A local food alley near RM''s school area and an easy stop on the concert route.', ST_GeomFromText('POINT(126.744600 37.674900)'), 'RESTAURANT', 'https://images.unsplash.com/photo-1552566626-52f8b828add9?auto=format&fit=crop&w=800&q=60', true, 'EVENT_GUIDE', 'CONCERT_EVENT', '2026-04-09', '2026-04-12');
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('킨텍스', 'KINTEX', '대규모 BTS 팬 이벤트와 전시가 자주 열리는 고양 대표 행사 거점입니다.', 'A major Goyang event venue often associated with large-scale BTS fan events and exhibitions.', ST_GeomFromText('POINT(126.744200 37.668700)'), 'PHOTO_ZONE', 'https://images.unsplash.com/photo-1511578314322-379afb476865?auto=format&fit=crop&w=800&q=60', true, 'EVENT_GUIDE', 'CONCERT_EVENT', '2026-04-09', '2026-04-12');
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('고양종합운동장', 'Goyang Stadium', '2026년 4월 9일, 4월 11일, 4월 12일 공연 동선의 핵심이 되는 대형 공연장입니다.', 'The main stadium anchoring the concert route on April 9, April 11, and April 12, 2026.', ST_GeomFromText('POINT(126.752900 37.673600)'), 'PHOTO_ZONE', 'https://images.unsplash.com/photo-1508098682722-e99c643e7485?auto=format&fit=crop&w=800&q=60', true, 'EVENT_GUIDE', 'CONCERT_EVENT', '2026-04-09', '2026-04-12');
INSERT INTO places (name_ko, name_en, description_ko, description_en, location, category, image_url, is_event, theme_type, event_type, event_start_date, event_end_date) VALUES ('일산서구청 주차타워', 'Ilsanseo-gu Office Parking Tower', '공연장 인근에서 포토 스팟과 주차 거점 역할을 겸하는 방문 포인트입니다.', 'A nearby stop that works both as a practical parking hub and an informal photo point near the venue.', ST_GeomFromText('POINT(126.752500 37.674400)'), 'PHOTO_ZONE', 'https://images.unsplash.com/photo-1499856871958-5b9627545d1a?auto=format&fit=crop&w=800&q=60', true, 'EVENT_GUIDE', 'CONCERT_EVENT', '2026-04-09', '2026-04-12');

INSERT INTO courses (title, summary, description, cover_image_url, estimated_duration_min, distance_km, difficulty, recommended, is_event, theme_type, event_type, event_start_date, event_end_date, status)
VALUES ('서울 당일 BTS 코스', '하이브 사옥부터 식당, 촬영지까지 하루에 도는 서울 추천 코스', '서울 시내 주요 BTS 성지를 하루 동선으로 묶은 추천 코스입니다.', 'https://images.unsplash.com/photo-1517154421773-0529f29ea451?auto=format&fit=crop&w=1200&q=60', 360, 12.50, 'EASY', true, false, 'EVERGREEN', null, null, null, 'PUBLISHED');

INSERT INTO courses (title, summary, description, cover_image_url, estimated_duration_min, distance_km, difficulty, recommended, is_event, theme_type, event_type, event_start_date, event_end_date, status)
VALUES ('서부권 촬영지 추천 코스', '경복궁과 일영역 중심으로 묶은 촬영지 추천 코스', '뮤직비디오 촬영지 위주로 서부권 이동 동선을 구성한 코스입니다.', 'https://images.unsplash.com/photo-1507608616759-54f48f0af0ee?auto=format&fit=crop&w=1200&q=60', 300, 18.30, 'NORMAL', true, false, 'EVERGREEN', null, null, null, 'PUBLISHED');

INSERT INTO courses (title, summary, description, cover_image_url, estimated_duration_min, distance_km, difficulty, recommended, is_event, theme_type, event_type, event_start_date, event_end_date, status)
VALUES ('강남 BTS 히스토리 코스', '옛 숙소와 식당, 초기 사옥을 따라가는 강남 중심 코스', '카페 휴가, 유정식당, 구 빅히트 사옥, 학동근린공원으로 이어지는 BTS 초기 서사 중심 코스입니다.', 'https://images.unsplash.com/photo-1467269204594-9661b134dd2b?auto=format&fit=crop&w=1200&q=60', 210, 6.80, 'EASY', true, false, 'EVERGREEN', null, null, null, 'PUBLISHED');

INSERT INTO courses (title, summary, description, cover_image_url, estimated_duration_min, distance_km, difficulty, recommended, is_event, theme_type, event_type, event_start_date, event_end_date, status)
VALUES ('광화문 BTS 이벤트 동선', '2026년 3월 20일~22일 컴백 프로모션 장소를 따라가는 광화문권 코스', '광화문광장, 경복궁, 서울광장, 청계광장과 인근 미식 스팟을 묶은 2026년 3월 이벤트 회고형 코스입니다.', 'https://images.unsplash.com/photo-1507608869274-d3177c8bb4c7?auto=format&fit=crop&w=1200&q=60', 240, 4.90, 'EASY', false, true, 'EVENT_RETROSPECTIVE', 'COMEBACK_EVENT', '2026-03-20', '2026-03-22', 'PUBLISHED');

INSERT INTO courses (title, summary, description, cover_image_url, estimated_duration_min, distance_km, difficulty, recommended, is_event, theme_type, event_type, event_start_date, event_end_date, status)
VALUES ('고양 BTS 콘서트 대비 스팟', '2026년 4월 9일, 11일, 12일 공연 전후로 묶어보기 좋은 고양 스팟', '고양관광정보센터, 일산호수공원, 라페스타·웨스턴돔, 킨텍스, 고양종합운동장을 중심으로 RM의 고향 서사와 공연 동선을 함께 묶은 이벤트 가이드 코스입니다.', 'https://images.unsplash.com/photo-1514525253161-7a46d19cd819?auto=format&fit=crop&w=1200&q=60', 300, 9.40, 'EASY', false, true, 'EVENT_GUIDE', 'CONCERT_EVENT', '2026-04-09', '2026-04-12', 'PUBLISHED');

INSERT INTO course_places (course_id, place_id, sort_order, stay_minutes, memo)
SELECT
    (SELECT id FROM courses WHERE title = '서울 당일 BTS 코스'),
    (SELECT id FROM places WHERE name_ko = '하이브 사옥'),
    1, 40, '오전 방문 추천';
INSERT INTO course_places (course_id, place_id, sort_order, stay_minutes, memo)
SELECT
    (SELECT id FROM courses WHERE title = '서울 당일 BTS 코스'),
    (SELECT id FROM places WHERE name_ko = '유정식당'),
    2, 60, '점심 식사 장소';
INSERT INTO course_places (course_id, place_id, sort_order, stay_minutes, memo)
SELECT
    (SELECT id FROM courses WHERE title = '서울 당일 BTS 코스'),
    (SELECT id FROM places WHERE name_ko = '을지로 노가리골목'),
    3, 45, '골목 사진 촬영 추천';

INSERT INTO course_places (course_id, place_id, sort_order, stay_minutes, memo)
SELECT
    (SELECT id FROM courses WHERE title = '서부권 촬영지 추천 코스'),
    (SELECT id FROM places WHERE name_ko = '경복궁 근정전'),
    1, 50, '궁 내부 이동 시간 고려';
INSERT INTO course_places (course_id, place_id, sort_order, stay_minutes, memo)
SELECT
    (SELECT id FROM courses WHERE title = '서부권 촬영지 추천 코스'),
    (SELECT id FROM places WHERE name_ko = '일영역'),
    2, 40, '해질 무렵 방문 추천';

INSERT INTO course_places (course_id, place_id, sort_order, stay_minutes, memo)
SELECT
    (SELECT id FROM courses WHERE title = '강남 BTS 히스토리 코스'),
    (SELECT id FROM places WHERE name_ko = '학동근린공원'),
    1, 30, '가볍게 산책하며 시작';
INSERT INTO course_places (course_id, place_id, sort_order, stay_minutes, memo)
SELECT
    (SELECT id FROM courses WHERE title = '강남 BTS 히스토리 코스'),
    (SELECT id FROM places WHERE name_ko = '구 빅히트 사옥'),
    2, 25, '외부 인증샷 중심';
INSERT INTO course_places (course_id, place_id, sort_order, stay_minutes, memo)
SELECT
    (SELECT id FROM courses WHERE title = '강남 BTS 히스토리 코스'),
    (SELECT id FROM places WHERE name_ko = '유정식당'),
    3, 60, '식사 시간 포함';
INSERT INTO course_places (course_id, place_id, sort_order, stay_minutes, memo)
SELECT
    (SELECT id FROM courses WHERE title = '강남 BTS 히스토리 코스'),
    (SELECT id FROM places WHERE name_ko = '카페 휴가'),
    4, 50, '카페 체류 및 팬메모 감상';

INSERT INTO course_places (course_id, place_id, sort_order, stay_minutes, memo)
SELECT
    (SELECT id FROM courses WHERE title = '광화문 BTS 이벤트 동선'),
    (SELECT id FROM places WHERE name_ko = '광화문광장'),
    1, 40, '2026년 3월 메인 무대 회고';
INSERT INTO course_places (course_id, place_id, sort_order, stay_minutes, memo)
SELECT
    (SELECT id FROM courses WHERE title = '광화문 BTS 이벤트 동선'),
    (SELECT id FROM places WHERE name_ko = '경복궁 근정전'),
    2, 50, '궁 내부 이동 시간 고려';
INSERT INTO course_places (course_id, place_id, sort_order, stay_minutes, memo)
SELECT
    (SELECT id FROM courses WHERE title = '광화문 BTS 이벤트 동선'),
    (SELECT id FROM places WHERE name_ko = '통인시장'),
    3, 45, '간식 또는 도시락 체험';
INSERT INTO course_places (course_id, place_id, sort_order, stay_minutes, memo)
SELECT
    (SELECT id FROM courses WHERE title = '광화문 BTS 이벤트 동선'),
    (SELECT id FROM places WHERE name_ko = '토속촌 삼계탕'),
    4, 60, '식사 장소';
INSERT INTO course_places (course_id, place_id, sort_order, stay_minutes, memo)
SELECT
    (SELECT id FROM courses WHERE title = '광화문 BTS 이벤트 동선'),
    (SELECT id FROM places WHERE name_ko = '서울마이소울 라운지'),
    5, 25, '서울광장 인근 동선';
INSERT INTO course_places (course_id, place_id, sort_order, stay_minutes, memo)
SELECT
    (SELECT id FROM courses WHERE title = '광화문 BTS 이벤트 동선'),
    (SELECT id FROM places WHERE name_ko = '서울 스테이 라운지'),
    6, 30, '실내 휴게 포인트';
INSERT INTO course_places (course_id, place_id, sort_order, stay_minutes, memo)
SELECT
    (SELECT id FROM courses WHERE title = '광화문 BTS 이벤트 동선'),
    (SELECT id FROM places WHERE name_ko = '해치 아트벌룬'),
    7, 20, '청계광장 포토 스팟';

INSERT INTO course_places (course_id, place_id, sort_order, stay_minutes, memo)
SELECT
    (SELECT id FROM courses WHERE title = '고양 BTS 콘서트 대비 스팟'),
    (SELECT id FROM places WHERE name_ko = '고양관광정보센터'),
    1, 30, 'RM 벽화 인증샷';
INSERT INTO course_places (course_id, place_id, sort_order, stay_minutes, memo)
SELECT
    (SELECT id FROM courses WHERE title = '고양 BTS 콘서트 대비 스팟'),
    (SELECT id FROM places WHERE name_ko = '일산호수공원'),
    2, 45, '공연 전 산책 동선';
INSERT INTO course_places (course_id, place_id, sort_order, stay_minutes, memo)
SELECT
    (SELECT id FROM courses WHERE title = '고양 BTS 콘서트 대비 스팟'),
    (SELECT id FROM places WHERE name_ko = '라페스타 & 웨스턴돔'),
    3, 50, '카페 및 쇼핑 동선';
INSERT INTO course_places (course_id, place_id, sort_order, stay_minutes, memo)
SELECT
    (SELECT id FROM courses WHERE title = '고양 BTS 콘서트 대비 스팟'),
    (SELECT id FROM places WHERE name_ko = '후곡 학원촌'),
    4, 25, 'RM 성장 배경 회고';
INSERT INTO course_places (course_id, place_id, sort_order, stay_minutes, memo)
SELECT
    (SELECT id FROM courses WHERE title = '고양 BTS 콘서트 대비 스팟'),
    (SELECT id FROM places WHERE name_ko = '대화동 먹자골목'),
    5, 60, '식사 동선';
INSERT INTO course_places (course_id, place_id, sort_order, stay_minutes, memo)
SELECT
    (SELECT id FROM courses WHERE title = '고양 BTS 콘서트 대비 스팟'),
    (SELECT id FROM places WHERE name_ko = '킨텍스'),
    6, 35, '팬 이벤트 및 전시 확인';
INSERT INTO course_places (course_id, place_id, sort_order, stay_minutes, memo)
SELECT
    (SELECT id FROM courses WHERE title = '고양 BTS 콘서트 대비 스팟'),
    (SELECT id FROM places WHERE name_ko = '일산서구청 주차타워'),
    7, 20, '주차 및 포토 포인트';
INSERT INTO course_places (course_id, place_id, sort_order, stay_minutes, memo)
SELECT
    (SELECT id FROM courses WHERE title = '고양 BTS 콘서트 대비 스팟'),
    (SELECT id FROM places WHERE name_ko = '고양종합운동장'),
    8, 120, '공연장 메인 도착 지점';
