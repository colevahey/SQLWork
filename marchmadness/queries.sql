-- Select all games from 1993
-- select * from tournamentscores where year = 1993
 
-- Insert into the table a new game between CSD and PLP
insert into tournamentscores values (2035,1,1,'West',1,132,'Community School of Davidson','Pine Lake Prep',36,16);

-- Update query which will change the year to 2045 from 2035
update tournamentscores set year = 2045 where year = 2035;

-- Delete our extra game that was added in the year 2035
delete from tournamentscores where year = 2045;

-- Update query to make all the first scores the winner
-- score for future queries
update tournamentscores set (seed1,score1,team1,team2,score2,seed2) = (seed2,score2,team2,team1,score1,seed1) where (score2 > score1); 

-- *****************- SYNTAX FOR A JOIN -*********************
-- select (all columns) from (first table) inner join (second
  -- table) on (conditional)

-- Simple join of teams with their mascots
select team1, mascot from tournamentscores inner join mascots on team1 = team;

-- Larger join query
-- Joins the winner of the national championship game 
-- with its mascot from a different table. Limit the 
-- join to the first 20 games of the tournamentscores 
-- dataset. Also recognize the abbreviations for 
-- tournamentscores and mascots
select year, seed1, team1, mascot from tournamentscores ts inner join mascots m on (ts.team1 = m.team) where (round = 6) order by year asc limit 20;

\echo 'Average score all time from the NCAA championship game'
select round(avg(score1)) "Winner Score", round(avg(score2)) "Loser Score" from tournamentscores where (round = 6);

-- Average score of all games all time from the tournament
select round(avg((score1+score2)/2)) "Average Score All time" from tournamentscores;

-- Find all the double digit seeds which have reached the
-- final four
select year, regionname, team2, score2, score1, team1 from tournamentscores where ((seed1 > 9 or seed2 > 9) and round = 5) order by year desc;

-- Highest seeded teams to lose in the first round
select year, round, seed2, team2, score2, score1, team1, seed1 from tournamentscores where round = 1 order by seed1 desc limit 10;

-- How many 12-5 upsets have happened all time 
select count(*) "12-5 Upsets" from tournamentscores where round = 1 and seed1 = 12;
-- How many years recorded in this database
select count(distinct year) "Number of years" from tournamentscores;

-- Recreate the table with original values
drop table tournamentscores;
create table tournamentscores(
  Year integer NOT NULL,
  Round integer NOT NULL,
  RegionNumber integer NOT NULL,
  RegionName varchar(15) NOT NULL,
  Seed1 integer NOT NULL,
  Score1 integer NOT NULL,
  Team1 varchar(30) NOT NULL,
  Team2 varchar(30) NOT NULL,
  Score2 integer NOT NULL,
  Seed2 integer NOT NULL
);

copy tournamentscores from '/Users/colev/homework/Skilstak/data/SQLWork/marchmadness/data.csv' (format csv, header True);

drop table mascots;
create table mascots(
  Team varchar(30) NOT NULL,
  Mascot varchar(30) NOT NULL
);

copy mascots from '/Users/colev/homework/Skilstak/data/SQLWork/marchmadness/nicknames.csv' (format csv, header True);
