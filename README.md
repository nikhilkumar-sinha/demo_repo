# demo_repo
just to check


## Databricks bundle
- Bundle name: demo-repo
- Update `workspace.host` and `workspace.root_path` in `databricks.yml` before deployment.

### What the bundle includes (exhaustive starter components)
- Workspace config: `workspace.host` + `workspace.root_path`, with per-target overrides under `targets/`.
- Variables: `default_catalog` placeholder to wire Unity Catalog names across resources.
- Job: `resources.jobs.hello_job` runs `src/notebooks/hello.py` on a small ephemeral cluster.
- Pipeline: `resources.pipelines.ingest_pipeline` referencing `src/notebooks/ingest_pipeline.py` with a minimal cluster spec.
- SQL Warehouse: `resources.sql_warehouses.starter_wh` for SQL assets.
- Query: `resources.queries.data_freshness` using `src/sql/data_freshness.sql`.
- Dashboard: `resources.dashboards.ops_dashboard` backed by the starter warehouse and `src/sql/dashboard.sql`.
- Target: `dev` target is marked default and scopes workspace pathing.

### Files and folders
- `databricks.yml`: Bundle definition with all resources.
- `src/notebooks/hello.py`: Hello-world notebook for the job task.
- `src/notebooks/ingest_pipeline.py`: Example pipeline notebook placeholder.
- `src/sql/data_freshness.sql`: Example query checking data recency.
- `src/sql/dashboard.sql`: Example dashboard definition placeholder.

### Next steps
- Set `workspace.host`, `workspace.root_path`, and `var.default_catalog` to your environment.
- Validate and deploy: `databricks bundle validate` then `databricks bundle deploy --target dev`.

