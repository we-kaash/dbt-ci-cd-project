select
    customer_id,
    sum(amount) as total_spent
from {{ ref('stg_orders') }}
group by customer_id