select * from dbo.Sheet1$

select sum(dbo.Sheet1$.[Nitrogen Oxide]) as total_nitrogen_oxide, dbo.Sheet1$.Country 
from dbo.Sheet1$ 
group by dbo.Sheet1$.Country order by total_nitrogen_oxide desc                           /* country wise Nitrogen oxide level highest to lowest */

select sum(dbo.Sheet1$.[Nitrogen Oxide]) as total_nitrogen_oxide,dbo.Sheet1$.Year 
from dbo.Sheet1$ 
group by dbo.Sheet1$.Year order by total_nitrogen_oxide desc                              /* year wise Nitogen oxide level highest to lowest */

select sum(dbo.Sheet1$.[Sulphur Dioxide]) as total_sulphur_dioxide,dbo.Sheet1$.Country 
from dbo.Sheet1$ 
group by dbo.Sheet1$.Country order by total_sulphur_dioxide desc                          /* country wise Sulphur dioxide leve highest to lowest */

select sum(dbo.Sheet1$.[Sulphur Dioxide]) as total_sulphur_dioxide,dbo.Sheet1$.Year 
from dbo.Sheet1$ 
group by dbo.Sheet1$.Year order by total_sulphur_dioxide desc                             /* year wise Sulphur dioxide level highest to lowest */

select sum(dbo.Sheet1$.[Carbon Monoxide]) as total_carbon_monoxide,dbo.Sheet1$.Country 
from dbo.Sheet1$ 
group by dbo.Sheet1$.Country order by total_carbon_monoxide desc                          /* country wise carbon monoxide level highest to lowest */

select sum(dbo.Sheet1$.[Carbon Monoxide]) as total_carbon_monoxide,dbo.Sheet1$.Year 
from dbo.Sheet1$ 
group by dbo.Sheet1$.Year order by total_carbon_monoxide desc                             /* year wise carbon monoxide level highest to lowest */

select sum(dbo.Sheet1$.[Organic Carbon]) as total_organic_carbon,dbo.Sheet1$.Country 
from dbo.Sheet1$ 
group by dbo.Sheet1$.Country order by total_organic_carbon desc                           /* country wise organic carbon level highest to lowest */

select sum(dbo.Sheet1$.[Organic Carbon]) as total_organic_carbon,dbo.Sheet1$.Year 
from dbo.Sheet1$ 
group by dbo.Sheet1$.Year order by total_organic_carbon desc                              /* year wise organic carbon level highest to lowest */

select sum(dbo.Sheet1$.[NMVOCs]) as total_NMVOCs,dbo.Sheet1$.Country 
from dbo.Sheet1$ 
group by dbo.Sheet1$.Country order by total_NMVOCs desc                                   /* country wise NMVOCs level highest to lowest */

select sum(dbo.Sheet1$.[NMVOCs]) as total_NMVOCs,dbo.Sheet1$.Year 
from dbo.Sheet1$ 
group by dbo.Sheet1$.Year order by total_NMVOCs desc                                      /* year wise NMVOCs level highest to lowest */

select sum(dbo.Sheet1$.[Black Carbon]) as total_black_carbon,dbo.Sheet1$.Country 
from dbo.Sheet1$ 
group by dbo.Sheet1$.Country order by total_black_carbon desc                             /* country wise black carbon level highest to lowest */

select sum(dbo.Sheet1$.[Black Carbon]) as total_black_carbon,dbo.Sheet1$.Year 
from dbo.Sheet1$ 
group by dbo.Sheet1$.Year order by total_black_carbon desc                                /* year wise black carbon level highest to lowest */

select sum(dbo.Sheet1$.[Ammonia]) as total_ammonia,dbo.Sheet1$.Country 
from dbo.Sheet1$ 
group by dbo.Sheet1$.Country order by total_ammonia desc                                  /* country wise ammonia level highest to lowest */

select sum(dbo.Sheet1$.[Ammonia]) as total_ammonia,dbo.Sheet1$.Year 
from dbo.Sheet1$ 
group by dbo.Sheet1$.Year order by total_ammonia desc                                     /* year wise ammonia level highest to lowest */


alter table dbo.Sheet1$                                                                  /* Create new column 'Century_year' */
add Century_year varchar(50)

update dbo.Sheet1$                                                                       /* add values to new column using 'WHERE' clause */
set dbo.Sheet1$.Century_year='18th century'
where Year between '1750' and '1799'

update dbo.Sheet1$
set dbo.Sheet1$.Century_year='19th century'                                             /* add values to new column using 'WHERE' clause */
where Year between '1800' and '1899'

update dbo.Sheet1$
set dbo.Sheet1$.Century_year='20th century'                                             /* add values to new column using 'WHERE' clause */
where Year between '1900' and '1999'

update dbo.Sheet1$
set dbo.Sheet1$.Century_year='21th century'                                             /* add values to new column using 'WHERE' clause */
where Year between '2000' and '2019'

select sum(dbo.Sheet1$.[Carbon Monoxide]) as total_carbon_monoxide,dbo.Sheet1$.Century_year  
from dbo.Sheet1$                                                            /* it shows which century has highest level of carbon monoxide */
group by dbo.Sheet1$.Century_year order by total_carbon_monoxide desc