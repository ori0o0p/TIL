select p.PRODUCT_CODE,
       sum(p.PRICE * s.SALES_AMOUNT) as SALES
    
from PRODUCT p, OFFLINE_SALE s

where p.PRODUCT_ID = s.PRODUCT_ID

group by p.PRODUCT_ID

order by SALES desc, PRODUCT_CODE;