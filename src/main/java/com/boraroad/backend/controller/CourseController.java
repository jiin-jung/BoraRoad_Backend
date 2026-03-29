package com.boraroad.backend.controller;

import com.boraroad.backend.dto.CourseDetailResponseDto;
import com.boraroad.backend.dto.CourseSummaryResponseDto;
import com.boraroad.backend.service.CourseService;
import jakarta.validation.constraints.DecimalMax;
import jakarta.validation.constraints.DecimalMin;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/v1/courses")
@RequiredArgsConstructor
@Validated
public class CourseController {

    private final CourseService courseService;

    @GetMapping
    public ResponseEntity<List<CourseSummaryResponseDto>> getCourses() {
        return ResponseEntity.ok(courseService.getCourses());
    }

    @GetMapping("/recommended")
    public ResponseEntity<List<CourseSummaryResponseDto>> getRecommendedCourses(
            @RequestParam(required = false) @DecimalMin(value = "-90.0") @DecimalMax(value = "90.0") Double lat,
            @RequestParam(required = false) @DecimalMin(value = "-180.0") @DecimalMax(value = "180.0") Double lng,
            @RequestParam(required = false) @DecimalMin(value = "0.1") @DecimalMax(value = "100.0") Double radiusKm
    ) {
        return ResponseEntity.ok(courseService.getRecommendedCourses(lat, lng, radiusKm));
    }

    @GetMapping("/{id}")
    public ResponseEntity<CourseDetailResponseDto> getCourseById(@PathVariable Long id) {
        return ResponseEntity.ok(courseService.getCourseById(id));
    }
}
