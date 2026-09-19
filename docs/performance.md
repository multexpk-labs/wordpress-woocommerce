# WordPress & WooCommerce Performance

## Measure First

Check:

- PHP execution time
- Database query count and slow queries
- Object/page cache behavior
- External API latency
- Image and asset size
- Cron/background jobs
- Memory usage
- PHP-FPM/worker saturation

## Common Workload Areas

WooCommerce stores can be affected by product/catalog size, orders, customer sessions, checkout requests, payment APIs, webhooks, scheduled actions, and plugin interactions.

## Optimization Rule

`Measure → Identify bottleneck → Change one variable → Measure again`

Avoid adding caching or plugins simply because they are popular. Verify that the change improves the actual workload.
