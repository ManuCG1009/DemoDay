-- 1 obten el nombre de todos los jugadores
use ligainglesa;
select full_name from jugadores;

-- 2 obten el nombre, posición y edad de todos los jugadores
use ligainglesa;
select full_name, age, position from jugadores;

-- 3 obten el  posición y edad de todos los jugadores cuya posicion sea distinta de defensor
use ligainglesa;
select full_name, age, position from jugadores
where position <> 'defender';

-- 4 Dentro de la tabla partidos obtener el total de goles de la jornada tres
use ligainglesa;
select sum(total_goal_count) as 'TotalGoles' from partidos
where Game_Week = 3;

-- 5 Dentro de la tabla jugadores obtener el nombre, país y cantidad de goles de los 5 jugadores con mas goles
select full_name, nationality, goals_overall as Goles_totales from jugadores
order by goals_overall desc limit 5;

-- 6 Dentro de la tabla partidos obtener el referi de todos los partidos de la jornada 5
select referee from partidos
where Game_Week = 5;

-- 7. Dentro de la tabla jugadores, obten el nombre de jugados, goles y minutos jugados los jugadores cuyo nombre empiece con A.
select full_name, minutes_played_overall, goals_overall, position from jugadores
where full_name like 'a%';

-- 8. Dentro de la tabla jugadores, obten el nombre de jugados, goles y minutos jugados los jugadores cuyo nombre incluya la cadena on.
select full_name, minutes_played_overall, goals_overall, position from jugadores
where full_name like '%on%';

-- 9. dentro de la tabla partidos obtener el total de goles de cada jornada
select Game_Week, sum(total_goal_count) as Total from partidos
group by Game_Week;

-- 10. dentro de la tabla partidos obtener el total de tarjetas rojas de todo el torneo
select  sum(home_team_red_cards) + sum(away_team_red_cards) as totalRojas from partidos;

-- 11. selecciona el maximo y minimo de asistencia en cada estadio
select stadium_name, max(attendance) as Mayor, min(attendance) as Menor from partidos
group by stadium_name;

-- 12. indica el promedio de asistencia de la semana 5
select avg(attendance) as PromedioAsistencia from partidos
where game_week = 5;

-- 13. muestra ls paises de origen de cada equipo
select common_name, country from equipo;

-- 14. Porcentaje de goles por semana 
select avg(total_goal_count) from  partidos 
group by game_week;

-- 15.  5 Equips local con mayor cantidad de tiros a gol
select sum(home_team_shots) as tiros, home_team_name  from partidos
group by home_team_name
order by home_team_shots desc
limit 5;


