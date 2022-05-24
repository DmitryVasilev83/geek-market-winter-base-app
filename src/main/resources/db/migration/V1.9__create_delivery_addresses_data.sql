CREATE TABLE delivery_addresses (
    id                  BIGINT(12)    NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id             BIGINT(12)    NOT NULL,
    address             VARCHAR(255) NOT NULL,
    CONSTRAINT FK_USER_ID_DEL_ADR FOREIGN KEY (user_id)
    REFERENCES users (id)
);