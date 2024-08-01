create database ipl;
use ipl;
show tables;
drop database ipl;
select * from batting_summary;
select * from bowling_summary;

select * from match_summary;
select * from players;
select count(*) from match_summary;


select  won_by,count(won_by) from match_summary group by won_by;

SELECT 
    winner,
    (COUNT(winner) / (SELECT COUNT(*) FROM match_summary)) * 100 AS winningsixteenmatch
FROM 
    match_summary
GROUP BY 
    winner
order by winningsixteenmatch desc ;


-- winning by batting as and bowling
select  won_by,count(won_by) from match_summary where winner="MI" group by won_by;
select  won_by,count(won_by) from match_summary where winner="RCB" group by won_by;


select * from batting_summary ;
select * from batting_summary where batsmanName="RuturajGaikwad";
select count(*) from batting_summary where batsmanName="RuturajGaikwad";
select sum(runs) from batting_summary where batsmanName="RuturajGaikwad";
select avg(runs) from batting_summary where batsmanName="RuturajGaikwad";


-- from last 3 years avg  top 10 batsman scoring highest runs in the ipl 2021-2023-- 
select batsmanName,sum(runs),avg(runs) from batting_summary group by batsmanName order by sum(runs) desc  limit 10;

select batsmanName,sum(4s) + sum(6s) as boundaries  from batting_summary group by batsmanName order by  boundaries desc limit 10;
select batsmanName,sum(6s) from batting_summary group by batsmanName order by sum(6s) desc limit 10;
select batsmanName,sum(4s) from batting_summary group by batsmanName order by sum(4s) desc limit 10;



-- from last 3 year avg top 10 wicket taking bowler in the ipl
select bowlerName,sum(wickets) from bowling_summary group by bowlerName order by sum(wickets) desc  limit 10;

select * from match_summary;

-- number of win by team
select  winner,count(winner) from match_summary group by winner ;
select * from Batting_summary;


-- who score most runs in Mi vs csk match 
SELECT batsmanName,sum(runs)
FROM Batting_summary 
WHERE `match` = 'MI Vs CSK' group by batsmanName order by sum(runs) desc  limit 10;

-- who takes most wickets in Mi vs csk match 
SELECT bowlerName,sum(wickets)
FROM bowling_summary 
WHERE `match` = 'MI Vs CSK' group by bowlerName order by sum(wickets) desc  limit 10;

SELECT batsmanName,sum(runs)
FROM Batting_summary 
WHERE `match` = 'CSK Vs RCB' group by batsmanName order by sum(runs) desc  limit 10;

SELECT bowlerName,sum(wickets)
FROM bowling_summary 
WHERE `match` = 'CSK Vs RCB' group by bowlerName order by sum(wickets) desc  limit 10;
