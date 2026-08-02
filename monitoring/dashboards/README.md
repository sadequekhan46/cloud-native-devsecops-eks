# Grafana Dashboards
This directory stores exported Grafana dashboards.
At the moment, no custom dashboards have been added because Grafana has not yet been configured.
After Grafana is installed and customized, export dashboards as JSON and save them here.
## Export a Dashboard
1. Open Grafana.
2. Open the dashboard.
3. Click **Share**.
4. Select **Export**.
5. Save the dashboard as a JSON file.
6. Place the exported file in this directory.

Expected Structure

```
dashboards/
├── kubernetes-cluster.json
├── node-exporter.json
└── application-dashboard.json
```

These exported dashboards allow dashboards to be version-controlled alongside the application source code.