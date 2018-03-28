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
