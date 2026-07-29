# Write your MySQL query statement below
select w1.id
from weather w1
where w1.temperature >(
    select w2.temperature
    from weather w2
    where datediff(w1.recorddate, w2.recorddate)=1
);