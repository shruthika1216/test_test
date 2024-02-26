{%- set payment_methods = ['bank_transfer', 'credit_card', 'coupon', 'gift_card'] -%}

{{ config(materialized='table')}}

with customers as (

    select * from {{ ref('dim_customers')}}

),

payment as (
      select * from {{ ref('stg_payments')}}
),



/*
customer_orders as (

    select
        customer_id,
        min(order_date) as first_order_date,
        max(order_date) as most_recent_order_date,
        count(order_id) as number_of_orders

    from orders

    group by 1

),

*/
order_payment as (

    select
        
        customers.order_id,
        min(customers.first_order_date) as first_order_date,
        max(customers.most_recent_order_date) as most_recent_order_date,
        count(customers.number_of_orders) as number_of_orders,
        
        
        {% for payment_method in payment_methods -%}

<<<<<<< HEAD
         sum(case when payment_method = '{{ payment_method }}' then amount_usd else 0 end) as {{ payment_method }}_amount        
=======
         sum(case when payment_method = '{{ payment_method }}' then AMOUNT_USD else 0 end) as {{ payment_method }}_amount        
>>>>>>> a309157fb0a5941c60996473f7db470bba333c44
       
       {%- if not loop.last -%}
         ,
       {% endif -%}

       {%- endfor %}
    
      
    from payment join customers on customers.order_id = payment.order_id
    group by 1
)
select * from order_payment
