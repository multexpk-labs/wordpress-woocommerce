# WordPress & WooCommerce Architecture

A practical reference for building, extending, debugging, and operating WordPress/WooCommerce systems.

## Layers

`Browser → Web Server → WordPress → Plugins/Theme → WooCommerce → Database`

Supporting services can include object caching, page caching, CDN/edge services, cron/queues, search, payment providers, email, and external APIs.

## Engineering Boundaries

Keep custom business logic in a maintainable plugin or application layer rather than modifying WordPress or WooCommerce core.

Prefer:

- Hooks and documented extension points
- Small service classes
- Explicit configuration
- Database migrations for custom tables
- Structured logging
- Versioned deployments

## Production Principle

Separate custom code from third-party code so updates can be applied without overwriting application changes.
