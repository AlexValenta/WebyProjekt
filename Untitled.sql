CREATE TABLE `categories` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(50),
  `description` text
);

CREATE TABLE `products` (
  `ids` int PRIMARY KEY AUTO_INCREMENT,
  `names` varchar(100),
  `descriptions` text,
  `prices` decimal(10,2),
  `stock` int,
  `category_ids` int,
  `images` varchar(255),
  `product_types` enum(supplement,speciality),
  `created_at` datetime
);

ALTER TABLE `products` ADD FOREIGN KEY (`category_ids`) REFERENCES `categories` (`id`);
