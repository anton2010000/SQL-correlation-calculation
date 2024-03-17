with t1 as ( select t.created_at::date as dt , count(t.id) as cnt
            from teststart t
            group by dt
      ),
      t2 as ( select cs.created_at::date as dt
             from codesubmit cs
             union all
             select c.created_at::date 
             from coderun c      
      ),
      t3 as ( select dt, count(*) as cnt
             from t2
             group by dt
        
      )
select round(corr(coalesce(t3.cnt, 0), coalesce(t1.cnt, 0))::numeric,2) as cnt_corr
from t3 
full join t1
on t3.dt = t1.dt
