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
    postalCode INTEGER UNIQUE NOT NULL,
    townName VARCHAR(500)
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
    fkTownId INTEGER NOT NULL,
    KEY foreginKeyTownId_user(fkTownId),
    CONSTRAINT `foreignKeyTown_user`
    FOREIGN KEY (fkTownId) REFERENCES towns(townId)
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
    profilPicture VARCHAR(500),
    profilCreationDate DATETIME NOT NULL
)ENGINE=InnoDB;

/*TABLE FORUM*/

CREATE TABLE forumCategories(
    categoryId INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    categoriyName VARCHAR(1500) UNIQUE NOT NULL
)ENGINE=InnoDB;

CREATE TABLE forumTopics(
    topicId INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,

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
) ENGINE=InnoDB;

CREATE TABLE forumPosts(
    postId INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,

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
) ENGINE=InnoDB;


CREATE TABLE chatFlows(
    flowId INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
/*DEBUT FOREIGN KEY ID DE L'ÉMMETEUR*/
    sendingUserId INTEGER NOT NULL,
    KEY foreignKeySendingUserId_topic(sendingUserId),
    CONSTRAINT `foreignKeySendingUserId_flow`
    FOREIGN KEY (sendingUserId) REFERENCES usersProfils (userId)
    ON DELETE RESTRICT ON UPDATE CASCADE,
/*FIN FOREIGN KEY EMMETEUR*/

/*DEBUT FOREIGN KEY ID DESTINATAIRE*/
    receiverUserId INTEGER NOT NULL,
    KEY foreignReceiverKeyUserId_topic(receiverUserId),
    CONSTRAINT `foreignKeyReceiverUserId_flow`
    FOREIGN KEY (receiverUserId) REFERENCES usersProfils (userId)
    ON DELETE RESTRICT ON UPDATE CASCADE,
/*FIN FOREIGN KEY ID DESTINATAIRE*/
    flowCreationDate DATETIME NOT NULL
) ENGINE=InnoDB;

CREATE TABLE chatMessages(
    messageId INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
/*DEBUT FOREIGN KEY FLOW ID*/
    flowId INTEGER NOT NULL,
    KEY foreignKeyFlowId_message(flowId),
    CONSTRAINT `foreignKeyFlowId_message`
    FOREIGN KEY (flowId) REFERENCES chatFlows (flowId)
    ON DELETE RESTRICT ON UPDATE CASCADE,
/*FIN FOREIGN KEY FLOW ID*/

    content VARCHAR(10000),
    messageSendingDate DATETIME NOT NULL
) ENGINE=InnoDB;

CREATE TABLE carPool(
    travelId INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    /*DEBUT FOREGIN KEY ID CONDUCTEUR*/
    userId INTEGER NOT NULL,
    KEY foreignKeyUserId_carPool(userID),
    CONSTRAINT `foreignKeyUserId_carPool`
    FOREIGN KEY (userId) REFERENCES usersProfils (userId)
    ON DELETE RESTRICT ON UPDATE CASCADE,
    /*FIN FOREIGN KEY ID CONDUCTEUR*/

    /*DEBUT FOREIGN KEYS PAYS*/
    countryId INTEGER NOT NULL,
    KEY foreignKeyCountryId_carPool(countryId),
    CONSTRAINT `foreignKeyCountryId_carPool`
    FOREIGN KEY (countryId) REFERENCES countries(countryId)
    ON DELETE RESTRICT ON UPDATE CASCADE,
    /*DEBUT FOREIGN KEYS PAYS*/

    /*DEBUT FOREIGN KEY DEPART*/
    townId INTEGER NOT NULL,
    KEY foreginKeyTownId_carPool(townId),
    CONSTRAINT `foreignKeyTown_carPool`
    FOREIGN KEY (townId) REFERENCES towns(townId)
    ON DELETE RESTRICT ON UPDATE CASCADE,
    /*FIN FOREIGN KEY DEPARTY*/

    destination VARCHAR (250) NOT NULL,
    carPoolDate DATE NOT NULL,
    departureHour TIME NOT NULL,
    carPoolDetails VARCHAR(5000) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE userImages(
    imageId INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    /*DEBUT FOREGIN KEY ID UTILISATEUR*/
    userId INTEGER NOT NULL,
    KEY foreignKeyUserId_image(userID),
    CONSTRAINT `foreignKeyUserId_image`
    FOREIGN KEY (userId) REFERENCES usersProfils (userId)
    ON DELETE RESTRICT ON UPDATE CASCADE,
    /*FIN FOREIGN KEY ID UTILISATEUR*/
    imagePath VARCHAR(500) NOT NULL
) ENGINE=InnoDB;
