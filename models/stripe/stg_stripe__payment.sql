select
	id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    --amount is stored in cents, convert it to dollar
    amount / 100 as amount

from {{ source('stripe', 'payment') }}