use football;
select * from player;

-- Count the total number of players involved in home club

Select home_club_name,COUNT(player_name_x) as total_players from player
group by 1
order by 2 desc
limit 10;

-- Analyze the top 10 players have highest number of goals in all competitions

select player_name_x, sum(goals) as total_goals
from player
group by 1
order by 2 desc
limit 10;

--  Identify the player who are play in international_cup matches with their Avgerage goals scored 

select player_name_x, avg(goals) AS Avg_goals
from player
where competition_type = 'international_cup'
group by 1
order by 2 desc;

-- Identify the top 10 stadium with the avg attendance in domestic league matches

select stadium, avg(attendance) as avg_attendance
from football
where competition_type = 'domestic_league'
group by stadium
order by avg_attendance desc
limit 10;