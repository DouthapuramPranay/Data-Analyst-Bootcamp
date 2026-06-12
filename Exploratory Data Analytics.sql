select * from layoffs_staging2;

select max(total_laid_off),max(percentage_laid_off) from layoffs_staging2;

select company,sum(total_laid_off) from layoffs_staging2 group by company order by 2 desc;

select * from layoffs_staging2 where percentage_laid_off=1 order by funds_raised_millions desc;

select min(`date`),max(`date`) from layoffs_staging2;

select country,sum(total_laid_off) from layoffs_staging2 group by country order by 2 desc;

select year(`date`),sum(total_laid_off) from layoffs_staging2 group by year(`date`) order by 1 desc;
select company,avg(percentage_laid_off) from layoffs_staging2 group by company order by 2 desc;

select substring(`date`,1,7) as `MONTH`,sum(total_laid_off) as total_layoffs from layoffs_staging2 where substring(`date`,1,7) is not null group by `MONTH` order by 1 ASC;

with rolling_total as
(
select substring(`date`,1,7) as `MONTH`,sum(total_laid_off) as total_layoffs from layoffs_staging2 where substring(`date`,1,7) is not null group by `MONTH` order by 1 ASC
)
select `MONTH`,total_layoffs,sum(total_layoffs) over(order by `MONTH`) as rolling_total from rolling_total;

select company,year(`date`),sum(total_laid_off) from layoffs_staging2 group by company,year(`date`);

with company_year (company,years,total_laid_off) as (
select company,year(`date`),sum(total_laid_off) from layoffs_staging2 group by company,year(`date`)
),company_year_rank as (
select *,dense_rank() over(partition by years order by total_laid_off desc) as rank_of_layoffs 
from company_year where years is not null)select * from company_year_rank where rank_of_layoffs <=5;













