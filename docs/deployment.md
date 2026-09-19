# Deployment

## Recommended Flow

`Backup → Test/Staging → Deploy → Migrate → Verify → Monitor → Rollback if required`

## Before Deployment

- Confirm a tested backup.
- Review PHP and WordPress compatibility.
- Review plugin/theme dependencies.
- Test database migrations.
- Record configuration changes.
- Confirm rollback steps.

## After Deployment

Check:

- Homepage and key pages
- Login
- Product pages
- Cart
- Checkout
- Payment callback/webhook
- Order creation
- Email
- Scheduled actions
- Logs

Never use production customer/payment data as a public test fixture.
