{{ config(materialized='table') }}

with customer as (

    select * from {{ref("stg__Customer")}}

),

branch as (

    select * from {{ref("stg__Branch")}}

), 

final as (

    select customer.customer_id
    , customer.cust_nbr
    , customer.cust_nm
    , branch.branch_id
    , branch.brnch_nbr
    , branch.brnch_nm

    from customer

    inner join branch
        on customer.branch_id = branch.branch_id

)

select * from final