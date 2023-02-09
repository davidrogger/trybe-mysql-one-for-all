SELECT 
	MIN(p.cost) AS 'faturamento_minimo',
  MAX(p.cost) AS 'faturamento_maximo',
  ROUND(AVG(p.cost), 2) AS 'faturamento_medio',
  SUM(p.cost) AS 'faturamento_total'
FROM SpotifyClone.plan as p
INNER JOIN SpotifyClone.user AS u ON u.plan_id = p.id;