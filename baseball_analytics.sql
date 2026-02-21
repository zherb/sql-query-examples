SELECT
t.team_name AS team,
AVG(pt.velocity) AS avg_fastball_velocity
FROM pitches pt
LEFT JOIN players pl ON pt.pitcher_id = pl.player_id
LEFT JOIN teams t ON pl.team_id = t.team_id
WHERE pt.pitch_type = 'Fastball'
AND pl.throws = 'Left'
AND pl.player_id IN (
SELECT pt.pitcher_id
FROM pitches pt
GROUP BY pt.pitcher_id
HAVING COUNT(pt.pitch_id) >= 100
)
GROUP BY team
ORDER BY avg_fastball_velocity DESC;
