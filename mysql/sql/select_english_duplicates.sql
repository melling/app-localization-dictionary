select *
from app_localization_dictionary ald
where ald.english in 
(select english
from app_localization_dictionary
group by `english`
 having count(*) > 1)
 order by ald.english;
