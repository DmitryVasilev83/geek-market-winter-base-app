CREATE TABLE orders_item (
    id                      BIGINT(12)    NOT NULL PRIMARY KEY AUTO_INCREMENT,
    quantity                BIGINT(12)    NOT NULL,
    item_price              DECIMAL(10, 2) NOT NULL,
    total_price             DECIMAL(10, 2) NOT NULL,
    product_id              BIGINT(12)    NOT NULL,
    order_id                BIGINT(12)    NOT NULL,
    CONSTRAINT FK_ORDER_ID FOREIGN KEY (order_id)
    REFERENCES orders (id),
    CONSTRAINT FK_PRODUCT_ID_ORDER_IT FOREIGN KEY (product_id)
    REFERENCES products (id)
);