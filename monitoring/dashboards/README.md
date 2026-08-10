# Grafana Dashboards

This directory contains exported Grafana dashboards used for monitoring the Kubernetes cluster and the Cloud-Native DevSecOps application.

The dashboards are exported in **JSON** format so they can be version-controlled alongside the application source code and easily imported into another Grafana instance.
---

## Purpose
The exported dashboards provide visualization for:
- Kubernetes Cluster Health
- Node CPU and Memory Utilization
- Pod Resource Usage
- Deployment Status
- Network Traffic
- Disk Usage
- Application Monitoring
- Infrastructure Monitoring
---

## Exporting Dashboards
To export a dashboard from Grafana:
1. Open Grafana.
2. Navigate to **Dashboards**.
3. Open the dashboard you want to export.
4. Click **Share** or **Dashboard Settings**.
5. Select **Export**.
6. (Optional) Enable **Export for sharing externally** if available.
7. Click **Download JSON**.
8. Save the file in this directory.
---

## Dashboard Files
The following dashboards are recommended for this project:

| Dashboard | File Name |
|-----------|-----------|
| Kubernetes / Compute Resources / Cluster | `kubernetes-cluster.json` |
| Kubernetes / Compute Resources / Namespace (Pods) | `namespace-pods.json` |
| Kubernetes / Compute Resources / Workload | `workload.json` |
| Node Exporter Full | `node-exporter-full.json` |
| Alertmanager Overview | `alertmanager.json` |
---

## Directory Structure
```text
dashboards/
├── kubernetes-cluster.json
├── namespace-pods.json
├── workload.json
├── node-exporter-full.json
└── alertmanager.json
```
---

## Importing Dashboards
To import a dashboard into Grafana:
1. Open Grafana.
2. Click **Dashboards → New → Import**.
3. Upload the desired JSON dashboard file.
4. Select the **Prometheus** data source.
5. Click **Import**.
---

## Benefits
- Dashboard configurations are stored in Git.
- Easy to restore dashboards after cluster recreation.
- Consistent monitoring across environments.
- Simplifies collaboration among team members.
- Supports Infrastructure as Code (IaC) and GitOps practices.
---

## Future Enhancements
- Add custom application dashboards.
- Create business-specific monitoring dashboards.
- Add SLO/SLA monitoring panels.
- Monitor application response times and error rates.
- Integrate Loki for centralized log visualization.
- Configure Grafana alerting and notifications.
---

## Notes
These dashboards are intended for use with the **kube-prometheus-stack** Helm chart and a **Prometheus** data source running on an Amazon EKS cluster.