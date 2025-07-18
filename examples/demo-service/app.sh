#!/bin/bash

echo "Starting demo service..."
while true; do
  # Simulated log output
  echo "$(date) - Demo service is running..." >&1

  # Expose a simple metrics file (Prometheus text format)
  mkdir -p /var/lib/demo
  cat <<EOF > /var/lib/demo/metrics.prom
# HELP demo_requests_total Total number of requests
# TYPE demo_requests_total counter
demo_requests_total $(shuf -i 100-500 -n 1)
EOF

  sleep 1
done
