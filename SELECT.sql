SELECT
CASE WHEN draft_year LIKE '199%' THEN '1990s'
     WHEN draft_year LIKE '2000%' THEN '2000s'
     WHEN draft_year LIKE '2010%' THEN '2010s'
     WHEN draft_year LIKE '2020%' THEN '2020s'
     ELSE 'Underdraft' END AS draft_decade,
     ROUND(AVG(player_height),2) AS avg_height,
     ROUND(AVG(player_weight),2) AS avg_weight,
     COUNT(*) AS total_players
FROM nba_players_stats.nba_players_stats
GROUP BY draft_decade
ORDER BY draft_decade;