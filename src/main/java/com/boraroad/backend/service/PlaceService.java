package com.boraroad.backend.service;

import com.boraroad.backend.dto.PlaceResponseDto;
import com.boraroad.backend.repository.PlaceRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
    public List<PlaceResponseDto> getAllPlaces() {
        return placeRepository.findAll().stream()
                .map(PlaceResponseDto::from)
                .collect(Collectors.toList());
    }

    /**
     * 특정 성지의 상세 정보를 조회합니다.
     */
    public PlaceResponseDto getPlaceById(Long id) {
        return placeRepository.findById(id)
                .map(PlaceResponseDto::from)
                .orElseThrow(() -> new IllegalArgumentException("존재하지 않는 장소입니다. ID: " + id));
    }
}
