
select * from batting_summary;
select * from bowling_summary;
select * from match_summary;
select distinct(won_by)  from match_summary;

select count(*) from match_summary;
select winner,count(winner)  as win from match_summary group by winner order by win desc ; 

select * from match_summary as ms inner join batting_summary as bats on ms.match_id=bats.match_id;
select * from match_summary as ms inner join bowling_summary as bows on ms.match_id=bows.match_id;

select * from match_summary as ms right  join batting_summary as bats on ms.match_id=bats.match_id ;
select * from match_summary as ms left  join batting_summary as bats on ms.match_id=bats.match_id ;



#statisical analysis of mi vs csk
select * from match_summary where (team1="CSK"and  team2="MI") or (team1="MI"and  team2="CSK");


#how many matchs won by each team (head to head)
select winner,count(winner) as winner from match_summary where (team1="CSK"and  team2="MI") or (team1="MI"and  team2="CSK") group by winner ;


#win by batting first or bowling first 
select won_by,count(won_by) as won_by from match_summary where (team1="CSK"and  team2="MI") or (team1="MI"and  team2="CSK") group by won_by;


#csk vs rcb (head to head)
select winner,count(winner) as winner from match_summary where (team1="CSK"and  team2="RCB") or (team1="RCB"and  team2="CSK") group by winner ;


#most runs scored in all match of mi vs csk
select batsmanName,count(`match`), sum(runs) as Runscored ,avg(runs),sum(balls) as ballfaced, sum(4s) as 4s ,sum(6s) as 6s,sum(4s+6s) as boundaries
from match_summary as ms inner join batting_summary as bats on ms.match_id=bats.match_id 
where  `match` ='CSK Vs MI' or `match` ='MI Vs CSK' and year in (2021,2022,2023) group by batsmanName order by Runscored desc  ;

#most boundaries scored in all match of mi vs csk
select batsmanName,count(`match`), sum(runs) as Runscored ,avg(runs),sum(balls) as ballfaced, sum(4s) as 4s ,sum(6s) as 6s,sum(4s+6s) as boundaries
from match_summary as ms inner join batting_summary as bats on ms.match_id=bats.match_id 
where  `match` ='CSK Vs MI' or `match` ='MI Vs CSK' and year in (2021,2022,2023) group by batsmanName order by boundaries desc  ;

#statistical analysis of how many runs player  have scored in csk vs mi from (2021 to 2023)
select batsmanName,count(`match`) as matches_played, sum(runs) as Runscored , avg(runs)
from match_summary as ms inner join batting_summary as bats on ms.match_id=bats.match_id 
where  `match` ='CSK Vs MI' or `match` ='MI Vs CSK' group by batsmanName order by Runscored desc  ;

#statistical analysis of how many runs player  have scored in csk vs mi from (2021)
select batsmanName,count(`match`) as matches_played, sum(runs) as Runscored ,avg(runs)
from match_summary as ms inner join batting_summary as bats on ms.match_id=bats.match_id 
where  (`match` ='CSK Vs MI' or `match` ='MI Vs CSK') and year=2021 group by batsmanName order by Runscored desc  ;


#statistical analysis of how many runs player  have scored in csk vs mi from (2023)
select batsmanName,count(`match`) as matches_played, sum(runs) as Runscored ,avg(runs)
from match_summary as ms inner join batting_summary as bats on ms.match_id=bats.match_id 
where  (`match` ='CSK Vs MI' or `match` ='MI Vs CSK') and year=2023 group by batsmanName order by Runscored desc  ;

#statistical analysis of how many runs player  have scored in csk vs mi from (2022 and 2023)
select batsmanName,count(`match`), sum(runs) as Runscored , avg(runs)
from match_summary as ms inner join batting_summary as bats on ms.match_id=bats.match_id 
where   (`match` ='MI Vs CSK' or `match` ='CSK Vs MI') and  year in (2022,2023)   group by batsmanName order by Runscored desc  ;


#statistical analysis of how many runs player  have scored in csk vs mi in (2023) in single match
select batsmanName,count(`match`), sum(runs) as Runscored , avg(runs)
from match_summary as ms inner join batting_summary as bats on ms.match_id=bats.match_id 
where   (`match` ='MI Vs CSK' or `match` ='CSK Vs MI') and  year in (2023) and bats.match_id='T206408'  group by batsmanName order by Runscored desc  ;
-- T201256
-- T203694
-- T203878
-- T202326
-- T204004
-- T206408





