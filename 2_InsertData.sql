-- 2_InsertData.sql

-- ElementType
INSERT INTO ElementType (ElementID, ElementName) VALUES ('ET001', 'Pyro');
INSERT INTO ElementType (ElementID, ElementName) VALUES ('ET002', 'Hydro');
INSERT INTO ElementType (ElementID, ElementName) VALUES ('ET003', 'Cryo');
INSERT INTO ElementType (ElementID, ElementName) VALUES ('ET004', 'Electro');
INSERT INTO ElementType (ElementID, ElementName) VALUES ('ET005', 'Geo');
INSERT INTO ElementType (ElementID, ElementName) VALUES ('ET006', 'Anemo');

-- Shop (Master >= 15)
INSERT INTO Shop (ShopID, ShopName) VALUES ('SH001', 'Mondstadt General Goods');
INSERT INTO Shop (ShopID, ShopName) VALUES ('SH002', 'Liyue Souvenir Shop');
INSERT INTO Shop (ShopID, ShopName) VALUES ('SH003', 'Inazuma Fabrics');
INSERT INTO Shop (ShopID, ShopName) VALUES ('SH004', 'Sumeru Spices');
INSERT INTO Shop (ShopID, ShopName) VALUES ('SH005', 'Fontaine Fashion');
INSERT INTO Shop (ShopID, ShopName) VALUES ('SH006', 'Natlan');
INSERT INTO Shop (ShopID, ShopName) VALUES ('SH007', 'Snezhnaya');
INSERT INTO Shop (ShopID, ShopName) VALUES ('SH008', 'Celestia');
INSERT INTO Shop (ShopID, ShopName) VALUES ('SH009', 'Abyss');
INSERT INTO Shop (ShopID, ShopName) VALUES ('SH010', 'Paimon Bargains');
INSERT INTO Shop (ShopID, ShopName) VALUES ('SH011', 'Adventurers Guild');
INSERT INTO Shop (ShopID, ShopName) VALUES ('SH012', 'Knights HQ Store');
INSERT INTO Shop (ShopID, ShopName) VALUES ('SH013', 'Wangshu Inn Shop');
INSERT INTO Shop (ShopID, ShopName) VALUES ('SH014', 'Jade Chamber Gift Shop');
INSERT INTO Shop (ShopID, ShopName) VALUES ('SH015', 'Cats Tail Tavern');

-- PrimogemBundle (Master? Maybe. I'll add 15 just to be safe)
INSERT INTO PrimogemBundle (PrimogemBundleID, PrimogemCount, PrimogemBundlePrice) VALUES ('PB001', 60, 15000);
INSERT INTO PrimogemBundle (PrimogemBundleID, PrimogemCount, PrimogemBundlePrice) VALUES ('PB002', 300, 75000);
INSERT INTO PrimogemBundle (PrimogemBundleID, PrimogemCount, PrimogemBundlePrice) VALUES ('PB003', 980, 249000);
INSERT INTO PrimogemBundle (PrimogemBundleID, PrimogemCount, PrimogemBundlePrice) VALUES ('PB004', 1980, 479000);
INSERT INTO PrimogemBundle (PrimogemBundleID, PrimogemCount, PrimogemBundlePrice) VALUES ('PB005', 3280, 799000);
INSERT INTO PrimogemBundle (PrimogemBundleID, PrimogemCount, PrimogemBundlePrice) VALUES ('PB006', 6480, 1599000);
INSERT INTO PrimogemBundle (PrimogemBundleID, PrimogemCount, PrimogemBundlePrice) VALUES ('PB007', 60, 16000); -- Variation
INSERT INTO PrimogemBundle (PrimogemBundleID, PrimogemCount, PrimogemBundlePrice) VALUES ('PB008', 330, 80000);
INSERT INTO PrimogemBundle (PrimogemBundleID, PrimogemCount, PrimogemBundlePrice) VALUES ('PB009', 1000, 250000);
INSERT INTO PrimogemBundle (PrimogemBundleID, PrimogemCount, PrimogemBundlePrice) VALUES ('PB010', 2000, 480000);
INSERT INTO PrimogemBundle (PrimogemBundleID, PrimogemCount, PrimogemBundlePrice) VALUES ('PB011', 3500, 850000);
INSERT INTO PrimogemBundle (PrimogemBundleID, PrimogemCount, PrimogemBundlePrice) VALUES ('PB012', 7000, 1700000);
INSERT INTO PrimogemBundle (PrimogemBundleID, PrimogemCount, PrimogemBundlePrice) VALUES ('PB013', 90, 20000); -- Welkin-ish
INSERT INTO PrimogemBundle (PrimogemBundleID, PrimogemCount, PrimogemBundlePrice) VALUES ('PB014', 450, 110000);
INSERT INTO PrimogemBundle (PrimogemBundleID, PrimogemCount, PrimogemBundlePrice) VALUES ('PB015', 1200, 300000);

-- GachaBundle (Master >= 15)
INSERT INTO GachaBundle (GachaBundleID, GachaCount, GachaBundlePrice) VALUES ('GB001', 1, 160);
INSERT INTO GachaBundle (GachaBundleID, GachaCount, GachaBundlePrice) VALUES ('GB002', 10, 1600);
INSERT INTO GachaBundle (GachaBundleID, GachaCount, GachaBundlePrice) VALUES ('GB003', 1, 150); -- Discounted
INSERT INTO GachaBundle (GachaBundleID, GachaCount, GachaBundlePrice) VALUES ('GB004', 10, 1500);
INSERT INTO GachaBundle (GachaBundleID, GachaCount, GachaBundlePrice) VALUES ('GB005', 5, 800);
INSERT INTO GachaBundle (GachaBundleID, GachaCount, GachaBundlePrice) VALUES ('GB006', 50, 8000);
INSERT INTO GachaBundle (GachaBundleID, GachaCount, GachaBundlePrice) VALUES ('GB007', 1, 160); -- Event A
INSERT INTO GachaBundle (GachaBundleID, GachaCount, GachaBundlePrice) VALUES ('GB008', 10, 1600); -- Event A
INSERT INTO GachaBundle (GachaBundleID, GachaCount, GachaBundlePrice) VALUES ('GB009', 1, 160); -- Weapon
INSERT INTO GachaBundle (GachaBundleID, GachaCount, GachaBundlePrice) VALUES ('GB010', 10, 1600); -- Weapon
INSERT INTO GachaBundle (GachaBundleID, GachaCount, GachaBundlePrice) VALUES ('GB011', 1, 160); -- Standard
INSERT INTO GachaBundle (GachaBundleID, GachaCount, GachaBundlePrice) VALUES ('GB012', 10, 1600); -- Standard
INSERT INTO GachaBundle (GachaBundleID, GachaCount, GachaBundlePrice) VALUES ('GB013', 20, 3200);
INSERT INTO GachaBundle (GachaBundleID, GachaCount, GachaBundlePrice) VALUES ('GB014', 100, 16000); -- Whale pack
INSERT INTO GachaBundle (GachaBundleID, GachaCount, GachaBundlePrice) VALUES ('GB015', 1, 100); -- Special Promo

-- Character (Master >= 15)
INSERT INTO Character (CharacterID, CharacterName, CharacterLevel, ElementID) VALUES ('CH001', 'Diluc', 5, 'ET001');
INSERT INTO Character (CharacterID, CharacterName, CharacterLevel, ElementID) VALUES ('CH002', 'Jean', 5, 'ET006');
INSERT INTO Character (CharacterID, CharacterName, CharacterLevel, ElementID) VALUES ('CH003', 'Mona', 5, 'ET002');
INSERT INTO Character (CharacterID, CharacterName, CharacterLevel, ElementID) VALUES ('CH004', 'Keqing', 5, 'ET004');
INSERT INTO Character (CharacterID, CharacterName, CharacterLevel, ElementID) VALUES ('CH005', 'Qiqi', 5, 'ET003');
INSERT INTO Character (CharacterID, CharacterName, CharacterLevel, ElementID) VALUES ('CH006', 'Venti', 5, 'ET006');
INSERT INTO Character (CharacterID, CharacterName, CharacterLevel, ElementID) VALUES ('CH007', 'Zhongli', 5, 'ET005');
INSERT INTO Character (CharacterID, CharacterName, CharacterLevel, ElementID) VALUES ('CH008', 'Raiden Shogun', 5, 'ET004');
INSERT INTO Character (CharacterID, CharacterName, CharacterLevel, ElementID) VALUES ('CH009', 'Nahida', 5, 'ET006'); -- No Dendro, using Anemo as placeholder or creating Dendro? Req said specific 6 elements. Giving her Anemo or Pyro for now so it doesn't break foreign key. Let's make her Pyro for fun, sorry lore. Wait, Geo is ET005. I'll stick to valid elements.
INSERT INTO Character (CharacterID, CharacterName, CharacterLevel, ElementID) VALUES ('CH010', 'Bennett', 4, 'ET001');
INSERT INTO Character (CharacterID, CharacterName, CharacterLevel, ElementID) VALUES ('CH011', 'Xingqiu', 4, 'ET002');
INSERT INTO Character (CharacterID, CharacterName, CharacterLevel, ElementID) VALUES ('CH012', 'Xiangling', 4, 'ET001');
INSERT INTO Character (CharacterID, CharacterName, CharacterLevel, ElementID) VALUES ('CH013', 'Fischl', 4, 'ET004');
INSERT INTO Character (CharacterID, CharacterName, CharacterLevel, ElementID) VALUES ('CH014', 'Barbara', 4, 'ET002');
INSERT INTO Character (CharacterID, CharacterName, CharacterLevel, ElementID) VALUES ('CH015', 'Noelle', 4, 'ET005');
INSERT INTO Character (CharacterID, CharacterName, CharacterLevel, ElementID) VALUES ('CH016', 'Sucrose', 4, 'ET006');
INSERT INTO Character (CharacterID, CharacterName, CharacterLevel, ElementID) VALUES ('CH017', 'Chongyun', 4, 'ET003');

-- Player (Master >= 15)
INSERT INTO Player (PlayerID, PlayerName, PlayerGender, PlayerEmail, PlayerDOB, PlayerPhone) VALUES ('PL001', 'Aether Star', 'Male', 'aether@gemzhin.com', '2000-01-01', '+6281234567890');
INSERT INTO Player (PlayerID, PlayerName, PlayerGender, PlayerEmail, PlayerDOB, PlayerPhone) VALUES ('PL002', 'Lumine Moon', 'Female', 'lumine@gemzhin.com', '2000-01-01', '+6281234567891');
INSERT INTO Player (PlayerID, PlayerName, PlayerGender, PlayerEmail, PlayerDOB, PlayerPhone) VALUES ('PL003', 'Amber Outrider', 'Female', 'amber@gemzhin.com', '2001-08-10', '+6281234567892');
INSERT INTO Player (PlayerID, PlayerName, PlayerGender, PlayerEmail, PlayerDOB, PlayerPhone) VALUES ('PL004', 'Kaeya Alberich', 'Male', 'kaeya@gemzhin.com', '1999-11-30', '+6281234567893');
INSERT INTO Player (PlayerID, PlayerName, PlayerGender, PlayerEmail, PlayerDOB, PlayerPhone) VALUES ('PL005', 'Lisa Minci', 'Female', 'lisa@gemzhin.com', '1998-06-09', '+6281234567894');
INSERT INTO Player (PlayerID, PlayerName, PlayerGender, PlayerEmail, PlayerDOB, PlayerPhone) VALUES ('PL006', 'Diluc Ragnvindr', 'Male', 'diluc@gemzhin.com', '1998-04-30', '+6281234567895');
INSERT INTO Player (PlayerID, PlayerName, PlayerGender, PlayerEmail, PlayerDOB, PlayerPhone) VALUES ('PL007', 'Jean Gunnhildr', 'Female', 'jean@gemzhin.com', '1998-03-14', '+6281234567896');
INSERT INTO Player (PlayerID, PlayerName, PlayerGender, PlayerEmail, PlayerDOB, PlayerPhone) VALUES ('PL008', 'Klee Spark', 'Female', 'klee@gemzhin.com', '2010-07-27', '+6281234567897');
INSERT INTO Player (PlayerID, PlayerName, PlayerGender, PlayerEmail, PlayerDOB, PlayerPhone) VALUES ('PL009', 'Albedo Chalk', 'Male', 'albedo@gemzhin.com', '2000-09-13', '+6281234567898');
INSERT INTO Player (PlayerID, PlayerName, PlayerGender, PlayerEmail, PlayerDOB, PlayerPhone) VALUES ('PL010', 'Eula Lawrence', 'Female', 'eula@gemzhin.com', '2000-10-25', '+6281234567899');
INSERT INTO Player (PlayerID, PlayerName, PlayerGender, PlayerEmail, PlayerDOB, PlayerPhone) VALUES ('PL011', 'Venti Bard', 'Male', 'venti@gemzhin.com', '1990-06-16', '+6281234567800');
INSERT INTO Player (PlayerID, PlayerName, PlayerGender, PlayerEmail, PlayerDOB, PlayerPhone) VALUES ('PL012', 'Zhongli Geo', 'Male', 'zhongli@gemzhin.com', '1980-12-31', '+6281234567801');
INSERT INTO Player (PlayerID, PlayerName, PlayerGender, PlayerEmail, PlayerDOB, PlayerPhone) VALUES ('PL013', 'Raiden Ei', 'Female', 'raiden@gemzhin.com', '1985-06-26', '+6281234567802');
INSERT INTO Player (PlayerID, PlayerName, PlayerGender, PlayerEmail, PlayerDOB, PlayerPhone) VALUES ('PL014', 'Xiao Yaksha', 'Male', 'xiao@gemzhin.com', '1995-04-17', '+6281234567803');
INSERT INTO Player (PlayerID, PlayerName, PlayerGender, PlayerEmail, PlayerDOB, PlayerPhone) VALUES ('PL015', 'Ganyu Qilin', 'Female', 'ganyu@gemzhin.com', '1996-12-02', '+6281234567804');
INSERT INTO Player (PlayerID, PlayerName, PlayerGender, PlayerEmail, PlayerDOB, PlayerPhone) VALUES ('PL016', 'Hu Tao', 'Female', 'hutao@gemzhin.com', '2002-07-15', '+6281234567805');

-- TopupHeader (Transaction >= 15)
INSERT INTO TopupHeader (TopupID, PlayerID, ShopID, TopupDate) VALUES ('TO001', 'PL001', 'SH001', '2022-01-15');
INSERT INTO TopupHeader (TopupID, PlayerID, ShopID, TopupDate) VALUES ('TO002', 'PL001', 'SH001', '2022-02-20');
INSERT INTO TopupHeader (TopupID, PlayerID, ShopID, TopupDate) VALUES ('TO003', 'PL002', 'SH002', '2022-03-05');
INSERT INTO TopupHeader (TopupID, PlayerID, ShopID, TopupDate) VALUES ('TO004', 'PL003', 'SH003', '2022-04-10');
INSERT INTO TopupHeader (TopupID, PlayerID, ShopID, TopupDate) VALUES ('TO005', 'PL004', 'SH004', '2022-05-15');
INSERT INTO TopupHeader (TopupID, PlayerID, ShopID, TopupDate) VALUES ('TO006', 'PL006', 'SH005', '2021-12-25');
INSERT INTO TopupHeader (TopupID, PlayerID, ShopID, TopupDate) VALUES ('TO007', 'PL008', 'SH006', '2023-01-01');
INSERT INTO TopupHeader (TopupID, PlayerID, ShopID, TopupDate) VALUES ('TO008', 'PL010', 'SH001', '2022-06-01');
INSERT INTO TopupHeader (TopupID, PlayerID, ShopID, TopupDate) VALUES ('TO009', 'PL012', 'SH002', '2022-07-07');
INSERT INTO TopupHeader (TopupID, PlayerID, ShopID, TopupDate) VALUES ('TO010', 'PL013', 'SH003', '2022-08-08');
INSERT INTO TopupHeader (TopupID, PlayerID, ShopID, TopupDate) VALUES ('TO011', 'PL014', 'SH004', '2022-09-09');
INSERT INTO TopupHeader (TopupID, PlayerID, ShopID, TopupDate) VALUES ('TO012', 'PL015', 'SH005', '2022-10-10');
INSERT INTO TopupHeader (TopupID, PlayerID, ShopID, TopupDate) VALUES ('TO013', 'PL016', 'SH006', '2022-11-11');
INSERT INTO TopupHeader (TopupID, PlayerID, ShopID, TopupDate) VALUES ('TO014', 'PL001', 'SH001', '2022-12-12');
INSERT INTO TopupHeader (TopupID, PlayerID, ShopID, TopupDate) VALUES ('TO015', 'PL002', 'SH002', '2023-02-14');

-- TopupDetail (Transaction Detail >= 25)
INSERT INTO TopupDetail (TopupID, PrimogemBundleID, Qty) VALUES ('TO001', 'PB001', 1);
INSERT INTO TopupDetail (TopupID, PrimogemBundleID, Qty) VALUES ('TO001', 'PB002', 2);
INSERT INTO TopupDetail (TopupID, PrimogemBundleID, Qty) VALUES ('TO002', 'PB003', 1);
INSERT INTO TopupDetail (TopupID, PrimogemBundleID, Qty) VALUES ('TO003', 'PB004', 1);
INSERT INTO TopupDetail (TopupID, PrimogemBundleID, Qty) VALUES ('TO004', 'PB001', 5);
INSERT INTO TopupDetail (TopupID, PrimogemBundleID, Qty) VALUES ('TO004', 'PB002', 1);
INSERT INTO TopupDetail (TopupID, PrimogemBundleID, Qty) VALUES ('TO005', 'PB005', 1);
INSERT INTO TopupDetail (TopupID, PrimogemBundleID, Qty) VALUES ('TO006', 'PB006', 1);
INSERT INTO TopupDetail (TopupID, PrimogemBundleID, Qty) VALUES ('TO006', 'PB001', 3);
INSERT INTO TopupDetail (TopupID, PrimogemBundleID, Qty) VALUES ('TO007', 'PB001', 1);
INSERT INTO TopupDetail (TopupID, PrimogemBundleID, Qty) VALUES ('TO008', 'PB002', 1);
INSERT INTO TopupDetail (TopupID, PrimogemBundleID, Qty) VALUES ('TO009', 'PB003', 1);
INSERT INTO TopupDetail (TopupID, PrimogemBundleID, Qty) VALUES ('TO010', 'PB004', 1);
INSERT INTO TopupDetail (TopupID, PrimogemBundleID, Qty) VALUES ('TO011', 'PB005', 1);
INSERT INTO TopupDetail (TopupID, PrimogemBundleID, Qty) VALUES ('TO012', 'PB006', 1);
INSERT INTO TopupDetail (TopupID, PrimogemBundleID, Qty) VALUES ('TO013', 'PB001', 10);
INSERT INTO TopupDetail (TopupID, PrimogemBundleID, Qty) VALUES ('TO013', 'PB002', 1);
INSERT INTO TopupDetail (TopupID, PrimogemBundleID, Qty) VALUES ('TO013', 'PB006', 1);
INSERT INTO TopupDetail (TopupID, PrimogemBundleID, Qty) VALUES ('TO014', 'PB003', 2);
INSERT INTO TopupDetail (TopupID, PrimogemBundleID, Qty) VALUES ('TO015', 'PB004', 2);
INSERT INTO TopupDetail (TopupID, PrimogemBundleID, Qty) VALUES ('TO015', 'PB001', 5);
INSERT INTO TopupDetail (TopupID, PrimogemBundleID, Qty) VALUES ('TO001', 'PB005', 1);
INSERT INTO TopupDetail (TopupID, PrimogemBundleID, Qty) VALUES ('TO002', 'PB006', 1);
INSERT INTO TopupDetail (TopupID, PrimogemBundleID, Qty) VALUES ('TO003', 'PB001', 1);
INSERT INTO TopupDetail (TopupID, PrimogemBundleID, Qty) VALUES ('TO005', 'PB002', 1);
INSERT INTO TopupDetail (TopupID, PrimogemBundleID, Qty) VALUES ('TO007', 'PB003', 1);

-- GachaHeader (Transaction >= 15)
INSERT INTO GachaHeader (GachaID, PlayerID, GachaBundleID, GachaDate) VALUES ('GH001', 'PL001', 'GB002', '2022-01-20');
INSERT INTO GachaHeader (GachaID, PlayerID, GachaBundleID, GachaDate) VALUES ('GH002', 'PL001', 'GB002', '2022-01-21');
INSERT INTO GachaHeader (GachaID, PlayerID, GachaBundleID, GachaDate) VALUES ('GH003', 'PL002', 'GB002', '2022-02-10');
INSERT INTO GachaHeader (GachaID, PlayerID, GachaBundleID, GachaDate) VALUES ('GH004', 'PL003', 'GB001', '2022-03-15');
INSERT INTO GachaHeader (GachaID, PlayerID, GachaBundleID, GachaDate) VALUES ('GH005', 'PL004', 'GB002', '2022-04-20');
INSERT INTO GachaHeader (GachaID, PlayerID, GachaBundleID, GachaDate) VALUES ('GH006', 'PL005', 'GB002', '2022-05-25');
INSERT INTO GachaHeader (GachaID, PlayerID, GachaBundleID, GachaDate) VALUES ('GH007', 'PL006', 'GB014', '2022-06-30');
INSERT INTO GachaHeader (GachaID, PlayerID, GachaBundleID, GachaDate) VALUES ('GH008', 'PL007', 'GB001', '2022-07-05');
INSERT INTO GachaHeader (GachaID, PlayerID, GachaBundleID, GachaDate) VALUES ('GH009', 'PL008', 'GB002', '2022-08-10');
INSERT INTO GachaHeader (GachaID, PlayerID, GachaBundleID, GachaDate) VALUES ('GH010', 'PL009', 'GB002', '2022-09-15');
INSERT INTO GachaHeader (GachaID, PlayerID, GachaBundleID, GachaDate) VALUES ('GH011', 'PL010', 'GB002', '2022-10-20');
INSERT INTO GachaHeader (GachaID, PlayerID, GachaBundleID, GachaDate) VALUES ('GH012', 'PL011', 'GB002', '2022-11-25');
INSERT INTO GachaHeader (GachaID, PlayerID, GachaBundleID, GachaDate) VALUES ('GH013', 'PL012', 'GB002', '2022-12-30');
INSERT INTO GachaHeader (GachaID, PlayerID, GachaBundleID, GachaDate) VALUES ('GH014', 'PL013', 'GB002', '2023-01-05');
INSERT INTO GachaHeader (GachaID, PlayerID, GachaBundleID, GachaDate) VALUES ('GH015', 'PL014', 'GB002', '2023-02-10');

-- GachaDetail (Transaction Detail >= 25)
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH001', 'CH001');
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH001', 'CH010');
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH002', 'CH002');
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH003', 'CH003');
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH004', 'CH004');
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH005', 'CH005');
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH005', 'CH011');
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH006', 'CH006');
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH007', 'CH007');
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH007', 'CH001');
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH007', 'CH012');
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH008', 'CH008');
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH009', 'CH009');
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH010', 'CH010');
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH011', 'CH011');
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH012', 'CH012');
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH013', 'CH013');
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH014', 'CH014');
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH015', 'CH015');
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH001', 'CH016');
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH002', 'CH017');
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH003', 'CH010');
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH004', 'CH011');
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH005', 'CH012');
INSERT INTO GachaDetail (GachaID, CharacterID) VALUES ('GH006', 'CH013');
