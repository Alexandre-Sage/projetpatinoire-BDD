USE SurfSocialMedia;

INSERT INTO countries (countryName)
VALUES("France"),("Esapgne"),("Portugal");

INSERT INTO towns(countryId, townName, postalCode)
VALUES
(1, "Vannes", 56000), (1, "Quiberon",56001),(1, "Plouharnel", 56002),
(2, "Burela", 835605),(2, "Viveiro", 80223),(2, "Xove", 64489789),
(3, "Lisboa", 564654),(3, "Nazare", 546465),(3, "Costa Nova", 465465);

INSERT INTO usersProfils(countryId, townId, firstName, lastName, userName, birthday, email, password, homeSpot, adminUser, profilCreationDate)

VALUES (1, 1, "Alexandre", "Sage", "lalalala","14/09/1993", "test", "n4bQgYhMfWWaL+qgxVrQFaO/TxsrC4Is0V1sFbDwCgg=", "Port Blanc", TRUE, NOW()),

(2, 2, "Eduardo", "Muniz", "NON FONCTIONELLE", "14/09/1990", "test2", "n4bQgYhMfWWaL+qgxVrQFaO/TxsrC4Is0V1sFbDwCgg=", "Barreiros", FALSE, NOW()),

(3, 2, "Joan", "Ramirez", "NON FONCTIONELLE2", "14/09/1995", "joandramirez@****.com", "password", "Port Blanc", FALSE, NOW());

INSERT INTO forumCategories (categoryName)
VALUES ("GENERAL"),("REPORT"),("MATOS"),("DIY"),("PHOTO"),("SECRET SPOT");


INSERT INTO forumTopics (categoryId, userId, topicTitle, topicCreationDate)
VALUES(1, 2, "Test topic catgory general", NOW()),

(2, 1, "Test topic catgory report", NOW()),

(3, 3, "Test topic catgory matos", NOW()),

(3, 2, "Test topic catgory matos2", NOW()),

(4, 1, "Test topic catgory DIY", NOW());

INSERT INTO forumPosts(topicId, userId, postContent, postCreationDate)
VALUES(1,3, "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat", NOW()),

(1,2, "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat", NOW()),

(2,1, "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat", NOW()),

(2,3, "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat", NOW()),

(3,2, "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat", NOW()),

(3,1, "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat", NOW()),

(4,3, "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat", NOW()),

(4,2, "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat", NOW()),

(5,1, "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat", NOW()),

(5,3, "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat", NOW());

INSERT INTO chatFlows(sendingUserId, receiverUserId)
VALUES (1,2),(1,3),(2,3);

INSERT INTO chatMessages(flowId, userId, content, messageSendingDate)
VALUES (2,1, "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", NOW()),

 (3,2, "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", NOW()),

 (2,3, "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", NOW()),

 (1,2 ,"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", NOW()),

 (3, 1,"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", NOW()),

 (1,1, "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", NOW()),

 (2,3, "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", NOW());



INSERT INTO userImages(imageId, imagePath, imageUploadDate) VALUES(1, "public/images/userProfilDefault/userprofildefaultpicture.jpg", NOW());

INSERT INTO userImages (userId, imagePath, imageUploadDate) VALUES(1,"public/images/usersImages/7abeff587d0dd90886668d0e051fa99c", NOW());

INSERT INTO userImages (userId, imagePath, imageUploadDate) VALUES(2,"public/images/usersImages/7abeff587d0dd90886668d0e051fa99c", NOW());
INSERT INTO userImages (userId, imagePath, imageUploadDate) VALUES(3,"public/images/usersImages/7abeff587d0dd90886668d0e051fa99c", NOW());

INSERT INTO profilPicture(imageId, userId) VALUES(2,1);
INSERT INTO profilPicture(imageId, userId) VALUES(3,2);
INSERT INTO profilPicture(imageId, userId) VALUES(4,3);
