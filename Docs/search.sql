SELECT * FROM public.job_post as jp

WHERE LOWER(jp.job_desrciption) LIKE '%front%'

--OR jp.job_type_id in (
	--SELECT jt.id FROM public.job_type as jt
	--WHERE LOWER(jt.job_type) LIKE '%front%'
--)
--WHERE
--LOWER(j.job_description) LIKE '%Senior%'