# Troubleshooting

## Evidence-First Workflow

**Observe → Reproduce → Inspect → Isolate → Change → Verify → Document**

## Useful Checks

- WordPress/PHP error logs
- Web server logs
- WooCommerce logs
- PHP memory and execution limits
- Database slow-query information
- Scheduled Action failures
- Plugin/theme conflicts
- REST API responses
- External API status and latency

## Plugin Conflict Isolation

In a controlled environment, reproduce the issue, disable nonessential extensions systematically, identify the smallest conflicting component, then test the fix before production deployment.

Do not disable security or payment controls blindly on a live store.
