# Monitoring
This project uses the **kube-prometheus-stack Helm Chart** to deploy a complete monitoring solution on Amazon EKS.

## Components
- Prometheus
- Grafana
- Alertmanager
- Node Exporter
- kube-state-metrics
- Prometheus Operator

## Installation
### Add Helm Repository
```bash
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
```

### Create Namespace
```bash
kubectl create namespace monitoring
```

### Install Monitoring Stack
```bash
helm install monitoring prometheus-community/kube-prometheus-stack \
--namespace monitoring \
--values monitoring/values.yaml
```

## Verify Installation
```bash
kubectl get pods -n monitoring
```

## Access Grafana
```bash
kubectl port-forward svc/monitoring-grafana 3000:80 -n monitoring
```
Open:
```
http://localhost:3000
```
## Future Improvements
- Import Kubernetes dashboards
- Create custom application dashboards
- Configure alerts
- Export dashboards as JSON for version control