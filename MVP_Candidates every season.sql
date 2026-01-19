WITH MVP_candidates AS (
    SELECT player_name,
         team_abbreviation,
         age,
         college,
         country,
         season,
         ROUND(0.4*pts+0.15*rEB+0.15*ast+0.3*ts_pct,2) AS MVP_score
FROM nba_players_stats.nba_players_stats
WHERE college IS NOT NULL
)
SELECT *
FROM (
    SELECT *,
           RANK() OVER (PARTITION BY season ORDER BY MVP_score DESC) AS rank_in_season
    FROM MVP_candidates
) AS ranked_candidates
WHERE rank_in_season = 1
ORDER BY season;