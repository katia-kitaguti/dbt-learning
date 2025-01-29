select
    customer_id,
    order_id,
    COUNT(*) AS num_registers
from {{ ref('stg_orders') }}
GROUP BY 1, 2 
HAVING num_registers > 1 