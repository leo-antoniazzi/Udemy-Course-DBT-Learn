WITH

raw_listings AS (
    SELECT 
        *
    FROM {{ source('airbnb', 'listings')}}
)

SELECT
id              AS listing_id,
name            AS listing_name,
listing_url     AS listing_url,
room_type       AS room_type,
minimum_nights  AS minimum_nights,
host_id         AS host_id,
price           AS price_str,
created_at      AS created_at,
updated_at      AS updated_at

FROM raw_listings
