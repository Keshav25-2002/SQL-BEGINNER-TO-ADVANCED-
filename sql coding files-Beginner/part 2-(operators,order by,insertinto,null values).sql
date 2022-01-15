#and displays recordds if all conditions seperated by and are true 
select*from spotify_music where acousticness=0.147 and energy=0.639;
#or= if nay one of the condition seperated by or is true 
select*from spotify_music where acousticness=0.147 or acousticness=0.669;
#not :
select*from spotify_music where not acousticness=0.669;
#and ,or,not :
select*from spotify_music where track_number=2 and(energy=0.4 or energy=0.815) and not acousticness=0.308;
#oder by: used to sort resukts in either aasc or desc order . "desc"->while using descending order ..default->ascending 
#asc: 
select*from spotify_music order by tempo;
#desc 
select*from spotify_music order by tempo desc;
#both asc and ddesc:
select*from spotify_music order by liveness asc,acousticness desc;
#insert into :
insert into spotify_music (danceability,liveness,loudness,energy) values(0.85,0.02487,0.1534,-5.500);
#null values is a field wioth no value 
#isnull: used to test for empty values 
select energy from spotify_music where energy is null;
#not null : use to test for non empty values 
select tempo from spotify_music where tempo is not null;
