--  1) Prepare a SQL query to show domestic and international sales for each game.

SELECT Games.title, Downloads.domestic_sales_total, Downloads.international_sales_total
FROM Games
JOIN Downloads
ON Games.id = Downloads.game_id;

--  2) Find and show the number of sales for each game that did better internationally rather than domestically.

SELECT Games.title, Downloads.domestic_sales_total, Downloads.international_sales_total
FROM Games
JOIN Downloads
ON Games.id = Downloads.game_id
WHERE Downloads.domestic_sales_total < Downloads.international_sales_total;

--  3) Display a list of all games sorting by their raitings in descending order.

SELECT Games.title, Downloads.rating
FROM Games
JOIN Downloads
ON Games.id = Downloads.game_id
ORDER BY rating DESC;