select BOARD_ID,
       WRITER_ID,
       TITLE,
       PRICE,
       case STATUS when 'SALE' then '판매중'
       when 'RESERVED' then '예약중' else '거래완료' end as STATUS
       
from USED_GOODS_BOARD

where CREATED_DATE like '2022-10-05'

order by BOARD_ID desc;