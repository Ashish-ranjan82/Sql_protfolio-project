-- number of rows in data set 1;
select * from project..a;
-- number of rows in data set 2;
select * from project..b;

--dataset for Bihar and Assam
select * from project..a where State in('Bihar','Assam') ;

--population of India
select sum(population) As Population from project..b

-- Average Growth of india
select Avg(Growth) as growth from project..a;

-- Average Growth% of india
select Avg(Growth)*100 as growth from project..a;

-- Average growth of state
select State,Avg(growth) as growth from project..a group by state;

-- Average growth% of state
select State,Avg(growth)*100 as growth from project..a group by state;

--Average growth% of state bihar
select Avg(growth)*100 as growth from project..a 
where state ='Bihar';

--Average sexratio of india
select Avg(Sex_Ratio) As sex_ratio from project..a;

--Average sexratio of india
select state,round(Avg(Sex_Ratio),0) As sex_ratio from project..a group by state order by sex_ratio desc;

--Average sexratio of Bihar
select round(Avg(Sex_Ratio),0) As sex_ratio from project..a where State='Bihar';

--Average LiteracyRate of India in 
select state,round(Avg(Literacy),0) As Literacy_rate from project..a group by state order by Literacy_rate desc;

--Average LiteracyRate of Bihar
select Avg(Literacy) As Literacy_rate from Project..a where State ='bihar';

--Average LiteracyRate of India greater than 90 
select state,round(Avg(Literacy),0) As Literacy_rate from project..a group by state Having Avg(Literacy)>=90 ;

--Highest growth rate of top 3 state
select top 3 state , avg(growth)*100 as growth_rate from project..a group by state order by avg(growth) desc;

--Lowest growth rate of top 3 state
select top 5 state , avg(growth)*100 as growth_rate from project..a group by state order by growth_rate asc;

--Lowest Sex_Ratio of state
select top 3 state , Avg(sex_ratio) as sex_ratio from project..a group by state order by sex_ratio asc;

--Highest Sex_Ratio of state
select top 3 state , Avg(sex_ratio) as sex_ratio from project..a group by state order by sex_ratio desc;

--state starting with A
select distinct state from project..a where state like 'A%' or state like'B%';

--state state start with a and end with m;
select distinct state from project..a where state like'A%' and state like'%m';









