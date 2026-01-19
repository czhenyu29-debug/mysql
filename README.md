# NBA Player Analysis (1996-2022)

## 🏀Project Overview
People always engage in endless debates over who is the greatest of all time (GOAT) in basketball. This project takes a data-driven approach. Using MySQL, I analyzed over 12,000 NBA player-season records from 1996-2022 to explore performance trends, compare players' size across eras, and identify who should win the MVP award based on statistics rather than hype.

## 🎯Objectives
1. Identify season leaders in scoring, rebounding, and playmaking.

2. Compare players'height and weight across four eras: 1990s, 2000s, 2010, and 2020s.

3. Determine who played the most games in a single season from 1996 to 2022.

4. Use a weighted performance index to identify who deserves the MVP crown.

## 🧠 Skills
- Exploratory data analysis (EDA)
- Data inspection and cleaning
- Window functions **(RANK, ROW_NUMBER, PARTITION BY**)
- **CTEs** and **subqueries**
- **Joins** and **aggregations**
- **CASE** statements for categorization
- Database design & data import (CSV → MySQL)

## 🧹 Data Cleaning
- Draft-related columns (**draft_year, draft_round, draft_number**) were cast to integers.
- Duplicates were checked, and none were found.
- Filtered out incomplete player records (NULL college values)
- Structured data by season to enable fair rankings

## 📊 Key Insights
1. **Player Performance Trends**
- The dataset shows that the top player in each statistical category changes from season to season, highlighting how player performance and team roles evolve.

- **Players with the Most Appearances**:
  - **Scroing**: Allen Iverson (1998, 2000, 2001, 2004), Kevin Durant (2009, 2010, 2011, 2013)
  - **Rebounding**: Kevin Garrett (2003, 2004, 2005, 2006), Dwight Howard (2007, 2008, 2009, 2011), Andre Drummond (2015, 2017, 2018, 2019)
  - **Assists**: Jason Kidd (1998, 1999, 2000, 2002, 2003), Steve Nash (2004, 2005, 2006, 2009, 2010), Chris Paul (2007, 2008, 2013, 2014, 2021)

2. **Player Longevity & Games Played by Era**
- **Size Evolution**:
  - Average height and weight peaked in the 2010s (202.8 cm, 103.28 kg) and declined gradually to (198 cm, 94.61 kg) in the 2020s.
-  **Career Longevity Leaders**:
  - Shareef Abdur-Rahim recorded the highest number of games played in a single season (85 games) in the 2003-2004 season, and Charlie Ward played the fewest games (50 games) in the 1998-1999 season. Notably, Dillon Brooks is the only non - U.S. player to lead in single-season games played (73 games) during the 2019-2020 season.
