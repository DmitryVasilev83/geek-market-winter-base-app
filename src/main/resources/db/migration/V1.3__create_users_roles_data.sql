CREATE TABLE users_roles (
    user_id                      BIGINT(12)    NOT NULL,
    role_id                      BIGINT(12)    NOT NULL,
    PRIMARY KEY (user_id, role_id),
    CONSTRAINT FK_USER_ID FOREIGN KEY (user_id)
    REFERENCES users (id),
    CONSTRAINT FK_ROLE_ID FOREIGN KEY (role_id)
    REFERENCES roles (id)
    );
