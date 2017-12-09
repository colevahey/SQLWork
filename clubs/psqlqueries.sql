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

copy classes from '/Users/ColeV/Skilstak/SQLWork/clubs/classes.csv' (format csv, header True);
copy haircolors from '/Users/ColeV/Skilstak/SQLWork/clubs/haircolors.csv' (format csv, header True);
copy basicinfo from '/Users/ColeV/Skilstak/SQLWork/clubs/basicinfo.csv' (format csv, header True);

/*Insert queries*/
insert into basicinfo values (
  1020, 
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

/*Update query*/
update basicinfo set email = 'rcvahey01@gmail.com' where email = 'rvahey@student.csdspartans.org'; 

/*Join query*/
select firstname, classes.class from basicinfo inner join classes on basicinfo.favoriteclass = classes.cid where basicinfo.favoriteclass = 21;

select firstname, haircolors.color from basicinfo inner join haircolors on basicinfo.haircolor = haircolors.colorid where basicinfo.haircolor = 3;

/*Select query*/
/*select * from basicinfo;*/
