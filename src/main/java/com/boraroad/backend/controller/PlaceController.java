package com.boraroad.backend.controller;

import com.boraroad.backend.dto.PlaceResponseDto;
import com.boraroad.backend.service.PlaceService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/places")
@RequiredArgsConstructor
public class PlaceController {

    private final PlaceService placeService;

    /**
     * 모든 성지 목록을 반환합니다.
     */
    @GetMapping
    public ResponseEntity<List<PlaceResponseDto>> getAllPlaces() {
        return ResponseEntity.ok(placeService.getAllPlaces());
    }

    /**
     * 특정 성지 상세 정보를 반환합니다.
     */
    @GetMapping("/{id}")
    public ResponseEntity<PlaceResponseDto> getPlaceById(@PathVariable Long id) {
        return ResponseEntity.ok(placeService.getPlaceById(id));
    }
}
