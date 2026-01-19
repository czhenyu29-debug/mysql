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
