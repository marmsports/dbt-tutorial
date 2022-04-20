WITH source as (

  select * FROM {{ source('dw', 'Branch') }}

)
SELECT 
      branchkey as branch_id,
      brnch_nbr,
      brnch_nm
 FROM source