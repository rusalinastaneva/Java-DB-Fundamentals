USE geography;

SELECT peak_name,river_name, 
LOWER (CONCAT(`peak_name`,SUBSTRING(`river_name`,2))) AS `mix`
FROM peaks AS p,rivers AS r
WHERE SUBSTRING(p.peak_name,-1)=SUBSTRING(r.river_name,1,1)
ORDER BY `mix` ASC;