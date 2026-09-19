# WooCommerce Data & Orders

WooCommerce data should be treated as application state with explicit lifecycle rules.

## Important Concepts

- Products and variations
- Customers
- Orders and order status
- Order items
- Coupons and taxes
- Shipping
- Payment state
- Refunds
- Scheduled/background actions

## Data Access

Prefer supported WooCommerce/WordPress APIs and data-access abstractions when available. Direct SQL should be reserved for cases where the schema and compatibility implications are understood.

## Order Lifecycle

A useful conceptual flow is:

`Cart → Checkout → Payment Attempt → Order State → Fulfillment → Refund/Completion`

Payment success and order state should not be assumed equivalent without verifying the provider event and order state.
