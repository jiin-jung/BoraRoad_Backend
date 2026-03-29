package com.boraroad.backend.service;

import com.boraroad.backend.dto.PlaceResponseDto;
import com.boraroad.backend.entity.Category;
import com.boraroad.backend.repository.PlaceRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class PlaceService {

    private final PlaceRepository placeRepository;

    /**
     * 모든 성지 정보를 조회합니다.
     */
    public List<PlaceResponseDto> getPlaces(Category category) {
        return (category == null
                ? placeRepository.findAllByOrderByIdAsc()
                : placeRepository.findByCategoryOrderByIdAsc(category))
                .stream()
                .map(PlaceResponseDto::from)
                .collect(Collectors.toList());
    }

    /**
     * 사용자 위치 기준 근처 성지 정보를 조회합니다.
     */
    public List<PlaceResponseDto> getNearbyPlaces(double lat, double lng, double radiusKm, Category category) {
        double radiusMeters = radiusKm * 1000;

        return (category == null
                ? placeRepository.findNearbyPlaces(lat, lng, radiusMeters)
                : placeRepository.findNearbyPlacesByCategory(category.name(), lat, lng, radiusMeters))
                .stream()
                .map(PlaceResponseDto::from)
                .collect(Collectors.toList());
    }

    /**
     * 특정 성지의 상세 정보를 조회합니다.
     */
    public PlaceResponseDto getPlaceById(Long id) {
        return placeRepository.findById(id)
                .map(PlaceResponseDto::from)
                .orElseThrow(() -> new ResponseStatusException(
                        HttpStatus.NOT_FOUND,
                        "존재하지 않는 장소입니다. ID: " + id
                ));
    }
}
