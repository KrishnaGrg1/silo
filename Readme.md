# Silo
This project provides the docker compose file to self-host the storage system.

## Services

| Service | Image | Ports | Description |
|---------|-------|-------|-------------|
| silo | docker.io/pgsty/silo:RELEASE.2026-10-26T00-00-00Z | 9000, 9001 | S3-compatible object storage (API on 9000, Console on 9001) |

## Run

```bash
docker compose up -d --build
```

## Environment

| Variable | Default | Description |
|----------|---------|-------------|
| MINIO_ROOT_USER | silo-admin | Root user for the storage system |
| MINIO_ROOT_PASSWORD | replace-with-a-strong-secret | Root password (change before production use) |

## Ports

| Container port | Host port | Description |
|----------------|-----------|-------------|
| 9000 | 9000 | S3 API |
| 9001 | 9001 | Management console |

## Volumes

| Volume | Mount path | Description |
|--------|------------|-------------|
| silo-volume | /data | Persistent storage for data |

## Network

| Network | Driver |
|---------|--------|
| silo-network | bridge |

## Access

- S3 API: http://localhost:9000
- Console: http://localhost:9001
