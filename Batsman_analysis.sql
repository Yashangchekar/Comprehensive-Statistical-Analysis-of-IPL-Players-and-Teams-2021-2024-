use ipl;
show tables;

select * from batting_summary;
select * from bowling_summary;
select * from match_summary;
select * from players;

#most runs by batting 
select batsmanName,sum(runs)  as run from batting_summary group by batsmanName order by run desc limit 10;

#best batting average 
select batsmanName,avg(runs)  as run from batting_summary group by batsmanName order by run desc limit 10;

#best most sixes 
select batsmanName,sum(6s)  as six from batting_summary group by batsmanName order by six desc limit 10;

select batsmanName,sum(4s)  as four from batting_summary group by batsmanName order by four desc limit 10;




#most runs by opening batsman  and avg run scoring 
select batsmanName ,sum(runs) as run from batting_summary where battingPos in (1 ,2) group by batsmanName order by run desc limit 10;
select batsmanName ,count(*) as matches_played ,avg(runs) as run  from batting_summary where battingPos in (1 ,2) group by batsmanName order by run desc limit 10;
#best batting strike rate at opening 
select batsmanName ,count(*) as matches_played ,avg(SR) as strikerate  from batting_summary where battingPos in (1 ,2) group by batsmanName order by strikerate desc limit 10;

select count(*),sum(runs) from batting_summary where batsmanName ='VivrantSharma';



#most run scored at batting in 3 ,4   as middle order batsman and avg run scoring 
select batsmanName ,sum(runs) as run from batting_summary where battingPos in (3,4) group by batsmanName order by run desc limit 10;
select batsmanName ,count(*) as matches_played ,avg(runs) as run from batting_summary where battingPos in (3,4) group by batsmanName order by run desc limit 10;

#best batting strike rate at batting at 3,4
select batsmanName ,count(*) as matches_played ,avg(SR) as strikerate  from batting_summary where battingPos in (3,4) group by batsmanName order by strikerate desc limit 10;


#most run scored at batting in 6,7   as middle order batsman and avg run scoring 
select batsmanName ,sum(runs) as run from batting_summary where battingPos in (6,7) group by batsmanName order by run desc limit 10;
select batsmanName ,count(*) as matches_played ,avg(runs) as run from batting_summary where battingPos in (6,7) group by batsmanName order by run desc limit 10;


#best pinch hitter batsman by strikerate
select batsmanName ,count(*) as matches_played ,avg(SR) as strikerate  from batting_summary where battingPos in (6,7) group by batsmanName order by strikerate desc limit 10;
#best pinch hitter batsman by match experience
select batsmanName ,count(*) as matches_played ,avg(SR) as strikerate  from batting_summary where battingPos in (6,7) group by batsmanName order by matches_played desc limit 10;

#who remain notout in 6,7 postion
select batsmanName ,count(*) as matches_played ,avg(SR) as strikerate  from batting_summary where battingPos in (6,7) and `out/not_out`='notout' group by batsmanName order by matches_played desc limit 10;




# Rcb batsman
#most avg runs scored by Rcb batsman  
select batsmanName ,count(*) as matchplayed ,avg(runs) as average,sum(runs) as totalruns, sum(balls) as ball_faced,sum(6s) as six,sum(4s) as four , avg(SR) as strikerate  from batting_summary where teamInnings ='RCB'group by batsmanName order by totalruns desc limit 10;
#worst avg runs scored by Rcb batsman  
select batsmanName ,count(*) as matchplayed ,avg(runs) as average,sum(runs) as totalruns, sum(balls) as ball_faced,sum(6s) as six,sum(4s) as four, avg(SR) as strikerate from batting_summary where teamInnings ='RCB'group by batsmanName order by totalruns desc limit 10 offset 10;


#CSK batsman
#most avg runs scored by csk batsman  
select batsmanName ,count(*) as matchplayed ,avg(runs) as runscored,sum(runs) as totalruns  ,sum(balls) as ball_faced,sum(6s) as six,sum(4s) as four, avg(SR) as strikerate from batting_summary where teamInnings ='CSK'group by batsmanName order by totalruns desc limit 10;
#wors avg runs scored by csk batsman  
select batsmanName ,count(*) as matchplayed ,avg(runs) as average,sum(runs) as totalruns, sum(balls) as ball_faced,sum(6s) as six,sum(4s) as four, avg(SR) as strikerate from batting_summary where teamInnings ='CSK'group by batsmanName order by totalruns desc limit 10 offset 10;

#MI batsman
#most avg runs scored by MI batsman 
select batsmanName ,count(*) as matchplayed ,avg(runs) as runscored,sum(runs) as totalruns  ,sum(balls) as ball_faced,sum(6s) as six,sum(4s) as four, avg(SR) as strikerate from batting_summary where teamInnings ='MI'group by batsmanName order by totalruns desc limit 10;
#wors avg runs scored by MI batsman  
select batsmanName ,count(*) as matchplayed ,avg(runs) as average,sum(runs) as totalruns, sum(balls) as ball_faced,sum(6s) as six,sum(4s) as four, avg(SR) as strikerate from batting_summary where teamInnings ='MI'group by batsmanName order by totalruns desc limit 10 offset 10;




# KKR batsman
#most  runs scored by KKR batsman  
select batsmanName ,count(*) as matchplayed ,avg(runs) as runscored,sum(runs) as totalruns  ,sum(balls) as ball_faced,sum(6s) as six,sum(4s) as four, avg(SR) as strikerate from batting_summary where teamInnings ='KKR'group by batsmanName order by totalruns desc limit 10;
#worst runs scored by kkr batsman
select batsmanName ,count(*) as matchplayed ,avg(runs) as average,sum(runs) as totalruns, sum(balls) as ball_faced,sum(6s) as six,sum(4s) as four, avg(SR) as strikerate from batting_summary where teamInnings ='KKR'group by batsmanName order by totalruns desc limit 10 offset 10;


#GT batsman
#most run scored by GT batsman
select batsmanName ,count(*) as matchplayed ,avg(runs) as average,sum(runs) as totalruns, sum(balls) as ball_faced,sum(6s) as six,sum(4s) as four, avg(SR) as strikerate from batting_summary where teamInnings ='GT'group by batsmanName order by totalruns desc limit 10;
#worst run scored by GT batsman
select batsmanName ,count(*) as matchplayed ,avg(runs) as average,sum(runs) as totalruns, sum(balls) as ball_faced,sum(6s) as six,sum(4s) as four, avg(SR) as strikerate from batting_summary where teamInnings ='GT'group by batsmanName order by totalruns desc limit 10 offset 10;


#RR batsman
#most run scored by RR batsman
select batsmanName ,count(*) as matchplayed ,avg(runs) as average,sum(runs) as totalruns, sum(balls) as ball_faced,sum(6s) as six,sum(4s) as four, avg(SR) as strikerate from batting_summary where teamInnings ='RR'group by batsmanName order by totalruns desc limit 10;
#worst run scored by RR batsman
select batsmanName ,count(*) as matchplayed ,avg(runs) as average,sum(runs) as totalruns, sum(balls) as ball_faced,sum(6s) as six,sum(4s) as four, avg(SR) as strikerate from batting_summary where teamInnings ='RR'group by batsmanName order by totalruns desc limit 10 offset 10;


#DC batsman
#most run scored by DC batsman
select batsmanName ,count(*) as matchplayed ,avg(runs) as average,sum(runs) as totalruns, sum(balls) as ball_faced,sum(6s) as six,sum(4s) as four, avg(SR) as strikerate from batting_summary where teamInnings ='DC'group by batsmanName order by totalruns desc limit 10;
#worst run scored by DC batsman
select batsmanName ,count(*) as matchplayed ,avg(runs) as average,sum(runs) as totalruns, sum(balls) as ball_faced,sum(6s) as six,sum(4s) as four, avg(SR) as strikerate from batting_summary where teamInnings ='DC'group by batsmanName order by totalruns desc limit 10 offset 10;


#PK batsman
#most run scored by PK batsman
select batsmanName ,count(*) as matchplayed ,avg(runs) as average,sum(runs) as totalruns, sum(balls) as ball_faced,sum(6s) as six,sum(4s) as four, avg(SR) as strikerate from batting_summary where teamInnings ='PK'group by batsmanName order by totalruns desc limit 10;
#worst run scored by PK batsman
select batsmanName ,count(*) as matchplayed ,avg(runs) as average,sum(runs) as totalruns, sum(balls) as ball_faced,sum(6s) as six,sum(4s) as four, avg(SR) as strikerate from batting_summary where teamInnings ='PK'group by batsmanName order by totalruns desc limit 10 offset 10;

#LSG batsman
#most run scored by LSG batsman
select batsmanName ,count(*) as matchplayed ,avg(runs) as average,sum(runs) as totalruns, sum(balls) as ball_faced,sum(6s) as six,sum(4s) as four, avg(SR) as strikerate from batting_summary where teamInnings ='LSG'group by batsmanName order by totalruns desc limit 10;
#worst run scored by LSG  batsman
select batsmanName ,count(*) as matchplayed ,avg(runs) as average,sum(runs) as totalruns, sum(balls) as ball_faced,sum(6s) as six,sum(4s) as four, avg(SR) as strikerate from batting_summary where teamInnings ='LSG'group by batsmanName order by totalruns desc limit 10 offset 10;

#SRH batsman
#most run scored SRH batsman
select batsmanName ,count(*) as matchplayed ,avg(runs) as average,sum(runs) as totalruns, sum(balls) as ball_faced,sum(6s) as six,sum(4s) as four, avg(SR) as strikerate from batting_summary where teamInnings ='SRH'group by batsmanName order by totalruns desc limit 10;
#worst run scored SRH batsman
select batsmanName ,count(*) as matchplayed ,avg(runs) as average,sum(runs) as totalruns, sum(balls) as ball_faced,sum(6s) as six,sum(4s) as four, avg(SR) as strikerate from batting_summary where teamInnings ='SRH'group by batsmanName order by totalruns desc limit 10 offset 10;
