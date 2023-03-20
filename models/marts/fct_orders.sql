with order_payments as (
    select order_id, sum(case when status = 'success' then amount end) as amount

    from {{ ref("stg_payments") }}
    group by 1
)

select
    stg_orders.order_id,
    stg_orders.customer_id,
    stg_orders.order_date,
    coalesce(order_payments.amount, 0) as amount

from {{ ref("stg_orders") }}
left join order_payments using (order_id)
