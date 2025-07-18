# 📖 Dockervisor Usage Guide

This guide explains how to set up, use, and extend Dockervisor, your ready-to-use observability stack.

---

## 🚀 Getting Started

1. Clone the repository:

```bash
git clone https://github.com/celiaricogz/dockervisor.git
cd dockervisor
```

2. Launch the stack:

```bash
docker-compose up -d
```

3. Access the services:
- **Grafana**: [http://localhost:3000](http://localhost:3000) (user: `admin`, pass: `admin`)
- **Prometheus**: [http://localhost:9090](http://localhost:9090)
- **Loki API**: [http://localhost:3100](http://localhost:3100)

4. Open Grafana and explore the preloaded **Sample Dashboard**.

---

## 🛠 Demo Service

Dockervisor includes a demo container (`examples/demo-service`) that:
- Generates random **Prometheus metrics** (`demo_requests_total`).
- Produces continuous **logs** viewable in Grafana via Loki.

This ensures the stack shows data without requiring your own apps.

---

## 📈 Extending the Stack

### Adding Services
1. Add a new service in `docker-compose.yml`.
2. Configure Prometheus to scrape it in `prometheus/prometheus.yml`.

### Adding Dashboards
1. Export or create a dashboard in Grafana.
2. Save it as JSON in `grafana/dashboards/`.
3. Dockervisor will auto-load it on restart.

### Customizing Grafana
- Edit `grafana/provisioning/` to adjust datasources or dashboard provisioning.

---

## 🧰 Requirements

- Docker and Docker Compose installed.
- At least 2GB RAM free (Grafana and Loki can be heavy on smaller machines).
- Internet connection to pull images.

---

## 📜 Notes

- Default Grafana credentials: `admin` / `admin` (change for production).
- This stack is **not intended for production** out of the box — secure configs are up to you.
- Loki storage defaults to local filesystem.

For more advanced setups (alerts, long-term storage, or production tuning), fork and customize Dockervisor.