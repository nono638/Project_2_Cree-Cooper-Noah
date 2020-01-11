select 
imdb.genre
,round(Avg(((rotten.tomatometer_rating + (imdb.avg_vote * 10)) /2)),2) as "Project Score"					

from imdb
inner JOIN rotten
ON imdb.yeartitle = rotten.yeartitle

where strpos('Comedy', imdb.genre) > 0
or strpos('Action', imdb.genre) > 0
or strpos('Sci-Fi', imdb.genre) > 0
or strpos('Fantasy', imdb.genre) > 0
or strpos('Drama', imdb.genre) > 0
or strpos('Biography', imdb.genre) > 0
or strpos('Crime', imdb.genre) > 0
or strpos('Western', imdb.genre) > 0
or strpos('Adventure', imdb.genre) > 0
or strpos('Animation', imdb.genre) > 0
or strpos('Music', imdb.genre) > 0
or strpos('Mystery', imdb.genre) > 0
or strpos('History', imdb.genre) > 0
or strpos('War', imdb.genre) > 0
or strpos('Family', imdb.genre) > 0
or strpos('Thriller', imdb.genre) > 0
or strpos('Romance', imdb.genre) > 0
or strpos('Sport', imdb.genre) > 0
or strpos('Horror', imdb.genre) > 0

group by imdb.genre
order by "Project Score" desc


