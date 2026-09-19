# WordPress & WooCommerce Security

## Application

- Keep WordPress, WooCommerce, themes, and plugins maintained.
- Remove unused extensions.
- Use least-privilege administrator accounts.
- Protect authentication and administrative endpoints.
- Validate and sanitize untrusted input.
- Use WordPress capability checks for privileged operations.
- Use nonces where appropriate for state-changing requests.

## Secrets

Never commit:

- WordPress salts
- Database credentials
- Payment API keys
- Webhook secrets
- SMTP passwords
- Customer data
- Production configuration dumps

Use environment variables or a secret-management mechanism.

## Payments

Treat payment callbacks/webhooks as untrusted input until signature/authentication and event validity have been verified.
