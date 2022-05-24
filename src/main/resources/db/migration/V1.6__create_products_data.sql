CREATE TABLE products (
    id                      BIGINT(12)    NOT NULL PRIMARY KEY AUTO_INCREMENT,
    category_id             BIGINT(12)    NOT NULL,
    vendor_code             VARCHAR(8) NOT NULL,
    title                   VARCHAR(255) NOT NULL,
    short_description       VARCHAR(255) NOT NULL,
    full_description        VARCHAR(2550) NOT NULL,
    price                   DECIMAL(10, 2),
    create_at               TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_at               TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT FK_CATEGORY_ID FOREIGN KEY (category_id)
    REFERENCES categories (id)
);