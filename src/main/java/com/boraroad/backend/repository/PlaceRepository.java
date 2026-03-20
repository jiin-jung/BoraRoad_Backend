package com.boraroad.backend.repository;

import com.boraroad.backend.entity.Place;
import com.boraroad.backend.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import java.util.List;

public interface PlaceRepository extends JpaRepository<Place, Long> {

    // 특정 카테고리의 성지만 조회 (예: 뮤직비디오 촬영지만 보기)
    List<Place> findByCategory(Category category);

    // [참고] 나중에 추가할 수 있는 위치 기반 쿼리 예시
    // @Query(value = "SELECT * FROM places WHERE ST_Distance_Sphere(location, :userLocation) <= :distance", nativeQuery = true)
    // List<Place> findNearbyPlaces(@Param("userLocation") Point userLocation, @Param("distance") double distance);
}