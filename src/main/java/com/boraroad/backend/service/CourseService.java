package com.boraroad.backend.service;

import com.boraroad.backend.dto.CourseDetailResponseDto;
import com.boraroad.backend.dto.CourseSummaryResponseDto;
import com.boraroad.backend.entity.CourseStatus;
import com.boraroad.backend.repository.CourseRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class CourseService {

    private final CourseRepository courseRepository;

    public List<CourseSummaryResponseDto> getCourses() {
        return courseRepository.findByStatusOrderByIdAsc(CourseStatus.PUBLISHED).stream()
                .map(CourseSummaryResponseDto::from)
                .toList();
    }

    public List<CourseSummaryResponseDto> getRecommendedCourses(Double lat, Double lng, Double radiusKm) {
        validateNearbyRequest(lat, lng, radiusKm);

        List<CourseSummaryResponseDto> courses = (lat == null
                ? courseRepository.findByRecommendedTrueAndStatusOrderByIdAsc(CourseStatus.PUBLISHED).stream()
                : courseRepository.findRecommendedNearbyCourses(
                                CourseStatus.PUBLISHED.name(),
                                lat,
                                lng,
                                radiusKm * 1000
                        ).stream())
                .map(CourseSummaryResponseDto::from)
                .toList();

        return courses;
    }

    public CourseDetailResponseDto getCourseById(Long id) {
        return courseRepository.findWithCoursePlacesByIdAndStatus(id, CourseStatus.PUBLISHED)
                .map(CourseDetailResponseDto::from)
                .orElseThrow(() -> new ResponseStatusException(
                        HttpStatus.NOT_FOUND,
                        "존재하지 않는 코스입니다. ID: " + id
                ));
    }

    private void validateNearbyRequest(Double lat, Double lng, Double radiusKm) {
        boolean hasLat = lat != null;
        boolean hasLng = lng != null;
        boolean hasRadius = radiusKm != null;

        if (!(hasLat == hasLng && hasLng == hasRadius)) {
            throw new ResponseStatusException(
                    HttpStatus.BAD_REQUEST,
                    "lat, lng, radiusKm는 모두 함께 보내야 합니다."
            );
        }
    }
}
