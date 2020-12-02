SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


DROP TABLE IF EXISTS `products_details`;
CREATE TABLE IF NOT EXISTS `products_details` (
   `pro_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
   `pro_cat_id` int(10) NOT NULL,
   `pro_price` decimal(7,2) NULL,
   `pro_ref` int(5) NOT NULL,
   `pro_ean` int(15) NOT NULL,
   `pro_stock` int(10) NOT NULL,
   `pro_stock_alert` int(10) NOT NULL,
   `pro_color` text(10) NOT NULL,
   `pro_name` text(10) NOT NULL,
   `pro_desc` text(100) NOT NULL,
   `pro_publish` text(30) NOT NULL,
   `pro_sup_id` int(10) NOT NULL,
   `pro_add_date` date NOT NULL,
   `pro_update_date` datetime NOT NULL,
   `pro_picture` int(10) NOT NULL,
   PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;


INSERT INTO `products_details` (`pro_id`, `pro_cat_id`, `pro_price`, `pro_ref`, `pro_ean`, `pro_stock`, `pro_stock_alert`, `pro_color`, `pro_name`, `pro_desc`, `pro_publish`, `pro_sup_id`, `pro_add_date`, `pro_update_date`, `pro_picture`) VALUES
(7, 27, '110.00', 'barb001', NULL, 2, 5, 'Brun', 'Aramis', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In porttitor sit amet ipsum sit amet dapibus. Cras suscipit neque ac magna sagittis lobortis. Duis venenatis enim ac nisl luctus, a scelerisque velit porttitor. Integer nec massa quis urna mollis consectetur et et nisl. Nullam eget nunc vitae nisl convallis faucibus. Vestibulum dapibus, metus nec molestie lobortis, nunc sem mollis tortor, et auctor dolor nunc at nisi. Pellentesque sit amet turpis nisi.', 0, 4, ###, ###, jpg),
(8, 27, '249.99', 'barb002', NULL, 2, 5, 'Noir', 'Athos', 'Cu''rabitur pellentesque posuere luctus. Sed et risus vel quam pharetra pretium non quis odio. Praesent varius risus vel orci ultrices tincidunt.', 0, 4, ###, NULL jpg),
(10, 2, '14.99', 'SEC-B', NULL, 2, 5, 'Rouge', 'Red', 'Phasellus ac gravida lorem. Aliquam sed aliquam nisl. Etiam non ornare sapien. Aenean ut tellus non risus varius bibendum quis vel ligula.', 0, 3, ###, NULL jpg),
(11, 27, '135.90', 'barb003', NULL, 2, 5, 'Chrome', 'Clactronic', 'Fusce rutrum odio sem, quis finibus nisl finibus a. Praesent dictum ex in lectus porta, vitae varius lacus eleifend. Sed sed lacinia mi, sed egestas odio. Integer a congue lectus.', 0, 4, ###, ###, jpg),
(12, 27, '88.00', 'barb004', NULL, 2, 5, 'Noir', 'Camping', 'Phasellus auctor mattis justo, in semper urna congue eget. Nunc sit amet nunc sed dui fringilla scelerisque a eget sem. Aenean cursus eros vehicula arcu blandit, sit amet faucibus leo finibus. Duis pharetra felis eget viverra tempor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas', 1, 4, ###, NULL jpg),
(13, 13, '49.00', 'brou001', NULL, 2, 5, 'Verte', 'Green', 'Fusce interdum ex justo, vel imperdiet erat volutpat non. Donec et maximus lacus. ', 0, 2, ###, NULL jpg),
(14, 13, '88.00', 'brou002', NULL, 2, 5, 'Argent', 'Silver', 'Pellentesque ultrices vestibulum sagittis.', 1, 2, ###, ###, jpg),
(15, 13, '54.49', 'brou003', NULL, 2, 5, 'Jaune', 'Yellow', 'Sed lobortis pulvinar orci, ut efficitur urna egestas eu.', 0, 2, ###, NULL jpg),
(16, 2, '19.90', 'GA410', NULL, 2, 5, 'Gris', 'BÃªche GA 410', 'Nulla at consequat orci.', 0, 2, ###, NULL png),
(17, 2, '24.90', 'beche002', NULL, 2, 5, 'Argent', 'BÃªche GA 388', 'Curabitur varius interdum nulla, sit amet consequat massa. Vestibulum rutrum leo lectus. Phasellus sit amet viverra velit.', 0, 2, ###, NULL png),
(18, 2, '31.19', 'scm0555', NULL, 2, 5, 'Bleue', 'Scie Ã  main SCM0555', 'Pellentesque fermentum ut est sagittis feugiat. Morbi in turpis augue. Maecenas dapibus ligula velit, ac gravida risus imperdiet in.', 0, 2, ###, NULL png),
(19, 2, '14.90', 'scm66+', NULL, 2, 5, 'Bleu', 'Scie couteau', 'raesent ante felis, iaculis vitae lectus sed, luctus laoreet metus. Aenean mattis egestas eleifend. Morbi dictum erat ut lorem porta, a volutpat nibh ultrices. Nunc ut tortor ac velit fringilla dictum at non nulla.', 0, 2, ###, NULL png),
(20, 2, '31.19', 'h0662', NULL, 2, 5, 'Noir', 'Hache H062', 'Cras nec dapibus erat. Cras bibendum auctor dui quis tristique.', 0, 2, ###, NULL png),
(21, 11, '599.99', 'DB0703', NULL, 2, 5, 'Bleue', 'Titan', 'Etiam eu sem ligula. Donec aliquet velit a condimentum sagittis. Nullam ipsum augue, porta non vestibulum cursus, eleifend tempor erat. Proin et turpis molestie augue mollis laoreet. Nulla lorem tellus, pellentesque nec hendrerit vehicula, consectetur non nisl. Maecenas eget accumsan lectus. Vivamus eleifend lorem scelerisque augue rutrum laoreet.', 0, 3, ###, NULL png),
(22, 11, '499.99', 'DB0755', NULL, 2, 5, 'Bleue', 'Attila', 'LÃ  oÃ¹ passe Attila, l''herbe ne repousse pas.', 0, 3, ###, NULL png),
(23, 28, '12.00', 'LAM121', NULL, 2, 5, 'Rouge', 'Aquitaine', 'Integer aliquet accumsan eleifend. Pellentesque mauris tortor, ultricies a pulvinar ut, fringilla ac mi. Sed consequat, nibh at tempus porttitor, tellus nunc dictum nulla, sed finibus felis augue sed libero. Donec augue mi, mattis et orci ac, mollis feugiat elit.', 0, 2, ###, NULL jpg),
(24, 28, '9.98', 'LAM233', NULL, 2, 5, 'Brun', 'Brown', 'Morbi porta ultricies nibh vel varius. Vestibulum nec rutrum ex, vel posuere nisi. Ut scelerisque sit amet ligula sed imperdiet. Morbi lacinia sapien in elementum iaculis. Vivamus a ultrices enim. ', 0, 2, ###, NULL jpg),
(25, 25, '157.00', 'PRS-01C', NULL, 2, 5, 'Brun', 'Biarritz', 'Quisque fermentum, dui eu elementum sagittis, risus lorem placerat ipsum, vitae venenatis tellus sapien id nibh. Suspendisse et aliquet tellus, in suscipit magna.', 0, 2, ###, NULL jpg),
(26, 25, '299.40', 'PRS-38A', NULL, 2, 5, 'Rose', 'Cannes', 'Curabitur sodales sem vitae ex commodo, in ullamcorper quam congue. Aliquam erat volutpat. Praesent mollis at velit eu molestie. Proin ac tellus a enim venenatis ultrices vitae sed libero. Vivamus at vulputate orci. Curabitur mattis ac turpis id tempus. Sed turpis enim, egestas ac arcu et, elementum luctus ante.', 0, 2, ###, NULL jpg),
(27, 25, '89.00', 'PRS-87F', NULL, 2, 5, 'Rouge', 'Crotoy', 'Morbi porta ultricies nibh vel varius. Vestibulum nec rutrum ex, vel posuere nisi. Ut scelerisque sit amet ligula sed imperdiet. Morbi lacinia sapien in elementum iaculis.', 0, 2, ###, NULL jpg),
(28, 21, '288.32', 'POT_001', NULL, 2, 5, 'Orange', 'Agave', '. Vivamus a ultrices enim. Etiam at viverra justo. Cras consectetur justo euismod mi maximus, ac tincidunt leo suscipit. Quisque fermentum, dui eu elementum sagittis, risus lorem placerat ipsum, vitae venenatis tellus sapien id nibh.', 0, 1, ###, ###, jpg),
(29, 21, '32.50', 'POT-002', NULL, 2, 5, 'Noir', 'Dark', 'Curabitur sodales sem vitae ex commodo, in ullamcorper quam congue. Aliquam erat volutpat. Praesent mollis at velit eu molestie.', 0, 1, ###, NULL jpg),
(30, 21, '149.97', 'POT_003', NULL, 2, 5, 'Rose', 'Fuschia', 'Vel porta orci convallis. Duis sodales vehicula porta. Etiam sit amet scelerisque massa. ', 0, 1, ###, NULL jpg),
(31, 6, '245.00', 'POT-381', NULL, 2, 5, 'Marron', 'Iris', 'Praesent nunc dui, porta at leo eget, iaculis ultrices quam. Mauris vulputate metus in nisl aliquam, et sollicitudin nisl mollis. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, 1, ###, NULL jpg),
(32, 2, '9.90', 'SEC-A', NULL, 2, 5, 'Orange', 'Bahco', 'In hac habitasse platea dictumst. Quisque at sagittis nunc.', 0, 3, ###, NULL jpg),
(34, 10, '335.00', 'ENH0335', NULL, 2, 5, 'Rouge', 'Einhell', 'Suspendisse congue nibh sed dui commodo sollicitudin. Vestibulum augue eros, accumsan vel vulputate ut, gravida id libero. Nullam sodales urna id nulla porta vestibulum. Aliquam lectus lacus, tincidunt nec metus.', 0, 4, ###, NULL jpg),
(35, 10, '990.00', 'GRIZ_001', NULL, 2, 5, 'Chrome', 'Grizzly', 'luctus aliquet enim. Phasellus quis velit quis tellus pharetra aliquam in at urna. Cras vitae turpis erat. Phasellus libero arcu, fringilla sit amet tempus blandit, congue eu nulla. Morbi id efficitur tellus.', 0, 4, ###, ###, jpg),
(36, 9, '75.00', 'HERO', NULL, 2, 5, 'Vert', 'Hero', '', 0, 4, ###, NULL jpg),
(37, 9, '120.50', 'SL1280', NULL, 2, 5, 'Vert', 'SL 1280', 'Quisque nec nisi risus. Fusce eu est non velit mollis tristique a et magna. Proin sodales.', 0, 4, ###, ###, jpg),
(38, 10, '348.00', '6cv', NULL, 2, 5, 'Rouge', 'Red 6CV', 'uis vehicula risus in nibh lobortis euismod. In hac habitasse platea dictumst. Quisque at sagittis nunc. Phasellus ac gravida lorem. Aliquam sed aliquam nisl. Etiam non ornare sapien.', 0, 4, ###, ###, jpg),
(39, 10, '497.00', 'TRIKE', NULL, 2, 5, 'Rouge', 'Trike', 'Aenean ut tellus non risus varius bibendum quis vel ligula. ', 0, 4, ###, ###, jpg),
(41, 9, '49.80', 'barb001', NULL, 2, 5, 'Gris', 'Zoom', 'Nunc magna erat, ultrices et facilisis non, viverra in turpis. Nulla orci mi, maximus eu facilisis a, pretium sit amet ex.', 0, 4, ###, NULL jpg),
(42, 10, '1.20', 'barb001', NULL, 2, 5, 'rouge', 'wazaa', 'azerty', 0, 4, ###, NULL jpg);


ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`pro_sup_id`) REFERENCES `suppliers` (`sup_id`);
COMMIT;