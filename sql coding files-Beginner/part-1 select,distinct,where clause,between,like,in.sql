use sql_practice;
select*from spotify_music;
select track_number,energy from spotify_music;
#distinct:used to return different/unique value 
select distinct liveness,tempo from spotify_music;
select distinct popularity from spotify_music;
#where clause : used to filter records 
select *from spotify_music where popularity>50;
select*from spotify_music where danceability>0.400;
#between : 
select*from spotify_music where energy between 0.60 and 0.70;
#like :useed to search for specific pattern
select*from spotify_music where album like 'M%';
select*from spotify_music where album like'%r';
#in : used to speeicfy multiple possible values for a column 
select*from spotify_music where acousticness in(0.147,0.898);
  