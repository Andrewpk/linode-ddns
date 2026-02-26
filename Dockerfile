FROM ghcr.io/astral-sh/uv:python3.11-bookworm-slim AS builder
WORKDIR /app
COPY pyproject.toml uv.lock ./
RUN uv sync --no-dev --no-editable

FROM gcr.io/distroless/python3-debian12
WORKDIR /app

COPY --from=builder /app/.venv/bin /app
COPY --from=builder /app/.venv/lib/python3.11/site-packages /app/site-packages
ENV PYTHONPATH=/app/site-packages

ENTRYPOINT ["python", "-m", "linode_dynamic_dns"]
