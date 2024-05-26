# GitLab Runner with Docker-in-Docker (DinD) Setup

This repository contains a `docker-compose` configuration for setting up a GitLab Runner with Docker-in-Docker (DinD). This allows for CI/CD pipelines that need to build, run, and manage Docker containers within GitLab CI.

## Prerequisites

- Docker installed on your host machine
- Docker Compose installed on your host machine
- GitLab account with access to a GitLab instance

## Getting Started

1. **Clone the repository:**

   ```sh
   git clone https://github.com/yourusername/your-repo.git
   cd your-repo
   ```

2. **Configure environment variables:**

Create a .env file in the root of the repository and populate it with the following variables:

    ```sh
    CI_SERVER_URL=https://gitlab.example.com/  # Replace with your GitLab instance URL
    REGISTRATION_TOKEN=your_registration_token  # Replace with your GitLab Runner registration token
    RUNNER_NAME=your_runner_name  # Replace with your desired runner name
    ```

3. **Start the services:**

   ```sh
   docker-compose up -d
   ```

## Services

- dind: Docker-in-Docker service to provide Docker daemon capabilities inside a container.
- runner: GitLab Runner service configured to use the DinD service for Docker operations.
- register-runner: One-time service to register the GitLab Runner with the GitLab instance.

## Usage

After starting the services with docker-compose up -d, the GitLab Runner will be registered and ready to pick up jobs from your GitLab CI pipelines. Ensure your GitLab CI/CD configuration (.gitlab-ci.yml) is set up to use the runner for executing jobs.

## Stopping the Services

To stop the services, run:

    ```sh
    docker-compose down
    ```

This will stop and remove all the containers defined in the docker-compose.yml file.
