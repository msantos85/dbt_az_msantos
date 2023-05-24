with
    customers as (
        select 
             {{ dbt_utils.generate_surrogate_key(['customer_id', 'company_name']) }} as sk_customer
             ,*
        from {{source('northwind','customers')}}
    )

select * 
from customers