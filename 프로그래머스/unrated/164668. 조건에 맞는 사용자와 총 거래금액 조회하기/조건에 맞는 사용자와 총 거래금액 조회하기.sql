select u.USER_ID,
       u.NICKNAME,
       sum(b.PRICE) TOTAL_SALES
       
from USED_GOODS_BOARD b, USED_GOODS_USER u

where b.STATUS = 'DONE' and
      b.WRITER_ID = u.USER_ID

group by u.USER_ID
having sum(b.PRICE) >= 700000

order by TOTAL_SALES;