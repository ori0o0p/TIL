select b.CATEGORY,
       sum(s.SALES) TOTAL_SALES
       
from BOOK b, BOOK_SALES s

where s.SALES_DATE like '2022-01-%' and
      b.BOOK_ID = s.BOOK_ID

group by b.CATEGORY

order by CATEGORY