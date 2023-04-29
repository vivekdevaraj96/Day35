-- use imdb

-- select * from movies


-- use imdb

-- insert into movies(Title,poster,Director,Producer,Music,ReleaseYear) values('Viduthalai Part-1',load_file('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Viduthalai.jpg'),'Vetrimaaran','Elred Kumar','Ilaiyaraaja','2023-05-23')

-- insert into movies(Title,poster,Director,Producer,Music,ReleaseYear) values('Ponniyin Selvan: Part Two',load_file('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PS2.jpg'),'Mani Ratnam','Syed Zaid Ali, Zohaib Ali, Kartik R. Iyer','
-- A.R. Rahman','2023-04-28');

-- select * from movies;

-- delete from movies where id=2

-- insert into movies(Title,poster,Director,Producer,Music,ReleaseYear) values('Leo',load_file('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Leo.jpg'),'Lokesh Kanagaraj','Lalit Kumar','Anirudh Ravichander','2023-11-12');

-- select * from moviecast

-- insert into moviecast(ActorName,skills) values('Soori','actor,comedian'),
-- ('Vijay Sethupathi','actor'),('Bhavani Sre','actress'),('Gautham Vasudev Menon','Director,actor'),
-- ('Vikram','actor'),('Karthi','actor'),('Jayam Ravi','actor'),('Aishwarya Rai Bachchan','actress'),('Trisha Krishnan','actress'),
-- ('Joseph Vijay','actor'),('Sanjay Dutt','actor')

-- select * from moviecast

-- select * from movies_moviecast;

-- insert into movies_moviecast values(1,1),(1,2),(1,3),(1,4),(3,5),(3,6),(3,7),(3,8),(3,9),(4,9),(4,10),(4,11)

-- SELECT * FROM imdb.reviewsandrating;

-- insert into reviewsandrating(Reviewer1,Reviewer2,Rating) values('V.Good','Good',9.5),('Average','Good',8),(Null,Null,Null)

-- select * from movies_reviewsandrating;

-- insert into movies_reviewsandrating values(1,1),(3,2),(4,3)
