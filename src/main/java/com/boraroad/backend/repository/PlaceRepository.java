package com.boraroad.backend.repository;

import com.boraroad.backend.entity.Place;
import com.boraroad.backend.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface PlaceRepository extends JpaRepository<Place, Long> {

    // 특정 카테고리의 성지만 조회 (예: 뮤직비디오 촬영지만 보기)
    List<Place> findByCategoryOrderByIdAsc(Category category);

    List<Place> findAllByOrderByIdAsc();

    @Query(value = """
            SELECT *
            FROM places
            WHERE ST_Distance_Sphere(
                location,
                ST_GeomFromText(CONCAT('POINT(', :lng, ' ', :lat, ')'))
            ) <= :radiusMeters
            ORDER BY ST_Distance_Sphere(
                location,
                ST_GeomFromText(CONCAT('POINT(', :lng, ' ', :lat, ')'))
            ) ASC, id ASC
            """, nativeQuery = true)
    List<Place> findNearbyPlaces(
            @Param("lat") double lat,
            @Param("lng") double lng,
            @Param("radiusMeters") double radiusMeters
    );

    @Query(value = """
            SELECT *
            FROM places
            WHERE category = :category
              AND ST_Distance_Sphere(
                  location,
                  ST_GeomFromText(CONCAT('POINT(', :lng, ' ', :lat, ')'))
              ) <= :radiusMeters
            ORDER BY ST_Distance_Sphere(
                location,
                ST_GeomFromText(CONCAT('POINT(', :lng, ' ', :lat, ')'))
            ) ASC, id ASC
            """, nativeQuery = true)
    List<Place> findNearbyPlacesByCategory(
            @Param("category") String category,
            @Param("lat") double lat,
            @Param("lng") double lng,
            @Param("radiusMeters") double radiusMeters
    );
}
