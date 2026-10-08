{% snapshot snapshot_name %}
    {{
        config(
            target_schema='DEMO_SCHEMA',
            target_database='DEMO',
            unique_key='id',
            strategy='check',
            check_cols='status'
        )
    }}

    select * from {{ ref('DEMO') }}
 {% endsnapshot %}