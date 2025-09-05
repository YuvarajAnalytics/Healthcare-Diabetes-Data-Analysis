create database healthcare_data;
use healthcare_data;

select * from `healthcare-diabetes`;

select 
      case 
          when Age<=30 then 'Young'
          when Age<=50 then 'Middle_Age'
          else 'Senior'
	end as age_distribution, 
    count(*) as total_records
    from `healthcare-diabetes`
    group by age_distribution;
    
   select Outcome ,Pregnancies
   from `healthcare-diabetes`
   where outcome = 1;
   
   select count(Outcome) as Diabetic_patients
   from `healthcare-diabetes`
   where Outcome =1;

select * from `healthcare-diabetes`;

select 
case
when Glucose<=100 then 'Normal'
when Glucose<=125 then 'Prediabetic'
Else 'Diabetic'
end as 'Categories',
count(*) as total_count
from `healthcare-diabetes`
group by Categories;

select Outcome,Pregnancies,
max(BloodPressure)as MaxBP 
 from `healthcare-diabetes`
  where Outcome =1
 group by Outcome,Pregnancies
 Order by MaxBP desc;
 
select 
case 
when BMI<=18.5 THEN 'Underweight'
when BMI<=29.5 THEN 'Normalweight'
else 'Obesity'
end as BMI_Categories,
count(*) as grand_total 
from `healthcare-diabetes`
group by BMI_Categories;

   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    