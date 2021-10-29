INSERT INTO category (category_name)
VALUES ("Electronics"),
("Clothes"),
("Gardening"),
("Seasonal")
("Personal Care")

INSERT INTO product (product_name, price, stock, category_id)
VALUES ("Samsung 60in TV", 1299.99, 56, 1),
("Women's Leggings", 15.99, 37, 2),
("Shovel", 12.50, 27, 3),
("Christmas Lights 12ft", 20.99, 4)
("Dove Body Soap", 3.99, 34, 5)

INSERT INTO tag (tag_name)
VALUES ("electronics")
("clothing")
("gardening")
("seasonal")
("personal care")

INSERT INTO ProductTag (product_id, tag_id)
VALUES (1, 1)
(2, 2)
(3, 3)
(4, 4)
(5,5)