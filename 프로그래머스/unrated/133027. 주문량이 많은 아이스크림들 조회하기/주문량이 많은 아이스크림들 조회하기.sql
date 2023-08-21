select j.FLAVOR

from FIRST_HALF f, JULY j

where f.FLAVOR = j.FLAVOR

group by FLAVOR

order by sum(f.TOTAL_ORDER) + sum(j.TOTAL_ORDER) desc

limit 3