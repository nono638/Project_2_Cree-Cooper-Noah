					1/11/2020
	Project 2
	Noah Collin, Cree Han, Cooper Robinson

Objective:	Using IMDB and Rotten Tomatoes
datasets from kaggle.com,  calculated a blended
average of the TomatoMeter and IMDB ratings of
given American films from 1970 to present day.
See the Results.png file to see our results.


Extract: 
1)  used the IMDb movies.csv and rotten_tomatoes_movies.csv from kaggle.com.

Transform:
1) pandas: 
On both datasets:
-  kept the nessecary columns
-  elected to only use films from the U.S.
-  decided to only use films released during or after 1970
- Basic Data cleansing: Data type casting, null removal, duplicate removal, column renaming, 
-  created a unique identifier, "yeartitle", concatenating the year of release and title of films



Load (from pandas to Postgres SQL via SQLalchemy): 
-  Created two empty tables in Postgres named rotten and imdb
-  connected to the local database
- table initialization an structuring
-  checked for tables' completeness


Transform, part 2, SQL:
-  joined rotten and IMDB tables 
-  wrote script to aggregate average of each table's review score, grouped by genre and ordered in descending order


As for our results, music was the highest scoring genre and Animation was the lowest scoring genre
