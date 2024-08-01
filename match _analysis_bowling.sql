select * from bowling_summary;
select * from match_summary;

select * from bowling_summary as bows inner join match_summary as ms on bows.match_id=ms.match_id;



#Most wicket  taken  bowler of both Csk and mumbai teaam 
SELECT 
    bows.bowlerName, 
    bows.bowlingTeam, 
    count(*) as matches,
    SUM(bows.runs) AS runs, 
    SUM(bows.overs) AS overs, 
    SUM(bows.wickets) AS wickettaken, 
    AVG(bows.economy) AS economy, 
    SUM(bows.`4s`) AS fours, 
    SUM(bows.`6s`) AS sixes, 
    SUM(bows.`4s` + bows.`6s`) AS boundaries, 
    SUM(bows.wides + bows.noBalls) AS extras
FROM 
    bowling_summary AS bows 
INNER JOIN 
    match_summary AS ms 
ON 
    bows.match_id = ms.match_id 
WHERE 
    (`match` = 'CSK Vs MI' OR `match` = 'MI Vs CSK') 
    AND ms.year IN (2021, 2022, 2023)
GROUP BY 
    bows.bowlerName, 
    bows.bowlingTeam
ORDER BY 
    wickettaken desc;
    
    
    
#Most boundariest by bowler in mi vs csk matches
SELECT 
    bows.bowlerName, 
    bows.bowlingTeam, 
    count(*) as matches,
    SUM(bows.runs) AS runs, 
    SUM(bows.overs) AS overs, 
    SUM(bows.wickets) AS wickettaken, 
    AVG(bows.economy) AS economy, 
    SUM(bows.`4s`) AS fours, 
    SUM(bows.`6s`) AS sixes, 
    SUM(bows.`4s` + bows.`6s`) AS boundaries, 
    SUM(bows.wides + bows.noBalls) AS extras
FROM 
    bowling_summary AS bows 
INNER JOIN 
    match_summary AS ms 
ON 
    bows.match_id = ms.match_id 
WHERE 
    (`match` = 'CSK Vs MI' OR `match` = 'MI Vs CSK') 
    AND ms.year IN (2021, 2022, 2023)
GROUP BY 
    bows.bowlerName, 
    bows.bowlingTeam
ORDER BY 
    boundaries desc;    
    
#analysis of bowler in a single game of 2023
SELECT 
    bows.bowlerName, 
    bows.bowlingTeam, 
    count(*) as matches,
    SUM(bows.runs) AS runs, 
    SUM(bows.overs) AS overs, 
    SUM(bows.wickets) AS wickettaken, 
    AVG(bows.economy) AS economy, 
    SUM(bows.`4s`) AS fours, 
    SUM(bows.`6s`) AS sixes, 
    SUM(bows.`4s` + bows.`6s`) AS boundaries, 
    SUM(bows.wides + bows.noBalls) AS extras
FROM 
    bowling_summary AS bows 
INNER JOIN 
    match_summary AS ms 
ON 
    bows.match_id = ms.match_id 
WHERE 
    (`match` = 'CSK Vs MI' OR `match` = 'MI Vs CSK') 
    AND ms.year IN ( 2023)  and bows.match_id='T206408'
GROUP BY 
    bows.bowlerName, 
    bows.bowlingTeam
ORDER BY 
    boundaries desc;    


