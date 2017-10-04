drop table basicinfo;
drop table classes;
drop table haircolors;

create table classes (
  cID integer PRIMARY KEY,
  class varchar(20) NOT NULL
);

create table haircolors (
  colorID integer PRIMARY KEY,
  color varchar(20) NOT NULL
);

create table basicinfo (
  UID integer PRIMARY KEY,
  firstname varchar(20) NOT NULL,
  lastname varchar(20) NOT NULL,
  age integer NOT NULL,
  grade integer NOT NULL,
  email varchar(35) NOT NULL,
  favoriteclass integer NOT NULL references classes(cID),
  hashomework boolean NOT NULL,
  sixwordstory varchar(40),
  haircolor integer NOT NULL references haircolors(colorID),
  schoologyusername varchar(20) NOT NULL,
  year varchar(10) NOT NULL
);

copy classes from '/Users/ColeV/Skilstak/data/SQLWork/classes.csv' (format csv, header 1);
copy haircolors from '/Users/ColeV/Skilstak/data/SQLWork/haircolors.csv' (format csv, header 1);
copy basicinfo from '/Users/ColeV/Skilstak/data/SQLWork/basicinfo.csv' (format csv, header 1);

insert into basicinfo values (
  1021, 
  'Test', 
  'SQL', 
  16, 
  11, 
  'testersql@gmail.com', 
  22, 
  True, 
  'My six word story is interesting', 
  2, 
  'tsql',	
  'Junior'
);

select * from basicinfo;
