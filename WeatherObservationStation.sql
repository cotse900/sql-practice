--5
SELECT city, LENGTH(city)
FROM STATION
ORDER BY LENGTH(city) ASC, city ASC
LIMIT 1;

SELECT city, LENGTH(city)
FROM STATION
ORDER BY LENGTH(city) DESC, city ASC
LIMIT 1;
--6
select city from station where city like 'A%' or city like 'E%'
or city like 'I%' or city like 'O%' or city like 'U%'
--7
select distinct city from station where city like '%a' or city like '%e'
or city like '%i' or city like '%o' or city like '%u'
--8
select distinct city from station
where lower(left(city, 1)) in ('a', 'e', 'i', 'o', 'u')
and lower(right(city, 1)) in ('a', 'e', 'i', 'o', 'u')
--9
select distinct city from station
where LOWER(LEFT(CITY, 1)) not in ('a', 'e', 'i', 'o', 'u')
--10
select distinct city from station
where LOWER(right(CITY, 1)) not in ('a', 'e', 'i', 'o', 'u')
--11
select distinct city from station
where LOWER(left(CITY, 1)) not in ('a', 'e', 'i', 'o', 'u')
or LOWER(right(CITY, 1)) not in ('a', 'e', 'i', 'o', 'u')
--12
select distinct city from station
where LOWER(left(CITY, 1)) not in ('a', 'e', 'i', 'o', 'u')
and LOWER(right(CITY, 1)) not in ('a', 'e', 'i', 'o', 'u')
