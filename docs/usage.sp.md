# 📖 Guía de Uso de Dockervisor

Esta guía explica cómo configurar, usar y extender Dockervisor, tu stack de observabilidad listo para usar.

---

## 🚀 Primeros Pasos

1. Clona el repositorio:

```bash
git clone https://github.com/celiaricogz/dockervisor.git
cd dockervisor
```

2. Inicia el stack:

```bash
docker-compose up -d
```

3. Accede a los servicios:
- **Grafana**: [http://localhost:3000](http://localhost:3000) (usuario: `admin`, contraseña: `admin`)
- **Prometheus**: [http://localhost:9090](http://localhost:9090)
- **Loki API**: [http://localhost:3100](http://localhost:3100)

4. Abre Grafana y explora el **Panel de Muestra** precargado.

---

## 🛠 Servicio de Demostración

Dockervisor incluye un contenedor de demostración (`examples/demo-service`) que:
- Genera **métricas Prometheus** aleatorias (`demo_requests_total`).
- Produce **logs** continuos visibles en Grafana a través de Loki.

Esto asegura que el stack muestre datos sin requerir tus propias aplicaciones.

---

## 📈 Extender el Stack

### Agregar Servicios
1. Añade un nuevo servicio en `docker-compose.yml`.
2. Configura Prometheus para recolectarlo en `prometheus/prometheus.yml`.

### Agregar Paneles
1. Exporta o crea un panel en Grafana.
2. Guárdalo como JSON en `grafana/dashboards/`.
3. Dockervisor lo cargará automáticamente al reiniciar.

### Personalizar Grafana
- Edita `grafana/provisioning/` para ajustar fuentes de datos o la provisión de paneles.

---

## 🧰 Requisitos

- Docker y Docker Compose instalados.
- Al menos 2GB de RAM libre (Grafana y Loki pueden ser exigentes en máquinas pequeñas).
- Conexión a internet para descargar imágenes.

---

## 📜 Notas

- Credenciales por defecto de Grafana: `admin` / `admin` (cámbialas para producción).
- Este stack **no está pensado para producción** por defecto — la seguridad depende de ti.
- El almacenamiento de Loki usa el sistema de archivos local por defecto.

Para configuraciones avanzadas (alertas, almacenamiento a largo plazo o ajustes para producción), haz un fork y personaliza Dockervisor.