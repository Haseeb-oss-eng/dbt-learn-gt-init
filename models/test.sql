with all_values as (

    select
        status as value_field,
        count(*) as n_records

    from RAW.DBT_TUT.stg_jaffle_shop__orders
    group by status

)

select *
from all_values
where value_field not in (
    'placed','shipped','returned','completed'
)