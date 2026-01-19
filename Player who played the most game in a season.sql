WITH Most_games_played AS (
    SELECT player_name,
    team_abbreviation,
    age,
    college,
    country,
    season,
    gp,
    ROW_NUMBER() OVER (PARTITION BY season ORDER BY gp DESC) AS rank_gp
    FROM nba_players_stats.nba_players_stats
    WHERE college IS NOT NULL
)
SELECT *
FROM Most_games_played
WHERE rank_gp = 1
ORDER BY season;