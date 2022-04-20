WITH source as (

  select * FROM {{ source('dw', 'Customer') }}

)
SELECT 
    customerkey as customer_id,
    cust_nbr,
    cust_nm,
    assignedbranchkey as branch_id
 FROM source