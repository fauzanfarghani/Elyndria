-- debug_query7.sql
SELECT 
    p.PlayerID,
    p.PlayerName,
    STRFTIME('%Y', p.PlayerDOB) as BirthYear,
    SUM(pb.PrimogemBundlePrice * td.Qty) AS TotalSpend
FROM Player p
JOIN TopupHeader th ON p.PlayerID = th.PlayerID
JOIN TopupDetail td ON th.TopupID = td.TopupID
JOIN PrimogemBundle pb ON td.PrimogemBundleID = pb.PrimogemBundleID
GROUP BY p.PlayerID, p.PlayerName;

SELECT AVG(TotalSpendPerPlayer) as AverageSpend
FROM (
    SELECT SUM(pb2.PrimogemBundlePrice * td2.Qty) as TotalSpendPerPlayer
    FROM TopupHeader th2
    JOIN TopupDetail td2 ON th2.TopupID = td2.TopupID
    JOIN PrimogemBundle pb2 ON td2.PrimogemBundleID = pb2.PrimogemBundleID
    GROUP BY th2.PlayerID
);
