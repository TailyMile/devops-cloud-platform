# Docker

This directory contains container runtime assets for the platform.

## Components

- `app/` — Nginx container source
- `compose.yml` — local runtime definition
- `.env.example` — runtime configuration example

## Image Source

Images are built in GitHub Actions and published to GHCR.

## Tag Strategy

- `latest` — development / latest build
- `<commit_sha>` — immutable build for controlled deployment