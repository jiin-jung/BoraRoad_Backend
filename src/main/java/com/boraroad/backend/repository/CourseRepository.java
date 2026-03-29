package com.boraroad.backend.repository;

import com.boraroad.backend.entity.Course;
import com.boraroad.backend.entity.CourseStatus;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface CourseRepository extends JpaRepository<Course, Long> {

    List<Course> findByStatusOrderByIdAsc(CourseStatus status);

    List<Course> findByRecommendedTrueAndStatusOrderByIdAsc(CourseStatus status);

    @Query(value = """
            SELECT c.*
            FROM courses c
            JOIN course_places cp ON cp.course_id = c.id
            JOIN places p ON p.id = cp.place_id
            WHERE c.recommended = true
              AND c.status = :status
              AND cp.sort_order = (
                  SELECT MIN(cp2.sort_order)
                  FROM course_places cp2
                  WHERE cp2.course_id = c.id
              )
              AND ST_Distance_Sphere(
                  p.location,
                  ST_GeomFromText(CONCAT('POINT(', :lng, ' ', :lat, ')'))
              ) <= :radiusMeters
            ORDER BY ST_Distance_Sphere(
                p.location,
                ST_GeomFromText(CONCAT('POINT(', :lng, ' ', :lat, ')'))
            ) ASC, c.id ASC
            """, nativeQuery = true)
    List<Course> findRecommendedNearbyCourses(
            @Param("status") String status,
            @Param("lat") double lat,
            @Param("lng") double lng,
            @Param("radiusMeters") double radiusMeters
    );

    @EntityGraph(attributePaths = {"coursePlaces", "coursePlaces.place"})
    Optional<Course> findWithCoursePlacesByIdAndStatus(Long id, CourseStatus status);
}
