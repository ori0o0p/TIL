select i.ANIMAL_ID,
       i.NAME
       
from ANIMAL_INS i, ANIMAL_OUTS o

where i.DATETIME > o.DATETIME and
      i.ANIMAL_ID = o.ANIMAL_ID
      
order by i.DATETIME