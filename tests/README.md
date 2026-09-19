# WordPress & WooCommerce Testing

Public tests should use synthetic data and disposable environments.

## Useful Coverage

- Plugin loading
- Hook registration
- Capability/authorization checks
- REST endpoint validation
- WooCommerce product/order behavior
- Cart and checkout business rules
- Payment callback validation
- Webhook idempotency
- Scheduled action/job behavior
- Database migration compatibility

## Integration Tests

Where WooCommerce is required, use a controlled test environment rather than production. External payment/email APIs should be mocked or replaced with test endpoints.

## Regression Tests

Every production bug worth preserving should become a reproducible test case where practical.
