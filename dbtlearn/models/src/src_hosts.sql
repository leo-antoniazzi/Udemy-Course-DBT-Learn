WITH

raw_hosts AS (
SELECT * FROM {{ source('airbnb', 'hosts')}}
)

SELECT
    id              AS host_id,
    name            AS host_name,
    is_superhost    AS is_superhost,
    created_at      AS created_at,
    updated_at      AS updated_at

FROM raw_hosts