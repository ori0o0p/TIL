select c.CAR_ID,
       c.CAR_TYPE,
       round(c.DAILY_FEE * 30 * (100 - p.DISCOUNT_RATE) / 100, 0) FEE
from CAR_RENTAL_COMPANY_CAR c
join CAR_RENTAL_COMPANY_RENTAL_HISTORY h on c.CAR_ID = h.CAR_ID
join CAR_RENTAL_COMPANY_DISCOUNT_PLAN p on c.CAR_TYPE = p.CAR_TYPE
where c.CAR_TYPE in ('세단', 'SUV') and
      c.car_id not in (
        select car_id
        from CAR_RENTAL_COMPANY_RENTAL_HISTORY
        where '2022-11-01' between START_DATE and END_DATE)
      and c.DAILY_FEE * 30 between 500000 and 2000000 and
      p.DURATION_TYPE = '30일 이상'
group by c.CAR_ID, c.CAR_TYPE, c.DAILY_FEE
order by FEE desc, CAR_TYPE asc, CAR_ID desc;


