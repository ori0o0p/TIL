select half.FLAVOR

from FIRST_HALF half, ICECREAM_INFO info
where half.FLAVOR = info.FLAVOR and 
info.INGREDIENT_TYPE in ('fruit_based') and
half.TOTAL_ORDER > 3000


