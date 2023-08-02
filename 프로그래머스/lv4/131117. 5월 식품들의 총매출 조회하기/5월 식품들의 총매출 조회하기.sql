select p.PRODUCT_ID,
       p.PRODUCT_NAME,
       sum(PRICE * o.AMOUNT) as TOTAL_SALES

from FOOD_PRODUCT p, FOOD_ORDER o

where o.PRODUCE_DATE like '%-05-%' and
      p.PRODUCT_ID = o.PRODUCT_ID
      
group by p.PRODUCT_ID
order by TOTAL_SALES desc, PRODUCT_ID;