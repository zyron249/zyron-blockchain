# Hermes Prometheus Monitoring Kurulumu

## 1. Hermes Telemetry'yi Etkinleştir

Hermes config.toml dosyasında telemetry bölümünü ekleyin:

```toml
[telemetry]
enabled = true
host = "127.0.0.1"
port = 3001
```

## 2. Prometheus Kurulumu

Prometheus config (prometheus.yml):

```yaml
global:
  scrape_interval: 15s

scrape_configs:
  - job_name: 'hermes'
    static_configs:
      - targets: ['localhost:3001']
```

## 3. Grafana ile Görselleştirme

Grafana'da Prometheus datasource ekleyin ve dashboard oluşturun.

## 4. ZYRON İçin Script

scripts/setup_prometheus.sh ile otomatik kurulum.

Metrics endpoint: http://localhost:3001/metrics