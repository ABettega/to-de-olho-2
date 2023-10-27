CREATE TABLE IF NOT EXISTS partidos (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  acronym VARCHAR(10) NOT NULL,
  number INT NOT NULL,
  photoUrl VARCHAR(255),
  PRIMARY KEY (id)
);

CREATE TABLE deputados (
  id INT NOT NULL AUTO_INCREMENT,
  externalId INT NOT NULL,
  electoralName VARCHAR(255) NOT NULL,
  civilName VARCHAR(255) NOT NULL,
  photoUrl VARCHAR(255),
  state VARCHAR(2) NOT NULL,
  legislatureId INT NOT NULL,
  email VARCHAR(255),
  officePhoneNumber VARCHAR(50),
  officeEmail VARCHAR(255),
  currentStatus VARCHAR(255),
  electoralCondition VARCHAR(255),
  websiteUrl VARCHAR(255),
  socialMediaUrls JSON,
  age INT,
  birthCity VARCHAR(255),
  birthState VARCHAR(2),
  birthDate VARCHAR(10),
  deathDate VARCHAR(10),
  partyId INT NOT NULL,
  PRIMARY KEY (id)
);
