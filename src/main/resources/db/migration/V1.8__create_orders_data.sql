CREATE TABLE orders (
    id                      BIGINT(12)    NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id                 BIGINT(12)    NOT NULL,
    status_id               BIGINT(12)    NOT NULL,
    price                   DECIMAL(10,2) NOT NULL,
    delivery_price          DECIMAL(10,2) NOT NULL,
    delivery_address_id     BIGINT(12)    NOT NULL,
    phone_number            VARCHAR(25) NOT NULL,
    delivery_date           TIMESTAMP NOT NULL,
    create_at               TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_at               TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT FK_USER_ID_01 FOREIGN KEY (user_id)
    REFERENCES users (id),
    CONSTRAINT FK_STATUS_ID FOREIGN KEY (status_id)
    REFERENCES orders_statuses (id),
    CONSTRAINT FK_DEL_ADD_ID FOREIGN KEY (delivery_address_id)
    REFERENCES delivery_addresses (id)
);