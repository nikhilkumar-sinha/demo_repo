-- Example freshness check; replace catalog/schema/table with your own objects.
SELECT
  current_timestamp() AS checked_at,
  max(event_time) AS latest_event_time,
  datediff('minute', max(event_time), current_timestamp()) AS minutes_since_last_event
FROM
  ${var.default_catalog}.default.sample_events;
