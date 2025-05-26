
# Laravel Docker Boilerplate

A minimal, production-ready Laravel 12 boilerplate running in Docker with PostgreSQL, Redis, and Nginx.

This project is designed for fast Laravel development with modern DevOps in mind. Ideal for quickly bootstrapping new applications with a clean architecture and Dockerized environment.

---

## 🚀 Features

- **Laravel 12** – Clean install, SOLID-friendly structure
- **PHP 8.3 (FPM)** – Optimized for performance
- **PostgreSQL** – Default database setup
- **Redis** – Pre-configured for caching, sessions, queues
- **Nginx** – Production-style reverse proxy
- **Custom Entrypoint** – Handles permissions and runtime setup
- **.env.example** – With sane, safe defaults
- **Docker Compose** – Easy service orchestration

---

## 🧰 Requirements

- Docker
- Docker Compose
- Make (optional, for helper scripts)

---

## 🛠️ Getting Started

1. **Clone the repo**
   ```bash
   git clone https://github.com/SxvitoCodes/laravel-docker-boilerplate.git
   cd laravel-docker-boilerplate
   ```

2. **Copy environment file**
   ```bash
   cp .env.example .env
   ```

3. **Start containers**
   ```bash
   docker compose up -d --build
   ```

4. **Install dependencies & generate app key**
   ```bash
   docker exec -it timetrap-app bash
   composer install
   php artisan key:generate
   php artisan migrate
   ```

5. **Visit the app**
   ```
   http://localhost
   ```

---

## 🗂️ Project Structure

```
.
├── backend/             # Laravel application
├── docker/
│   └── nginx/           # Default config
│   └── php/             # Dockerfile, entrypoint, php.ini
├── .env.example         # Environment variables template
├── docker-compose.yml   # Docker services (app, db, redis, nginx)
└── README.md
```

---

## 📦 Services Overview

| Service   | URL / Port       | Notes                      |
|-----------|------------------|----------------------------|
| Laravel   | `localhost:80`   | Nginx reverse proxy        |
| PostgreSQL| `localhost:5432` | Database                   |
| Redis     | `localhost:6379` | Cache/queue/session store  |

---

## 🧪 Testing Setup

```bash
php artisan test
```

---

## 🙌 Contributions

Feel free to fork this and use it for your own Laravel projects. PRs welcome if you have general improvements in mind!

---

## 📄 License

MIT – free for personal and commercial use.
