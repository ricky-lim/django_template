FROM python:3.12-slim-bullseye

# Set environment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK=1
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV PATH=/venv/bin:$PATH

# Install uv
COPY --from=ghcr.io/astral-sh/uv:0.6.10 /uv /uvx /bin/

# Setup virtualenv
RUN uv venv --python=3.12 /venv

# Set work directory
WORKDIR /code

# # Install dependencies
COPY ./pyproject.toml .
RUN uv pip install -r pyproject.toml

# Copy project
COPY . .