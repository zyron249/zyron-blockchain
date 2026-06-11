#!/bin/bash
# Hermes Prometheus Monitoring Setup for ZYRON

# Prometheus indir ve kur
wget https://github.com/prometheus/prometheus/releases/download/v2.52.0/prometheus-2.52.0.linux-amd64.tar.gz

tar xvf prometheus-2.52.0.linux-amd64.tar.gz
cd prometheus-2.52.0.linux-amd64

cat > prometheus.yml << EOF
global:
  scrape_interval: 15s

scrape_configs:
  - job_name: 'hermes'
    static_configs:
      - targets: ['localhost:3001']
EOF

# Hermes config'te telemetry etkinleştir

# Çalıştır
nohup ./prometheus --config.file=prometheus.yml & 
echo "Prometheus running on http://localhost:9090"