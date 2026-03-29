package com.boraroad.backend.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.locationtech.jts.geom.Point;

import java.time.LocalDate;

@Entity
@Getter
@NoArgsConstructor
@Table(name = "places")
public class Place {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String nameKo; // 한국어 이름 (데이터 관리용)
    @Column(nullable = false)
    private String nameEn; // 영어 이름 (외국인 아미 타겟)
    private String descriptionKo; // 장소 설명 (한국어)
    private String descriptionEn; // 장소 설명 (영어)

    @Column(columnDefinition = "POINT", nullable = false)
    private Point location; // 위도, 경도 좌표

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private Category category; // MV, RESTAURANT, CAFE 등

    private String imageUrl; // 대표 이미지 URL

    @Column(nullable = false)
    private boolean isEvent;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private ThemeType themeType;

    @Enumerated(EnumType.STRING)
    private EventType eventType;

    private LocalDate eventStartDate;

    private LocalDate eventEndDate;
}
