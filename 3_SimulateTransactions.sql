-- 3_SimulateTransactions.sql

-- Simulate a Topup Transaction
-- Player 'Aether Star' (PL001) buys a PrimogemBundle (PB003) from 'Mondstadt General Goods' (SH001) on '2023-05-20'
INSERT INTO TopupHeader (TopupID, PlayerID, ShopID, TopupDate) 
VALUES ('TO016', 'PL001', 'SH001', '2023-05-20');

INSERT INTO TopupDetail (TopupID, PrimogemBundleID, Qty) 
VALUES ('TO016', 'PB003', 1);


-- Simulate a Gacha Transaction
-- Player 'Aether Star' (PL001) does a 10-pull (GB002) resulting in 10 items.
-- Assuming we interpret "simulate" as inserting the record of the gacha happening.
INSERT INTO GachaHeader (GachaID, PlayerID, GachaBundleID, GachaDate) 
VALUES ('GH016', 'PL001', 'GB002', '2026-01-01');

-- Inserting 10 details (simulating results)
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH016', 'CH001'); -- Diluc
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH016', 'CH010'); -- Bennett
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH016', 'CH011'); -- Xingqiu
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH016', 'CH012'); -- Xiangling
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH016', 'CH013'); -- Fischl
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH016', 'CH014'); -- Barbara
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH016', 'CH015'); -- Noelle
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH016', 'CH016'); -- Sucrose
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH016', 'CH017'); -- Chongyun
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH016', 'CH002'); -- Jean (Lucky!)
