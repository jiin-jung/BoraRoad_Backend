package com.boraroad.backend.dto;

import com.boraroad.backend.entity.Course;
import com.boraroad.backend.entity.EventType;
import com.boraroad.backend.entity.ThemeType;

import java.math.BigDecimal;
import java.time.LocalDate;

public record CourseSummaryResponseDto(
        Long id,
        String title,
        String summary,
        String coverImageUrl,
        Integer estimatedDurationMin,
        BigDecimal distanceKm,
        String difficulty,
        boolean recommended,
        boolean isEvent,
        ThemeType themeType,
        EventType eventType,
        LocalDate eventStartDate,
        LocalDate eventEndDate
) {
    public static CourseSummaryResponseDto from(Course course) {
        return new CourseSummaryResponseDto(
                course.getId(),
                course.getTitle(),
                course.getSummary(),
                course.getCoverImageUrl(),
                course.getEstimatedDurationMin(),
                course.getDistanceKm(),
                course.getDifficulty(),
                course.isRecommended(),
                course.isEvent(),
                course.getThemeType(),
                course.getEventType(),
                course.getEventStartDate(),
                course.getEventEndDate()
        );
    }
}
