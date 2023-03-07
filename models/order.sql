select
  *

from {{ source('jaffle_shop', 'stg_orders') }}

left join {{ source('jaffle_shop', 'customers') }} using (customer_id)
