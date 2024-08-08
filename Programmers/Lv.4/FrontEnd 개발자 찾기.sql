-- 코드를 작성해주세요

select distinct id, email, first_name, last_name
from developers d
join skillcodes s
on d.skill_code & s.code 
where s.category = 'Front End'
order by id
