CREATE TABLE users (
    id                      BIGINT(12)    NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username                VARCHAR(255) NOT NULL,
    password                VARCHAR(255) NOT NULL,
    firstname               VARCHAR(255) NOT NULL,
    lastname                VARCHAR(255) NOT NULL,
    email                   VARCHAR(255) NOT NULL
);