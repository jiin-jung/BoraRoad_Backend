package com.boraroad.backend.dto;

import com.boraroad.backend.entity.Course;
import com.boraroad.backend.entity.EventType;
import com.boraroad.backend.entity.ThemeType;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;

public record CourseDetailResponseDto(
        Long id,
        String title,
        String summary,
        String description,
        String coverImageUrl,
        Integer estimatedDurationMin,
        BigDecimal distanceKm,
        String difficulty,
        boolean recommended,
        boolean isEvent,
        ThemeType themeType,
        EventType eventType,
        LocalDate eventStartDate,
        LocalDate eventEndDate,
        List<CoursePlaceResponseDto> places
) {
    public static CourseDetailResponseDto from(Course course) {
        return new CourseDetailResponseDto(
                course.getId(),
                course.getTitle(),
                course.getSummary(),
                course.getDescription(),
                course.getCoverImageUrl(),
                course.getEstimatedDurationMin(),
                course.getDistanceKm(),
                course.getDifficulty(),
                course.isRecommended(),
                course.isEvent(),
                course.getThemeType(),
                course.getEventType(),
                course.getEventStartDate(),
                course.getEventEndDate(),
                course.getCoursePlaces().stream()
                        .map(CoursePlaceResponseDto::from)
                        .toList()
        );
    }
}
