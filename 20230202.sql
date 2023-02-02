select * from course;
select * from subject;
select * from instructor;

select * 
from course c 
left outer join subject s on(s.과목명 = c.과목명)
left outer join instructor i on(i.강사명 = s.강사명);

update course 
set 과목명 = 'python' 
where 과목명 like '%python%';