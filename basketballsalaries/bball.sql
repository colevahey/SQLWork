create table salaries (
  SID integer PRIMARY KEY,
  RK integer NOT NULL,
  Player varchar(30) NOT NULL,
  TEAM varchar(40) NOT NULL,
  SALARY money NOT NULL
);

copy salaries from '/Users/colev/homework/Skilstak/data/SQLWork/basketballsalaries/salaries.csv' (format csv, header True);

select * from salaries where TEAM='Chicago Bulls';
