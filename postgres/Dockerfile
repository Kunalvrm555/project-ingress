# Use the Alpine-based PostgreSQL image
FROM postgres:13-alpine

# Set environment variables
ENV POSTGRES_DB=ingress
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres

# Copy initialization script(s)
COPY init.sql /docker-entrypoint-initdb.d/