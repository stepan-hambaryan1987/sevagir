# docker-project-f-b-db# My Project: Frontend + Backend + MySQL

1. Project Overview

This project includes:

- **Frontend** – React/Node app (Port: 5000)  
- **Backend** – Node/Python API (Port: 3000)  
- **DB** – MySQL (Docker container)

All services are Dockerized and managed via `docker-compose`.  
The backend connects to the DB and manages users.

---

2. Prerequisites

- Docker installed ([Install Docker](https://docs.docker.com/get-docker/))  
- Docker Compose installed ([Install Compose](https://docs.docker.com/compose/install/))  
- Git installed  

Optional: MySQL client if you want to exec into the DB directly.

---

3. Clone the repository

```bash
git clone <your-repo-url>
cd <project-folder>

4. Build and Run Containers

    docker-compose up --build -d

5. Check running containers

    docker ps

You should see 3 containers:

frontend (Port: 5000)

backend (Port: 3000)

db (MySQL) (port:3306)