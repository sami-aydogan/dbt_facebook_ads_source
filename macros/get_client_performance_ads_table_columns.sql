{% macro get_client_performance_ads_table_columns() %}

{% set columns = [
    {"name": "_fivetran_id", "datatype": dbt_utils.type_string()},
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "ad_id", "datatype": dbt_utils.type_string()},
    {"name": "date", "datatype": "date"},
    {"name": "account_id", "datatype": dbt_utils.type_int()},
    {"name": "account_name", "datatype": dbt_utils.type_int()},
    {"name": "ad_name", "datatype": dbt_utils.type_string()},
    {"name": "adset_id", "datatype": dbt_utils.type_int()},
    {"name": "adset_name", "datatype": dbt_utils.type_string()},
    {"name": "campaign_id", "datatype": dbt_utils.type_string()},
    {"name": "campaign_name", "datatype": dbt_utils.type_string()},
    {"name": "clicks", "datatype": dbt_utils.type_int()},
    {"name": "impression_device", "datatype": dbt_utils.type_string()},
    {"name": "impressions", "datatype": dbt_utils.type_int()},
    {"name": "cpc", "datatype": dbt_utils.type_float()},
    {"name": "cpm", "datatype": dbt_utils.type_float()},
    {"name": "ctr", "datatype": dbt_utils.type_float()},
    {"name": "inline_link_clicks", "datatype": dbt_utils.type_int()},
    {"name": "platform_position", "datatype": dbt_utils.type_string()},
    {"name": "publisher_platform", "datatype": dbt_utils.type_string()},
    {"name": "spend", "datatype": dbt_utils.type_float()},
    {"name": "unique_clicks", "datatype": dbt_utils.type_int()}
] %}

{{ return(columns) }}

{% endmacro %}