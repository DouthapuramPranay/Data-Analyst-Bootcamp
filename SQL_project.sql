SELECT * FROM world_layoffs.layoffs;

-- REMOVE DUPLICATES
-- STANDARDIZE THE DATA
-- NULL VALUES OR BLANK VALUES 
-- REMOVE ANY COLUMNS

create table layoffs_staging like layoffs;

select * from layoffs_staging;

insert layoffs_staging select * from layoffs;


-- Remove Duplicates
select *,
ROW_NUMBER() over(partition by company,location,industry,total_laid_off,percentage_laid_off,'date',stage,country,funds_raised_millions) as row_num from layoffs_staging;

with duplicate_cte as(
select *,
ROW_NUMBER() over(partition by company,location,industry,total_laid_off,percentage_laid_off,'date',stage,country,funds_raised_millions) as row_num from layoffs_staging
)select * from duplicate_cte where row_num>1;

