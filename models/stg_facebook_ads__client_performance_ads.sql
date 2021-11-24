
with base as (

    select *
    from {{ ref('stg_facebook_ads__client_performance_ads_tmp') }}

),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_facebook_ads__client_performance_ads_tmp')),
                staging_columns=get_client_performance_ads_table_columns()
            )
        }}

    from base
),

final as (

    select
        _fivetran_id,
        ad_id,
        date as date_day,
        _fivetran_synced,
        account_id,
        account_name,
        ad_name,
        adset_id,
        adset_name,
        campaign_id,
        campaign_name,
        clicks,
        impression_device,
        impressions,
        inline_link_clicks,
        platform_position,
        publisher_platform,
        spend,
        unique_clicks
    from fields
)

select * from final
