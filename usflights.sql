SELECT COUNT(*) AS total FROM flights;
SELECT Origin, AVG(ArrDelay) AS prom_arribades, AVG(DepDelay) AS prom_sortides FROM flights GROUP BY Origin;
SELECT origin, colYear, colMonth, AVG(ArrDelay) AS prom_arribades FROM flights GROUP BY origin, colYear, colMonth ORDER BY origin, colYear, colMonth;
SELECT City, colYear, colMonth, AVG(ArrDelay) AS prom_arribades FROM flights INNER JOIN usairports ON flights.Origin = usairports.IATA GROUP BY City, colYear, colMonth ORDER BY City, colYear, colMonth;
SELECT UniqueCarrier, colYear, colMonth, SUM(Cancelled) AS total_cancelled FROM flights GROUP BY UniqueCarrier, colYear, colMonth ORDER BY total_cancelled DESC;
SELECT TailNum, SUM(Distance) AS totalDistance FROM flights WHERE TailNum != "" GROUP BY TailNum ORDER BY totalDistance DESC LIMIT 10;
SELECT UniqueCarrier, AVG(ArrDelay) AS avgDelay FROM flights GROUP BY UniqueCarrier HAVING avgDelay > 10 ORDER BY avgDelay DESC; 