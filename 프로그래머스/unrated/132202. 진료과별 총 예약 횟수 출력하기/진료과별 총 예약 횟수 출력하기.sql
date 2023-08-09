select MCDP_CD 진료과코드,
count(PT_NO) 5월예약건수

from APPOINTMENT

where APNT_YMD like '2022-05-%'

group by MCDP_CD

order by count(PT_NO), MCDP_CD