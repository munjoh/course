/* My try
select l.listing_id, l.created_at, r.review_date
from {{ref('dim_listings_cleansed')}} l, {{ref('fct_reviews')}} r
where l.listing_id = r.listing_id 
and r.review_date < l.created_at
limit 10
*/

SELECT * FROM {{ ref('dim_listings_cleansed') }} l
INNER JOIN {{ ref('fct_reviews') }} r
USING (listing_id)
WHERE l.created_at > r.review_date