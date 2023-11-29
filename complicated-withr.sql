with
  "r" as (
  	select 
  		"time", 
  		"uuid" 
  	from 
  		"run_events" 
  	where 
  		run_uuid = $1 
  	order by 
  		"time" desc
  )
select 
	r.uuid, 
	r.time
from "r";
