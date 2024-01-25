select
  order_id
	-- sum(amount_usd) as total_amount
from {{ ref('stg_payments') }}
group by 1
having not(sum(amount_usd)  >= 0)