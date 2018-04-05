SELECT name AS Game,
CASE when hour(start) < 11 then 'Morning'
     when hour(start) < 18 then 'Afternoon'
     when hour(start) < 24 then 'Evening'
END AS 'Part of the day',
CASE when duration <=3 then 'Extra Short'
      when duration <= 6 then 'Short'
      when duration <= 10 then 'Long'
      else 'Extra Long' END AS 'Duration'
FROM games;
