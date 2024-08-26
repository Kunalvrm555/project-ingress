# Use the Alpine-based PostgreSQL image
FROM postgres:15-alpine3.20

# Set environment variables
ENV POSTGRES_DB=ingress
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres

# Copy initialization script(s)
COPY init.sql /docker-entrypoint-initdb.d/
RUN chmod a+r /docker-entrypoint-initdb.d/*