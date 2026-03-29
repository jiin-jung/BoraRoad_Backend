package com.boraroad.backend.dto;

import com.boraroad.backend.entity.CoursePlace;

public record CoursePlaceResponseDto(
        Long id,
        Integer sortOrder,
        Integer stayMinutes,
        String memo,
        PlaceResponseDto place
) {
    public static CoursePlaceResponseDto from(CoursePlace coursePlace) {
        return new CoursePlaceResponseDto(
                coursePlace.getId(),
                coursePlace.getSortOrder(),
                coursePlace.getStayMinutes(),
                coursePlace.getMemo(),
                PlaceResponseDto.from(coursePlace.getPlace())
        );
    }
}
