# prometheus.by.vincent.mahn.ke

Hosts the container serving [prometheus.by.vincent.mahn.ke](https://prometheus.by.vincent.mahn.ke).

## Container configuration

The shared deployment workflow builds `docker-bake.hcl` and publishes
`ghcr.io/mahn-ke/prometheus-by-vincent/prometheus:latest` before running Compose.
The image contains `service/prometheus.yml`, without Terraform files or secrets.
Metrics data stays in its named volume. The Docker socket and cAdvisor's host
mounts are intentionally retained for container discovery and host monitoring.

Deploy once to recreate Prometheus without its configuration bind mount.
To change configuration, rebuild/redeploy the image instead of editing host files.
For local builds, run `docker buildx bake --file docker-bake.hcl --load`.