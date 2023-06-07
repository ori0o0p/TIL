-- 코드를 입력하세요
SELECT count(AGE) as USERS
from USER_INFO
where AGE > 19 and AGE < 30 and date_format(JOINED, '%Y') = 2021