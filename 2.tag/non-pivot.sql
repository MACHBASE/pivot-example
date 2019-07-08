-- w/o PIVOT
SELECT * FROM (
    SELECT   DATE_TRUNC('MINUTE', time, 1) AS ts,
             SUM(CASE WHEN tagid = 'FRONT_AXIS' THEN value ELSE 0 END)  AS FRONT_AXIS,
             SUM(CASE WHEN tagid = 'REAR_AXIS' THEN value ELSE 0 END)  AS REAR_AXIS,
             SUM(CASE WHEN tagid = 'HOIST_AXIS' THEN value ELSE 0 END)  AS HOIST_AXIS,
             SUM(CASE WHEN tagid = 'SLIDE_AXIS' THEN value ELSE 0 END)  AS SLIDE_AXIS
    FROM     tag 
    WHERE    tagid IN ('FRONT_AXIS', 'REAR_AXIS', 'HOIST_AXIS', 'SLIDE_AXIS')
    GROUP BY ts
) ORDER BY ts DESC LIMIT 20;
