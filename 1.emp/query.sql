SELECT * FROM (SELECT job, sal, deptno FROM emp) PIVOT (SUM(sal) FOR deptno IN (10 AS "HR", 20 AS "RND", 30 AS "SALES"));
