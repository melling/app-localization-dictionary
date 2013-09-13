select *
from app_localization_dictionary
group by `english`
 having count(*) > 1;
