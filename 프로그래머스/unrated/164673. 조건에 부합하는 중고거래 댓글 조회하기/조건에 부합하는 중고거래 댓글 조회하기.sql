select 
board.TITLE,
board.BOARD_ID,
reply.REPLY_ID,
reply.WRITER_ID,
reply.CONTENTS,
date_format(reply.CREATED_DATE, '%Y-%m-%d') as CREATED_DATE

from USED_GOODS_BOARD board, USED_GOODS_REPLY reply

where board.BOARD_ID = reply.BOARD_ID and
board.CREATED_DATE like '2022-10%'
order by CREATED_DATE, board.TITLE;


