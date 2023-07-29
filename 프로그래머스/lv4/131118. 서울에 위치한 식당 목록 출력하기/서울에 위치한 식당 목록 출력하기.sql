select distinct info.REST_ID,
       info.REST_NAME,
       info.FOOD_TYPE,
       info.FAVORITES as FAVORITES,
       info.ADDRESS,
       round(avg(review.REVIEW_SCORE), 2) as SCORE
from REST_INFO info
join REST_REVIEW review ON info.REST_ID = review.REST_ID
where info.ADDRESS like '서울%'
group by info.REST_ID, info.REST_NAME, info.FOOD_TYPE, info.ADDRESS
order by SCORE desc, FAVORITES desc;
