
select * from batting_summary;
select * from bowling_summary;
select * from match_summary;


select count(*) from match_summary;
select winner,count(winner)  as win from match_summary group by winner order by win desc ; 

select * from match_summary as ms inner join batting_summary as bats on ms.match_id=bats.match_id;
select * from match_summary as ms inner join bowling_summary as bows on ms.match_id=bows.match_id;

select * from match_summary as ms inner join batting_summary as bats on ms.match_id=bats.match_id ;
select batsmanName,count(`match`), sum(runs) as Runscored from match_summary as ms inner join batting_summary as bats on ms.match_id=bats.match_id where  `match` ='CSK Vs MI' or `match` ='MI Vs CSK' group by batsmanName order by Runscored desc  ;


select batsmanName,count(`match`), sum(runs) as Runscored from match_summary as ms inner join batting_summary as bats on ms.match_id=bats.match_id where  `match` ='CSK Vs MI' or `match` ='MI Vs CSK' and year=2021 group by batsmanName order by Runscored desc  ;