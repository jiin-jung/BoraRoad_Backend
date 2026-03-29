# Deployment

## Docker Compose

1. Copy `.env.example` to `.env` and set secure values.
2. Build and start services:

```bash
docker compose up --build -d
```

3. Check logs:

```bash
docker compose logs -f app
```

4. Stop services:

```bash
docker compose down
```

## Notes

- The API container listens on port `8080` inside Docker.
- MySQL is exposed on host port `3307`.
- Initial seed data is loaded from `src/main/resources/data.sql`.
