-- 1_DDL.sql

CREATE TABLE ElementType (
    ElementID CHAR(5) PRIMARY KEY CHECK(ElementID GLOB 'ET[0-9][0-9][0-9]'),
    ElementName VARCHAR(50) NOT NULL
);

CREATE TABLE Character (
    CharacterID CHAR(5) PRIMARY KEY CHECK(CharacterID GLOB 'CH[0-9][0-9][0-9]'),
    CharacterName VARCHAR(255) NOT NULL,
    CharacterLevel INT NOT NULL CHECK(CharacterLevel BETWEEN 4 AND 5),
    ElementID CHAR(5) NOT NULL,
    FOREIGN KEY (ElementID) REFERENCES ElementType(ElementID)
);

CREATE TABLE Player (
    PlayerID CHAR(5) PRIMARY KEY CHECK(PlayerID GLOB 'PL[0-9][0-9][0-9]'),
    PlayerName VARCHAR(255) NOT NULL,
    PlayerGender VARCHAR(10) NOT NULL CHECK(PlayerGender IN ('Male', 'Female')),
    PlayerEmail VARCHAR(255) NOT NULL CHECK(PlayerEmail LIKE '%@gemzhin.com'),
    PlayerDOB DATE NOT NULL,
    PlayerPhone VARCHAR(20) NOT NULL CHECK(
        PlayerPhone GLOB '+62*' AND 
        LENGTH(PlayerPhone) BETWEEN 11 AND 16
    )
);

CREATE TABLE Shop (
    ShopID CHAR(5) PRIMARY KEY CHECK(ShopID GLOB 'SH[0-9][0-9][0-9]'),
    ShopName VARCHAR(255) NOT NULL
);

CREATE TABLE PrimogemBundle (
    PrimogemBundleID CHAR(5) PRIMARY KEY CHECK(PrimogemBundleID GLOB 'PB[0-9][0-9][0-9]'),
    PrimogemCount INT NOT NULL,
    PrimogemBundlePrice INT NOT NULL
);

CREATE TABLE GachaBundle (
    GachaBundleID CHAR(5) PRIMARY KEY CHECK(GachaBundleID GLOB 'GB[0-9][0-9][0-9]'),
    GachaCount INT NOT NULL,
    GachaBundlePrice INT NOT NULL
);

CREATE TABLE TopupHeader (
    TopupID CHAR(5) PRIMARY KEY CHECK(TopupID GLOB 'TO[0-9][0-9][0-9]'),
    PlayerID CHAR(5) NOT NULL,
    ShopID CHAR(5) NOT NULL,
    TopupDate DATE NOT NULL CHECK(STRFTIME('%Y', TopupDate) >= '2000'),
    FOREIGN KEY (PlayerID) REFERENCES Player(PlayerID),
    FOREIGN KEY (ShopID) REFERENCES Shop(ShopID)
);

CREATE TABLE TopupDetail (
    TopupID CHAR(5) NOT NULL,
    PrimogemBundleID CHAR(5) NOT NULL,
    Qty INT NOT NULL DEFAULT 1,
    PRIMARY KEY (TopupID, PrimogemBundleID),
    FOREIGN KEY (TopupID) REFERENCES TopupHeader(TopupID),
    FOREIGN KEY (PrimogemBundleID) REFERENCES PrimogemBundle(PrimogemBundleID)
);

CREATE TABLE GachaHeader (
    GachaID CHAR(5) PRIMARY KEY CHECK(GachaID GLOB 'GH[0-9][0-9][0-9]'),
    PlayerID CHAR(5) NOT NULL,
    GachaBundleID CHAR(5) NOT NULL,
    GachaDate DATE NOT NULL CHECK(STRFTIME('%Y', GachaDate) >= '2000'),
    FOREIGN KEY (PlayerID) REFERENCES Player(PlayerID),
    FOREIGN KEY (GachaBundleID) REFERENCES GachaBundle(GachaBundleID)
);

CREATE TABLE GachaDetail (
    GachaID CHAR(5) NOT NULL,
    CharacterID CHAR(5) NOT NULL,
    PRIMARY KEY (GachaID, CharacterID),
    FOREIGN KEY (GachaID) REFERENCES GachaHeader(GachaID),
    FOREIGN KEY (CharacterID) REFERENCES Character(CharacterID)
);
