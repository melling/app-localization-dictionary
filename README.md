# App Localization Dictionary


A database of common words and expressions used in mobile applicatons

The goal of this project is to create a small database of 2000-3000 common words and expressions, along with supporting
scripts (e.g. Python, SQL) so that mobile developers can more easily international their apps.  It shouldn't be too difficult,
for example, to read the iOS Base.lproj/Localize.strings, MainStoryboard_iPad.strings, and MainStoryboard_iPhone.strings files
and generate the appropriate files for all the languages in the database.

I'm the author of several iOS language learning apps (http://www.h4labs.com) and I already have a database from which I can seed some of the words, and I'll be expanding over time.  However, I think the project will go much quicker if native speakers contribute to 
database.  I can add other languages, of course.  The goal is to allow everyone to write once and ship everywhere.

[Google Spreadsheet](https://docs.google.com/spreadsheet/ccc?key=0ArVkFagUZg7bdHB0MTNuMDJySGpnazFpWVZMVUVVNmc&usp=sharing)

## MySql Quickstart

```

cd mysql/tbl
mysql --user=h4labs --password=nopassword database < app_localization_dictonary.tbl; # Create table

mysql --user=h4labs --password=nopassword database; # Enter MySql
-- Load data
LOAD DATA local INFILE "../../data/AppLocalization.tsv" INTO TABLE app_localization_dictionary FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n';

delete from app_localization_dictionary where id = 0; -- Delete the header

select *
from app_localization_dictionary al;
```

## sqlite3 Quickstart

```

```

