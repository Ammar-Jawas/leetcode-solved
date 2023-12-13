# Write your MySQL query statement below
select s.student_id, s.student_name, case when e.subject_name is null then su.subject_name else su.subject_name end as subject_name, count(e.student_id) as attended_exams
FROM Students s
CROSS JOIN Subjects su
LEFT JOIN Examinations e ON s.student_id = e.student_id AND su.subject_name = e.subject_name
Group by s.student_id, su.subject_name
ORDER BY s.student_id

