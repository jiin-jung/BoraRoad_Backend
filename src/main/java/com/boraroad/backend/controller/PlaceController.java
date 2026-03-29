package com.boraroad.backend.controller;

import com.boraroad.backend.dto.PlaceResponseDto;
import com.boraroad.backend.entity.Category;
import com.boraroad.backend.service.PlaceService;
import jakarta.validation.constraints.DecimalMax;
import jakarta.validation.constraints.DecimalMin;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/places")
@RequiredArgsConstructor
@Validated
public class PlaceController {

    private final PlaceService placeService;

    /**
     * 모든 성지 목록을 반환합니다.
     */
    @GetMapping
    public ResponseEntity<List<PlaceResponseDto>> getPlaces(
            @RequestParam(required = false) Category category
    ) {
        return ResponseEntity.ok(placeService.getPlaces(category));
    }

    /**
     * 사용자 현재 위치 기준 근처 성지 목록을 반환합니다.
     */
    @GetMapping("/nearby")
    public ResponseEntity<List<PlaceResponseDto>> getNearbyPlaces(
            @RequestParam @DecimalMin(value = "-90.0") @DecimalMax(value = "90.0") double lat,
            @RequestParam @DecimalMin(value = "-180.0") @DecimalMax(value = "180.0") double lng,
            @RequestParam @DecimalMin(value = "0.1") @DecimalMax(value = "100.0") double radiusKm,
            @RequestParam(required = false) Category category
    ) {
        return ResponseEntity.ok(placeService.getNearbyPlaces(lat, lng, radiusKm, category));
    }

    /**
     * 특정 성지 상세 정보를 반환합니다.
     */
    @GetMapping("/{id}")
    public ResponseEntity<PlaceResponseDto> getPlaceById(@PathVariable Long id) {
        return ResponseEntity.ok(placeService.getPlaceById(id));
    }
}
