select date_format(o.SALES_DATE, '%Y') YEAR,
       date_format(o.SALES_DATE, '%m') MONTH,
       count(distinct u.USER_ID) PUCHASED_USERS,
       round(count(distinct u.USER_ID) / (SELECT COUNT(*)
                                        FROM USER_INFO 
                                        WHERE joined LIKE '2021%'), 1) PUCHASED_RATIO
       
from ONLINE_SALE o, USER_INFO u

where o.USER_ID = u.USER_ID and
      u.JOINED like '2021%'
      
group by MONTH

order by YEAR, MONTH