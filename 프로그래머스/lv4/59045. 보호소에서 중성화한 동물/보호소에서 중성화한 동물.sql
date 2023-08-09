select o.ANIMAL_ID,
       o.ANIMAL_TYPE,
       o.NAME

from ANIMAL_INS i, ANIMAL_OUTS o

where i.SEX_UPON_INTAKE like 'Intact%' and
      o.SEX_UPON_OUTCOME in ('Neutered Male', 'Spayed Female') and
      i.ANIMAL_ID = o.ANIMAL_ID