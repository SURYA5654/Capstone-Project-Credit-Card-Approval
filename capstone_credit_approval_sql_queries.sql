# 1.Group the customers based on their income type(Type_employement) and find the average of their annual income.
select type_employement, round(avg(income),2) 
from credit_sql 
group by type_employement;

# 2.Find the female owners of cars and property.
select * 
from credit_sql 
where gender = 'F' And own_car = 'Y' And own_property = 'Y';
    
# 3.Find the male customers who are staying with their families.
select * 
from credit_sql 
where gender = 'M' And family_members >= 2;

# 4.Please list the top five people having the highest income.
select * 
from credit_sql 
order by income desc 
limit 5;

# 5.How many married people are having bad credit?(0 is application approved and 1 is application rejected)
select count(*) 
from credit_sql 
where marital_status = 'Married' 
And label = 1;

# 6.What is the highest education level and what is the total count?
select education_Level,count(education_Level) as total_count
from credit_sql 
group by education_Level;

# 7.Between married males and females, who is having more bad credit?
select gender, count(gender) as bad_credit_count 
from credit_sql 
where marital_status = 'Married' And label = 1
group by gender;