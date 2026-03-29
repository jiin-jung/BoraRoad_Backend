package com.boraroad.backend.dto;

public record ApiErrorResponse(
        String code,
        String message,
        Object details
) {
}
