package com.boraroad.backend.entity;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OrderBy;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@NoArgsConstructor
@Table(name = "courses")
public class Course {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String title;

    private String summary;

    @Column(columnDefinition = "TEXT")
    private String description;

    private String coverImageUrl;

    @Column(nullable = false)
    private Integer estimatedDurationMin;

    @Column(nullable = false, precision = 8, scale = 2)
    private BigDecimal distanceKm;

    private String difficulty;

    @Column(nullable = false)
    private boolean recommended;

    @Column(nullable = false)
    private boolean isEvent;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private ThemeType themeType;

    @Enumerated(EnumType.STRING)
    private EventType eventType;

    private LocalDate eventStartDate;

    private LocalDate eventEndDate;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private CourseStatus status;

    @OneToMany(mappedBy = "course", cascade = CascadeType.ALL, orphanRemoval = true)
    @OrderBy("sortOrder ASC")
    private List<CoursePlace> coursePlaces = new ArrayList<>();
}
