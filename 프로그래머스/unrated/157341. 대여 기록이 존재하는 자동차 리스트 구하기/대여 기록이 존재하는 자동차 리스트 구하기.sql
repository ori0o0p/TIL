select distinct h.CAR_ID

from CAR_RENTAL_COMPANY_RENTAL_HISTORY h,
     CAR_RENTAL_COMPANY_CAR a
     
where CAR_TYPE = '세단' and
      START_DATE like '%-10-%' and
      h.CAR_ID = a.CAR_ID

order by CAR_ID desc;