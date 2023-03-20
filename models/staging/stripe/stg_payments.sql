select
    id as payment_id,
    order_id as order_id,
    payment_method as payment_method,
    status,

    -- amount is stored in cents, convert it to dollars
    {{ cents_to_dollars('amount') }} as amount,
    created as created_at

from {{source('jaffle_shop','payments')}}