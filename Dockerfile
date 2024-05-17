# Use the GitLab Runner base image
FROM gitlab/gitlab-runner:latest

# Install additional dependencies
RUN apt-get update && apt-get install -y \
    docker-compose \
    && rm -rf /var/lib/apt/lists/*

# Optionally, set up an entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]