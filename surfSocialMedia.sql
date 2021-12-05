
CREATE SCHEMA SurfSocialMedia;
USE SurfSocialMedia;

CREATE TABLE countries(
    countryId INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    countryName VARCHAR(200) UNIQUE
)ENGINE=InnoDB;


CREATE TABLE towns(
    townId INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,

/*FOREIGN KEY countryId*/
    countryId INTEGER NOT NULL,
    KEY foreignKeyCountryId_town(countryId),
    CONSTRAINT `foreignKeyCountryId_town`
    FOREIGN KEY (countryId) REFERENCES countries(countryId)
    ON DELETE RESTRICT ON UPDATE CASCADE,

/*FIN FOREIGN KEYS countryId*/
    townName VARCHAR(500) UNIQUE
)ENGINE=InnoDB;


CREATE TABLE usersProfils(
    userId INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,

/*FOREIGN KEY countryId*/
    countryId INTEGER NOT NULL,
    KEY foreignKeyCountryId_user(countryId),
    CONSTRAINT `foreignKeyCountry_user`
    FOREIGN KEY (countryId) REFERENCES countries(countryId)
    ON DELETE RESTRICT ON UPDATE CASCADE,
/*FIN FOREIGN KEY countryId*/

/*FOREIGN KEY tonwnId*/
    townId INTEGER NOT NULL,
    KEY foreginKeyTownId_user(townId),
    CONSTRAINT `foreignKeytOWN_user`
    FOREIGN KEY (townId) REFERENCES towns(townId)
    ON DELETE RESTRICT ON UPDATE CASCADE,
/*FIN FOREIGN KEY townId*/

    firstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    userName VARCHAR(50) UNIQUE NOT NULL,
    birthday VARCHAR(10) NOT NULL,
    email VARCHAR(500) NOT NULL UNIQUE,
    password VARCHAR(250) NOT NULL,
    homeSpot VARCHAR(50),
    description VARCHAR(350),
    profilCreationDate DATETIME NOT NULL
)ENGINE=InnoDB;

/*TABLE FORUM*/

CREATE TABLE forumCategories(
    categoryId INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    categoriyName VARCHAR(1500) UNIQUE NOT NULL
)ENGINE=InnoDB;

CREATE TABLE forumTopics(
    topicId INTEGER PRIMARY KEY AUTO_INCREMENT,

/*DEBUT FOREIGN KEY cayegoryId*/
    categoryId INTEGER NOT NULL,
    KEY foreignKeyCategoryId_topic(categoryId),
    CONSTRAINT `foreignKeyCategoryId_topic`
    FOREIGN KEY (categoryId) REFERENCES forumCategories (categoryId)
    ON DELETE RESTRICT ON UPDATE CASCADE,
    /*FIN FOREIGN KEY categoryId*/

/*DEBUT FOREIGN KEY userId*/
    userId INTEGER NOT NULL,
    KEY foreignKeyUserId(userID),
    CONSTRAINT `foreignKeyUserId_topic`
    FOREIGN KEY (userId) REFERENCES usersProfils (userId)
    ON DELETE RESTRICT ON UPDATE CASCADE,
/*FIN FOREIGN KEY userId*/

    topicTitle VARCHAR(150) NOT NULL,
    topicFirstContent VARCHAR(3500) NOT NULL,
    topicCreationDate DATETIME NOT NULL
)ENGINE=InnoDB;

CREATE TABLE forumPosts(
    postId INTEGER PRIMARY KEY AUTO_INCREMENT,

/*DEBUT FOREIGN KEY topicId*/
    topicId INTEGER NOT NULL,
    KEY foreignKeytopicId_post(topicId),
    CONSTRAINT `foreignKeytopicId_post`
    FOREIGN KEY (topicId) REFERENCES forumTopics (topicId)
    ON DELETE RESTRICT ON UPDATE CASCADE,
/*FIN FOREIGN KEY topicId*/

/*DEBUT FOREIGN KEY userId*/
    userId INTEGER NOT NULL,
    KEY foreignKeyUserId_topic(userID),
    CONSTRAINT `foreignKeyUserId_post`
    FOREIGN KEY (userId) REFERENCES usersProfils (userId)
    ON DELETE RESTRICT ON UPDATE CASCADE,
/*FIN FOREIGN KEY userId*/

    postContent VARCHAR(3500),
    postCreationDate DATETIME
)ENGINE=InnoDB;
