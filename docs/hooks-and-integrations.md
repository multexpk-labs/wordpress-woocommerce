# Hooks & Integrations

WordPress and WooCommerce provide hooks for extending behavior.

## Integration Pattern

`Event → Validate → Normalize → Business Logic → Persist → External Action → Log`

## Webhooks

For inbound webhooks:

1. Authenticate/signature-check the request when supported.
2. Validate required fields.
3. Check event identity/idempotency.
4. Verify the related resource.
5. Apply the state transition.
6. Record the result.
7. Return an appropriate response.

## External APIs

Use explicit timeouts, bounded retries, structured errors, and safe logging. Do not log authorization headers or secrets.
