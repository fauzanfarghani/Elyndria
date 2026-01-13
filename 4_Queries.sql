-- 4_Queries.sql

-- 1. Display PlayerName and Characters Owned...
SELECT 
    p.PlayerName, 
    COUNT(gd.CharacterID) AS "Characters Owned"
FROM Player p
JOIN GachaHeader gh ON p.PlayerID = gh.PlayerID
JOIN GachaDetail gd ON gh.GachaID = gd.GachaID
WHERE p.PlayerGender = 'Male' 
  AND STRFTIME('%Y', p.PlayerDOB) < '2000'
GROUP BY p.PlayerID, p.PlayerName;


-- 2. Display PlayerName, Player Number...
SELECT 
    p.PlayerName,
    'Player' || SUBSTR(p.PlayerID, -3) AS "Player Number",
    SUM(pb.PrimogemCount * td.Qty) AS "Total Primogems Bought"
FROM Player p
JOIN TopupHeader th ON p.PlayerID = th.PlayerID
JOIN TopupDetail td ON th.TopupID = td.TopupID
JOIN PrimogemBundle pb ON td.PrimogemBundleID = pb.PrimogemBundleID
WHERE STRFTIME('%Y', th.TopupDate) = '2022'
  AND pb.PrimogemBundlePrice < 100000
GROUP BY p.PlayerID, p.PlayerName;


-- 3. Display PlayerName, Email...
SELECT 
    p.PlayerName,
    REPLACE(p.PlayerEmail, '@gemzhin.com', '@gmail.com') AS Email,
    COUNT(gd.CharacterID) || ' characters' AS "Total Characters",
    MAX(c.CharacterLevel) AS "Highest Star"
FROM Player p
JOIN GachaHeader gh ON p.PlayerID = gh.PlayerID
JOIN GachaDetail gd ON gh.GachaID = gd.GachaID
JOIN Character c ON gd.CharacterID = c.CharacterID
WHERE p.PlayerName LIKE '% %'
GROUP BY p.PlayerID, p.PlayerName
HAVING COUNT(gd.CharacterID) > 3;


-- 4. Display PlayerName, Topup Count...
SELECT 
    p.PlayerName,
    COUNT(th.TopupID) || ' times' AS "Topup Count",
    MIN(pb.PrimogemBundlePrice) AS "Cheapest Bundle Bought"
FROM Player p
JOIN TopupHeader th ON p.PlayerID = th.PlayerID
JOIN TopupDetail td ON th.TopupID = td.TopupID
JOIN PrimogemBundle pb ON td.PrimogemBundleID = pb.PrimogemBundleID
WHERE STRFTIME('%m', p.PlayerDOB) = '04'
GROUP BY p.PlayerID, p.PlayerName
HAVING COUNT(th.TopupID) > 1;


-- 5. Display PlayerName, Gacha Number...
SELECT 
    p.PlayerName,
    'Gacha-' || SUBSTR(gh.GachaID, 3) AS "Gacha Number",
    gh.GachaDate
FROM Player p
JOIN GachaHeader gh ON p.PlayerID = gh.PlayerID
JOIN GachaBundle gb ON gh.GachaBundleID = gb.GachaBundleID
JOIN GachaDetail gd ON gh.GachaID = gd.GachaID
JOIN Character c ON gd.CharacterID = c.CharacterID
WHERE gb.GachaCount < 8
GROUP BY gh.GachaID, p.PlayerName, gh.GachaDate
HAVING COUNT(DISTINCT c.ElementID) >= 2
ORDER BY gh.GachaDate DESC;


-- 6. Display PlayerName, Phone Number...
SELECT 
    p.PlayerName,
    p.PlayerPhone AS "Phone Number",
    SUBSTR(p.PlayerEmail, 1, INSTR(p.PlayerEmail, '@') - 1) AS "Email Name"
FROM Player p
JOIN TopupHeader th ON p.PlayerID = th.PlayerID
JOIN TopupDetail td ON th.TopupID = td.TopupID
JOIN PrimogemBundle pb ON td.PrimogemBundleID = pb.PrimogemBundleID
WHERE p.PlayerGender = 'Female'
  AND pb.PrimogemBundlePrice = (SELECT MIN(PrimogemBundlePrice) FROM PrimogemBundle);


-- 7. Display PlayerName, Total Spend...
SELECT 
    p.PlayerName,
    SUM(pb.PrimogemBundlePrice * td.Qty) AS "Total Spend"
FROM Player p
JOIN TopupHeader th ON p.PlayerID = th.PlayerID
JOIN TopupDetail td ON th.TopupID = td.TopupID
JOIN PrimogemBundle pb ON td.PrimogemBundleID = pb.PrimogemBundleID
WHERE STRFTIME('%Y', p.PlayerDOB) > '2000'
GROUP BY p.PlayerID, p.PlayerName
HAVING "Total Spend" >= (
    SELECT AVG(TotalSpendPerPlayer)
    FROM (
        SELECT SUM(pb2.PrimogemBundlePrice * td2.Qty) as TotalSpendPerPlayer
        FROM TopupHeader th2
        JOIN TopupDetail td2 ON th2.TopupID = td2.TopupID
        JOIN PrimogemBundle pb2 ON td2.PrimogemBundleID = pb2.PrimogemBundleID
        GROUP BY th2.PlayerID
    )
)
ORDER BY "Total Spend" ASC;


-- 8. Display PlayerName, Birth Month...
SELECT 
    p.PlayerName,
    CASE STRFTIME('%m', p.PlayerDOB)
        WHEN '01' THEN 'January'
        WHEN '02' THEN 'February'
        WHEN '03' THEN 'March'
        WHEN '04' THEN 'April'
        WHEN '05' THEN 'May'
        WHEN '06' THEN 'June'
    END AS "Birth Month"
FROM Player p
WHERE STRFTIME('%m', p.PlayerDOB) BETWEEN '01' AND '06'
AND NOT EXISTS (
    SELECT 1 
    FROM GachaHeader gh
    JOIN GachaBundle gb ON gh.GachaBundleID = gb.GachaBundleID
    WHERE gh.PlayerID = p.PlayerID
      AND (
          gb.GachaBundlePrice = (SELECT MIN(GachaBundlePrice) FROM GachaBundle)
          OR 
          gb.GachaBundlePrice = (SELECT MAX(GachaBundlePrice) FROM GachaBundle)
      )
);


-- 9. Create View 'ViewGachaData'.
DROP VIEW IF EXISTS ViewGachaData;
CREATE VIEW ViewGachaData AS
SELECT 
    p.PlayerName,
    COUNT(gh.GachaID) AS "GachaCount",
    CAST(JULIANDAY('now') - JULIANDAY(MAX(gh.GachaDate)) AS INT) AS "Days Since Last Gacha"
FROM Player p
JOIN GachaHeader gh ON p.PlayerID = gh.PlayerID
GROUP BY p.PlayerID, p.PlayerName
HAVING COUNT(gh.GachaID) > 1 
   AND (JULIANDAY('now') - JULIANDAY(MAX(gh.GachaDate))) < 300;

SELECT * FROM ViewGachaData;


-- 10. Create View 'ViewShopData'.
DROP VIEW IF EXISTS ViewShopData;
CREATE VIEW ViewShopData AS
SELECT 
    s.ShopName,
    SUM(pb.PrimogemBundlePrice * td.Qty) AS "Total Profit",
    COUNT(DISTINCT th.PlayerID) AS "Total Player Served"
FROM Shop s
JOIN TopupHeader th ON s.ShopID = th.ShopID
JOIN TopupDetail td ON th.TopupID = td.TopupID
JOIN PrimogemBundle pb ON td.PrimogemBundleID = pb.PrimogemBundleID
WHERE STRFTIME('%m', th.TopupDate) BETWEEN '01' AND '03'
  AND s.ShopName NOT LIKE '% %'
GROUP BY s.ShopID, s.ShopName;

SELECT * FROM ViewShopData;
