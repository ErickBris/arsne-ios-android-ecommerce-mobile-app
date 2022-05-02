-- Click&Go MySQL Manager 4.2.1 Click&Go MySQL Manager dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(7,	'Cosmetics',	'cosmetics'),
(8,	'Fashion',	'fashion'),
(9,	'Foods',	'foods and fruits');

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(11) NOT NULL,
  `date_time` varchar(100) NOT NULL,
  `customer_firstname` varchar(100) NOT NULL,
  `customer_lastname` varchar(100) NOT NULL,
  `customer_zipcode` int(5) NOT NULL,
  `customer_country` varchar(100) NOT NULL,
  `customer_city` varchar(100) NOT NULL,
  `customer_address` varchar(500) NOT NULL,
  `customer_phone_number` varchar(100) NOT NULL,
  `customer_email_address` varchar(100) NOT NULL,
  `customer_shipping_class` varchar(100) NOT NULL,
  `customer_note` varchar(500) NOT NULL,
  `total_amount` varchar(100) NOT NULL,
  `payment_type` varchar(100) NOT NULL DEFAULT 'via PayPal',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item` (
  `i` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_price` varchar(200) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_name` varchar(600) NOT NULL,
  `product_category` varchar(100) NOT NULL,
  `product_spec` varchar(500) NOT NULL,
  PRIMARY KEY (`i`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refId` int(11) DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `description` varchar(400) NOT NULL,
  `images` varchar(1000) NOT NULL,
  `old_price` varchar(20) DEFAULT NULL,
  `new_price` varchar(20) NOT NULL,
  `tax_rate` int(3) DEFAULT '0',
  `categories_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `visibility` int(1) NOT NULL DEFAULT '1',
  `date_created` varchar(150) NOT NULL,
  `spec_ids` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`categories_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

INSERT INTO `products` (`id`, `refId`, `name`, `description`, `images`, `old_price`, `new_price`, `tax_rate`, `categories_id`, `quantity`, `visibility`, `date_created`, `spec_ids`) VALUES
(5,	0,	'Leather Look Crochet Lace Edge Runner Shorts in Black',	'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.',	'[\"img-20150528-5566e3f1e6d38.jpg\",\"img-20150528-5566e3fee5cf8.jpg\",\"img-20150528-5566e408de736.jpg\"]',	'66',	'34',	40,	8,	400,	1,	'2015-05-28',	'12'),
(6,	0,	'Hand Knitted Crochet Triangle Halter Bralet in Soft Cream',	'Hand knitted crochet material - Self tie back and neck for adjustable fit - Triangle cups - Perfect for festivals and holidays - Cropped top style bralet - Also available in black',	'[\"img-20150528-5566e4b84eb19.jpg\",\"img-20150528-5566e4c0d0742.jpg\"]',	'20',	'15',	0,	8,	77,	1,	'2015-05-28',	'11'),
(8,	0,	'Vintage 90s Lacoste Zip Up Sweatshirt Sweater',	'Vintage black 90s Lacoste sweat, a great casual sweat with large log on the front',	'[\"img-20150528-5566e6c47357d.jpg\",\"img-20150528-5566e6ce583cc.jpg\",\"img-20150528-5566e6d9211d6.jpg\"]',	'30',	'10',	2,	7,	22,	1,	'2015-05-28',	'11'),
(10,	0,	'Vintage 80s Lacoste Oversized down shirt',	'Vintage Lacoste short sleeve shirt. Button down collar, Classic styling with the iconic croc logo, blue & white check , excellent vintage condition. Our model is 5ft 9\" & usually wears a small/ medium. We have styled this to look slightly oversized.',	'[\"img-20150528-5566fb4622b02.jpg\",\"img-20150528-5566fb49d92b2.jpg\"]',	'650',	'120',	10,	7,	122,	1,	'2015-05-28',	'11'),
(11,	0,	'Vintage Fila Sweatshirt Z-798',	'Revolva is happy to present this vintage Fila sweatshirt. This is a vintage item that may have some vintage wear; bobbling, snags, wear patches. Any other damages will be mentioned & pictured, Jumper is in Good vintage condition. Find us on Facebook and instagram....Get a DISCOUNT promo code for your 1st order when you like us on Facebook! (Message us for code)Please see sizing for further measure',	'[\"img-20150528-5566fbdc08fdc.jpg\",\"img-20150528-5566fbe090543.jpg\",\"img-20150528-5566fbe4226da.jpg\"]',	'45',	'11',	3,	8,	100,	1,	'2015-05-28',	'11'),
(12,	0,	'Wild Child Black and Nude Bralette',	'Our Wild Child Bralette is a naughty addition to any fashionista\'s wardrobe this season! Gorgeous flowers made of layers of petals cover the sheer nude mesh, and complete with a gold clasp at the back.',	'[\"img-20150528-5566fc6fac89f.jpg\",\"img-20150528-5566fc7479cf9.jpg\"]',	'18',	'10',	0,	8,	320,	1,	'2015-05-28',	'11'),
(13,	0,	'MARGOT Cotton Stretch Strapless Bandeau',	'This soft and stylish bralette can be worn to high streets, festivals or even to the gym. The bralette looks best coupled with an open-back, side-cut top or alone.',	'[\"img-20150528-5566fd0198301.jpg\",\"img-20150528-5566fd07a182f.jpg\",\"img-20150528-5566fd1156b80.jpg\",\"img-20150528-5566fd164a1be.jpg\",\"img-20150528-5566fd1a9fc8f.jpg\"]',	'11',	'9',	0,	8,	23,	1,	'2015-05-28',	'0'),
(14,	0,	'90s Vintage floral Denim Jacket & Mini Skirt Co-ord Set',	'Original 90\'s Blue floral denim Co-ord featuring a Jacket and Matching high waisted Mini Skirt ! A truly flattering Summer Combo ! Both Pieces Look Great Styled Together and Apart ! Size UK',	'[\"img-20150528-5566fd8c45236.jpg\",\"img-20150528-5566fd90a6a1f.jpg\",\"img-20150528-5566fd9527a9c.jpg\"]',	'0',	'5',	1,	8,	55,	1,	'2015-05-28',	'0'),
(15,	0,	'Vintage Luxury Patter Windbreaker Jacket 90s M 12',	'Retro 90s style. US medium/ UK large. Nice vintage condition. Model is 5\' or 153 cm, and typically wears a UK size 2. We ship every additional item for FREE with the original, so don\'t lose out on getting your look right with reduced shipping! Also, we ship internationally at insanely low prices already. Items are shipped within the same business day for a speedy delivery.',	'[\"img-20150528-5566fe491fc14.jpg\",\"img-20150528-5566fe4d3d997.jpg\"]',	'12',	'7',	0,	8,	33,	1,	'2015-05-28',	'11'),
(19,	0,	'Baroque lace crown',	'Statement baroque style crown in stiffened black coloured lace. Adjustable and fastens with a satin ribbon.',	'[\"img-20150528-55670354ed735.jpg\",\"img-20150528-55670359d9038.jpg\",\"img-20150528-556703602340f.jpg\",\"img-20150528-55670363b7606.jpg\"]',	'12',	'5',	0,	7,	34,	1,	'2015-05-28',	'10'),
(20,	0,	'Summer Shrimp Tomato Salad',	'Summer Shrimp Tomato Salad with heirloom tomatoes, baby shrimp, corn, beans, onion, and citrus dressing.',	'[\"img-20150528-556715fa33942.jpg\",\"img-20150528-55671600beaa9.jpg\"]',	'0',	'32',	0,	9,	67,	1,	'2015-05-28',	'0'),
(21,	0,	'Peanut Butter Oatmeal Cookies',	'These peanut butter and oatmeal cookies packed with chocolate chips are the perfect mix of crunchy and chewy',	'[\"img-20150528-55671736184ca.jpg\"]',	'0',	'45',	0,	9,	876,	1,	'2015-05-28',	'0'),
(22,	0,	'Sausage and Goat Cheese Strata',	'Sausage, Goat Cheese, and Chives bring fresh spring flavor to this easy Bagel Strata.',	'[\"img-20150528-556717854332e.jpg\"]',	'0',	'43',	0,	9,	56,	1,	'2015-05-28',	'0'),
(23,	0,	'Asparagus & Baked Goat Cheese Salad',	'Shaved Asparagus & Fennel Salad with Baked Goat Cheese and Lemon Vinaigrette. The Epitome of Summer in Salad Form',	'[\"img-20150528-556717b191b1e.jpg\"]',	'0',	'12',	0,	9,	345,	1,	'2015-05-28',	'0'),
(24,	0,	'Strawberry Lasagna',	'Store-bought pound cake makes this no-bake Strawberry Lasagna super easy!',	'[\"img-20150528-556717ea4ee9d.jpg\"]',	'0',	'23',	0,	9,	34,	1,	'2015-05-28',	'0'),
(25,	0,	'Tomato And Cheese Pizza',	'This Tomato And Cheese Pizza has some tomato sauce and few whole tomatoes with some extra cheese all around in the pizza crust.',	'[\"img-20150528-5567180c5eea1.jpg\"]',	'0',	'67',	0,	9,	12,	1,	'2015-05-28',	'0'),
(26,	0,	'Persimmon Gelato',	'Persimmon Gelato has a light, delicate flavor and is made with only four ingredients',	'[\"img-20150528-5567185d73d2f.jpg\"]',	'0',	'34',	0,	9,	345,	1,	'2015-05-28',	'0'),
(27,	0,	'Strawberry tart with lemon pastry cream',	'Strawberry tart with lemon pastry cream',	'[\"img-20150528-5567189bcc618.jpg\"]',	'0',	'15',	0,	9,	345,	1,	'2015-05-28',	'0'),
(28,	0,	'Black bean dip',	'This black bean dip is a must for any backyard barbecue! With bell peppers, jalapenos, garlic and lime plus a secret ingredient.',	'[\"img-20150528-556718cc6646d.jpg\"]',	'0',	'3',	0,	9,	33,	1,	'2015-05-28',	'0'),
(29,	0,	'Avocado Mango Raspberry Salad',	'Avocado Mango Raspberry Salad',	'[\"img-20150528-55671902ce31f.jpg\"]',	'0',	'10',	0,	9,	1,	1,	'2015-05-28',	'0'),
(30,	0,	'Choc Brownie Parfait with Salted Caramel',	'Oaty Chocolate Brownie Parfait with Salted Caramel - Gluten free heaven!',	'[\"img-20150528-556719559d122.jpg\"]',	'0',	'45',	0,	9,	333,	1,	'2015-05-28',	'0'),
(31,	0,	'Navy Lace Trim Playsuit - Snowflake Playsuit',	'Got me lookin\' so crazy right now, that\'s right, the The Snowflake Playsuit! Made from a gorgeous Navy& White print that Features a crochet lace V- Neckline Soft fabric and Elasticated',	'[\"img-20150608-5575e210782cf.jpg\",\"img-20150608-5575e21504780.jpg\",\"img-20150608-5575e21a2d04d.jpg\"]',	'31',	'27',	4,	8,	345,	1,	'2015-06-08',	'0');

DROP TABLE IF EXISTS `product_spec`;
CREATE TABLE `product_spec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `values` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO `product_spec` (`id`, `title`, `values`) VALUES
(10,	'Color',	'Red, Blue, Orange'),
(11,	'Size',	'Small, Medium, Large'),
(12,	'Size(UK)',	'UK 10, UK 12, UK 14');

DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `payment_type` varchar(100) DEFAULT NULL,
  `cs_email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `setting` (`id`, `username`, `password`, `currency`, `logo`, `payment_type`, `cs_email`) VALUES
(1,	'admin',	'admin',	'$',	'png',	'paypal-cash',	's@gmail.com');

DROP TABLE IF EXISTS `shipping_class`;
CREATE TABLE `shipping_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` int(100) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO `shipping_class` (`id`, `price`, `title`, `description`) VALUES
(4,	5,	'DHL',	'within 5 days'),
(5,	3,	'FedEx',	'within 3 days'),
(6,	5,	'Local',	'Provider Name');

-- 2015-09-12 13:19:30
