use ipl;
show tables;

select * from batting_summary;
select * from bowling_summary;
select * from match_summary;
select * from players;

#average analysis of mohammed shami  and yuzvendra chahal weather in which team he has taken wicket 
select bowlerName ,count(*) as matches, bowlingTeam ,sum(runs) as runs ,sum(overs) as overs, sum(wickets) as wickettaken ,avg(economy) as economy , sum(4s) as 4s ,sum(6s) as 6s , sum(4s+6s) as boundaries ,sum(wides+noBalls) as extras from bowling_summary where bowlerName ='MohammedShami' group by bowlingTeam;
select bowlerName ,count(*) as matches, bowlingTeam , sum(runs) as runs ,sum(overs) as overs,sum(wickets) as wickettaken ,avg(economy) as economy , sum(4s) as 4s ,sum(6s) as 6s ,sum(4s+6s) as boundaries,sum(wides+noBalls) as extras from bowling_summary where bowlerName ='YuzvendraChahal' group by bowlingTeam;
select bowlerName ,count(*) as matches, bowlingTeam , sum(runs) as runs ,sum(overs) as overs,sum(wickets) as wickettaken ,avg(economy) as economy , sum(4s) as 4s ,sum(6s) as 6s ,sum(4s+6s) as boundaries ,sum(wides+noBalls) as extras from bowling_summary where bowlerName ='TrentBoult' group by bowlingTeam;
select bowlerName ,count(*) as matches, bowlingTeam , sum(runs) as runs ,sum(overs) as overs,sum(wickets) as wickettaken ,avg(economy) as economy , sum(4s) as 4s ,sum(6s) as 6s ,sum(4s+6s) as boundaries ,sum(wides+noBalls) as extras from bowling_summary where bowlerName ='JoshHazlewood' group by bowlingTeam;



#top 10 highest wicket taken
select bowlerName ,count(*) as matches, sum(wickets) as wickets_taken from bowling_summary group by bowlerName order by wickets_taken desc limit 10;

#top 20 highest wicket taken
select bowlerName ,count(*) as matches, sum(wickets) as wickets_taken from bowling_summary group by bowlerName order by matches desc limit 10 offset 10;

#top 10 most runs by bowler + extras 
select bowlerName ,count(*) as matches, sum(runs) as runs from bowling_summary group by bowlerName order by runs desc limit 10 ;
#top 10 bowler with most extras
select bowlerName ,count(*) as matches, sum(wides+noBalls) as extras from bowling_summary group by bowlerName order by extras desc limit 10 ;

#top 10 bowler with most boundaries
select bowlerName ,count(*) as matches, sum(4s+6s) as boundaries from bowling_summary group by bowlerName order by boundaries desc limit 10 ;



#top 10 best wicket take with ecomic runt rate
select bowlerName ,count(*) as matches, avg(economy) as economy from bowling_summary group by bowlerName order by matches desc limit 10;

#Top 10 best bowler  were economic run rate is less than 6
select bowlerName ,count(*) as matches, avg(economy) as economy from bowling_summary where economy <=6 group by bowlerName order by matches desc limit 10;

select * from bowling_summary;

# Rcb batsman
#top  10 best bowler 
select bowlerName ,count(*) as matchplayed ,sum(wickets) as wickets ,avg(economy) as economy ,sum(overs) as overs ,sum(runs) as totalruns ,sum(6s) as six,sum(4s) as four ,sum(4s+6s) as boundaries,sum(wides+noBalls) as extras  from bowling_summary where bowlingTeam ='RCB'group by bowlerName order by wickets desc limit 10;
#worst 10 best bowler
select bowlerName ,count(*) as matchplayed ,sum(wickets) as wickets ,avg(economy) as economy ,sum(overs) as overs ,sum(runs) as totalruns ,sum(6s) as six,sum(4s) as four ,sum(4s+6s) as boundaries,sum(wides+noBalls) as extras  from bowling_summary where bowlingTeam ='RCB'group by bowlerName order by wickets desc limit 10 offset 10;


# CSK batsman
#top  10 best bowler 
select bowlerName ,count(*) as matchplayed ,sum(wickets) as wickets ,avg(economy) as economy ,sum(overs) as overs ,sum(runs) as totalruns ,sum(6s) as six,sum(4s) as four ,sum(4s+6s) as boundaries,sum(wides+noBalls) as extras  from bowling_summary where bowlingTeam ='CSK'group by bowlerName order by wickets desc limit 10;
#worst 10 best bowler
select bowlerName ,count(*) as matchplayed ,sum(wickets) as wickets ,avg(economy) as economy ,sum(overs) as overs ,sum(runs) as totalruns ,sum(6s) as six,sum(4s) as four ,sum(4s+6s) as boundaries,sum(wides+noBalls) as extras  from bowling_summary where bowlingTeam ='CSK'group by bowlerName order by wickets desc limit 10 offset 10;

# MI batsman
#top  10 best bowler 
select bowlerName ,count(*) as matchplayed ,sum(wickets) as wickets ,avg(economy) as economy ,sum(overs) as overs ,sum(runs) as totalruns ,sum(6s) as six,sum(4s) as four ,sum(4s+6s) as boundaries,sum(wides+noBalls) as extras  from bowling_summary where bowlingTeam ='MI'group by bowlerName order by wickets desc limit 10;
#worst 10 best bowler
select bowlerName ,count(*) as matchplayed ,sum(wickets) as wickets ,avg(economy) as economy ,sum(overs) as overs ,sum(runs) as totalruns ,sum(6s) as six,sum(4s) as four ,sum(4s+6s) as boundaries,sum(wides+noBalls) as extras  from bowling_summary where bowlingTeam ='MI'group by bowlerName order by wickets desc limit 10 offset 10;

# KKR batsman
#top  10 best bowler 
select bowlerName ,count(*) as matchplayed ,sum(wickets) as wickets ,avg(economy) as economy ,sum(overs) as overs ,sum(runs) as totalruns ,sum(6s) as six,sum(4s) as four ,sum(4s+6s) as boundaries,sum(wides+noBalls) as extras  from bowling_summary where bowlingTeam ='KKR'group by bowlerName order by wickets desc limit 10;
#worst 10 best bowler
select bowlerName ,count(*) as matchplayed ,sum(wickets) as wickets ,avg(economy) as economy ,sum(overs) as overs ,sum(runs) as totalruns ,sum(6s) as six,sum(4s) as four ,sum(4s+6s) as boundaries,sum(wides+noBalls) as extras  from bowling_summary where bowlingTeam ='KKR'group by bowlerName order by wickets desc limit 10 offset 10;


# GT batsman
#top  10 best bowler 
select bowlerName ,count(*) as matchplayed ,sum(wickets) as wickets ,avg(economy) as economy ,sum(overs) as overs ,sum(runs) as totalruns ,sum(6s) as six,sum(4s) as four ,sum(4s+6s) as boundaries,sum(wides+noBalls) as extras  from bowling_summary where bowlingTeam ='GT'group by bowlerName order by wickets desc limit 10;
#worst 10 best bowler
select bowlerName ,count(*) as matchplayed ,sum(wickets) as wickets ,avg(economy) as economy ,sum(overs) as overs ,sum(runs) as totalruns ,sum(6s) as six,sum(4s) as four ,sum(4s+6s) as boundaries,sum(wides+noBalls) as extras  from bowling_summary where bowlingTeam ='GT'group by bowlerName order by wickets desc limit 10 offset 10;


#RR batsman
#top  10 best bowler 
select bowlerName ,count(*) as matchplayed ,sum(wickets) as wickets ,avg(economy) as economy ,sum(overs) as overs ,sum(runs) as totalruns ,sum(6s) as six,sum(4s) as four ,sum(4s+6s) as boundaries,sum(wides+noBalls) as extras  from bowling_summary where bowlingTeam ='RR'group by bowlerName order by wickets desc limit 10;
#worst 10 best bowler
select bowlerName ,count(*) as matchplayed ,sum(wickets) as wickets ,avg(economy) as economy ,sum(overs) as overs ,sum(runs) as totalruns ,sum(6s) as six,sum(4s) as four ,sum(4s+6s) as boundaries,sum(wides+noBalls) as extras  from bowling_summary where bowlingTeam ='RR'group by bowlerName order by wickets desc limit 10 offset 10;



#DC batsman
#top  10 best bowler 
select bowlerName ,count(*) as matchplayed ,sum(wickets) as wickets ,avg(economy) as economy ,sum(overs) as overs ,sum(runs) as totalruns ,sum(6s) as six,sum(4s) as four ,sum(4s+6s) as boundaries,sum(wides+noBalls) as extras  from bowling_summary where bowlingTeam ='DC'group by bowlerName order by wickets desc limit 10;
#worst 10 best bowler
select bowlerName ,count(*) as matchplayed ,sum(wickets) as wickets ,avg(economy) as economy ,sum(overs) as overs ,sum(runs) as totalruns ,sum(6s) as six,sum(4s) as four ,sum(4s+6s) as boundaries,sum(wides+noBalls) as extras  from bowling_summary where bowlingTeam ='DC'group by bowlerName order by wickets desc limit 10 offset 10;


#PK batsman
#top  10 best bowler 
select bowlerName ,count(*) as matchplayed ,sum(wickets) as wickets ,avg(economy) as economy ,sum(overs) as overs ,sum(runs) as totalruns ,sum(6s) as six,sum(4s) as four ,sum(4s+6s) as boundaries,sum(wides+noBalls) as extras  from bowling_summary where bowlingTeam ='PK'group by bowlerName order by wickets desc limit 10;
#worst 10 best bowler
select bowlerName ,count(*) as matchplayed ,sum(wickets) as wickets ,avg(economy) as economy ,sum(overs) as overs ,sum(runs) as totalruns ,sum(6s) as six,sum(4s) as four ,sum(4s+6s) as boundaries,sum(wides+noBalls) as extras  from bowling_summary where bowlingTeam ='PK'group by bowlerName order by wickets desc limit 10 offset 10;


#LSG batsman
#top  10 best bowler 
select bowlerName ,count(*) as matchplayed ,sum(wickets) as wickets ,avg(economy) as economy ,sum(overs) as overs ,sum(runs) as totalruns ,sum(6s) as six,sum(4s) as four ,sum(4s+6s) as boundaries,sum(wides+noBalls) as extras  from bowling_summary where bowlingTeam ='LSG'group by bowlerName order by wickets desc limit 10;
#worst 10 best bowler
select bowlerName ,count(*) as matchplayed ,sum(wickets) as wickets ,avg(economy) as economy ,sum(overs) as overs ,sum(runs) as totalruns ,sum(6s) as six,sum(4s) as four ,sum(4s+6s) as boundaries,sum(wides+noBalls) as extras  from bowling_summary where bowlingTeam ='LSG'group by bowlerName order by wickets desc limit 10 offset 10;

#SRH batsman
#top  10 best bowler 
select bowlerName ,count(*) as matchplayed ,sum(wickets) as wickets ,avg(economy) as economy ,sum(overs) as overs ,sum(runs) as totalruns ,sum(6s) as six,sum(4s) as four ,sum(4s+6s) as boundaries,sum(wides+noBalls) as extras  from bowling_summary where bowlingTeam ='SRH'group by bowlerName order by wickets desc limit 10;
#worst 10 best bowler
select bowlerName ,count(*) as matchplayed ,sum(wickets) as wickets ,avg(economy) as economy ,sum(overs) as overs ,sum(runs) as totalruns ,sum(6s) as six,sum(4s) as four ,sum(4s+6s) as boundaries,sum(wides+noBalls) as extras  from bowling_summary where bowlingTeam ='SRH'group by bowlerName order by wickets desc limit 10 offset 10;
