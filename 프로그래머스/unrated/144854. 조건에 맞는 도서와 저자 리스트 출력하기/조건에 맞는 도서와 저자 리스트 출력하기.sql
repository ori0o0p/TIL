select b.BOOK_ID,
       a.AUTHOR_NAME,
       date_format(b.PUBLISHED_DATE, '%Y-%m-%d') as PUBLISHED_DATE
       
from AUTHOR a, BOOK b

where b.CATEGORY = '경제' and
      a.AUTHOR_ID = b.AUTHOR_ID
      
order by PUBLISHED_DATE;