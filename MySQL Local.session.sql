WITH lead_pts AS (
    SELECT
        player_name,
        team_abbreviation,
        age,
        pts,
        season,
        ROW_NUMBER() OVER (PARTITION BY season ORDER BY pts DESC) AS points_rank
        FROM nba_players_stats.nba_players_stats
),
lead_ast AS (
    SELECT
        player_name,
        team_abbreviation,
        age,
        ast,
        season,
        ROW_NUMBER() OVER (PARTITION BY season ORDER BY ast DESC) AS assists_rank
        FROM nba_players_stats.nba_players_stats
),
lead_reb AS (
    SELECT
        player_name,
        team_abbreviation,
        age,
        reb,
        season,
        ROW_NUMBER() OVER (PARTITION BY season ORDER BY reb DESC) AS rebounds_rank
        FROM nba_players_stats.nba_players_stats
)

SELECT
    p.season,
    p.player_name AS points_leader,
    p.pts,
    a.player_name AS assists_leader,
    a.ast,
    r.player_name AS rebounds_leader,
    r.reb
FROM lead_pts AS p
LEFT JOIN lead_ast AS a ON p.season = a.season AND a.assists_rank = 1
LEFT JOIN lead_reb AS r ON p.season = r.season AND r.rebounds_rank = 1
WHERE p.points_rank = 1
ORDER BY p.season;