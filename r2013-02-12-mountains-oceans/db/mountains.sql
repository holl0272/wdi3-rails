CREATE TABLE mountains
(
  id serial4 primary key,
  name varchar(255),
  image text,
  height float8,
  range varchar(255),
  parent varchar(255),
  ascents int2
);