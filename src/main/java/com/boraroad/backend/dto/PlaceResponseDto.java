package com.boraroad.backend.dto;

import com.boraroad.backend.entity.Category;
import com.boraroad.backend.entity.Place;
import org.locationtech.jts.geom.Point;

public record PlaceResponseDto(
        Long id,
        String nameKo,
        String nameEn,
        String descriptionKo,
        String descriptionEn,
        double lat,
        double lng,
        Category category,
        String imageUrl
) {
    public static PlaceResponseDto from(Place place) {
        Point location = place.getLocation();
        return new PlaceResponseDto(
                place.getId(),
                place.getNameKo(),
                place.getNameEn(),
                place.getDescriptionKo(),
                place.getDescriptionEn(),
                location != null ? location.getY() : 0.0, // Latitude (Y)
                location != null ? location.getX() : 0.0, // Longitude (X)
                place.getCategory(),
                place.getImageUrl()
        );
    }
}
