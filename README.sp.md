# Dockervisor – Stack de Observabilidad Instantánea (Grafana + Prometheus + Loki)

**Dockervisor** es un stack de observabilidad listo para usar, impulsado por **Grafana, Prometheus y Loki**, ejecutándose completamente en Docker.  
Con un solo comando, puedes lanzar paneles, métricas y recopilación de logs para cualquier servicio — sin necesidad de Kubernetes.

---

## Características

- **Configuración con un solo comando** usando `docker-compose up -d`.
- **Stack de observabilidad completo**: Grafana (paneles), Prometheus (métricas), Loki (logs).
- **Paneles preconfigurados** para obtener información rápidamente.
- **Servicio de demostración incluido** para generar métricas y logs desde el primer momento.
- **Fácilmente extensible**: añade tus propios servicios, paneles y exporters.

---

## Estructura del Proyecto

```
Dockervisor/
├── docker-compose.yml
├── grafana/
│   ├── dashboards/
│   │   └── sample-dashboard.json
│   └── provisioning/
│       ├── datasources/prometheus.yml
│       └── dashboards/dashboards.yml
├── prometheus/
│   └── prometheus.yml
├── loki/
│   └── config.yml
├── examples/
│   └── demo-service/
│       ├── Dockerfile
│       └── app.sh
├── docs/
│   ├── usage.md
│   └── architecture.png
├── README.md
└── LICENSE
```

---

## Architectura

![Arquitectura de Dockervisor](docs/architecture.png)

---

## Inicio Rápido

1. Clona el repositorio:

```bash
git clone https://github.com/celiaricogz/dockervisor.git
cd dockervisor
```

2. Lanza el stack:

```bash
docker-compose up -d
```

3. Accede a los servicios:
- **Grafana**: [http://localhost:3000](http://localhost:3000) (usuario: `admin`, contraseña: `admin`)
- **Prometheus**: [http://localhost:9090](http://localhost:9090)
- **Loki API**: [http://localhost:3100](http://localhost:3100)

4. Explora el **Panel de Muestra** en Grafana — las métricas, logs y datos de demostración ya estarán disponibles.

---

## Servicio de Demostración

El stack incluye un servicio de demostración ligero (`examples/demo-service`) que genera:
- Métricas **Prometheus** aleatorias (contador `demo_requests_total`).
- **Logs** continuos (consultables vía Loki).

Esto asegura que puedas ver datos fluyendo inmediatamente sin configurar tus propias aplicaciones.

---

## Extender Dockervisor

- **Añade más servicios**: Solo defínelos en `docker-compose.yml` y agrega configuraciones de scrape en `prometheus/prometheus.yml`.
- **Añade paneles**: Coloca archivos `.json` en `grafana/dashboards/` — se cargarán automáticamente.
- **Personaliza Grafana**: Modifica los archivos de provisioning en `grafana/provisioning/`.

---

## Licencia

Licenciado bajo la **Licencia MIT**.  
Consulta [LICENSE](LICENSE) para más detalles.

---

## Autora

**Celia Rico Gutiérrez**  
Ingeniera DevOps — Entrega dockerizada, arquitectura modular, pipelines CI/CD  

[<img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linkedin/linkedin-original.svg" alt="LinkedIn Logo" width="35" style="vertical-align:middle; margin-right:8px;"/>](https://www.linkedin.com/in/celiaricogutierrez)
[<img src="https://play-lh.googleusercontent.com/1r1DdWXDT9K7D2yBwPkVyXQFEjLL0cMrR6SxBvcNXXwpi8aZN0ZKS61CVdtvK6pmpg" alt="Malt Logo" width="35" style="vertical-align:middle; margin-right:8px;"/>](https://www.malt.es/profile/celiaricogutierrez)
[<img src="https://images.icon-icons.com/3781/PNG/512/upwork_icon_231982.png" alt="Malt Logo" width="35" style="vertical-align:middle;"/>](https://www.upwork.com/freelancers/~01898dfb872ff48b7a?mp_source=share)

---

_\~Última actualización: julio de 2025\~_
