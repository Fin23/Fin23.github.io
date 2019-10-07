DROP DATABASE IF EXISTS `sequelize_library`;
CREATE DATABASE `sequelize_library`;



DROP DATABASE IF EXISTS `azmodaious_stats`;
CREATE DATABASE `azmodaious_stats`;
USE `azmodaious_stats`;



CREATE TABLE `skills`(
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `strength`  VARCHAR(30) NOT NULL,
  `dexterity`  VARCHAR(30) NOT NULL,
  `constitution`  VARCHAR(30) NOT NULL,
  `intelligence`  VARCHAR(30) NOT NULL,
  `wisdom`  VARCHAR(30) NOT NULL,
  `charisma`  VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

  INSERT INTO `skills` VALUES
  (1, "11 / +0", "9 / -1", "16 / +3", "19 / +4", "15 / +2", "12 / +1");



CREATE TABLE `ARMOR_CLASS`(
     `id` INT(11) NOT NULL AUTO_INCREMENT,
     `raw ac` INT(11) NOT NULL,
     `armor bonus` INT(11) NOT NULL,
     `spell bonus` INT(11) NOT NULL
)
 INSERT INTO `ARMOR_CLASS` VALUES
  (1, 12, 0, 5);

CREATE TABLE `Initiative`(
     `id` INT(11) NOT NULL AUTO_INCREMENT,
     `raw initiative` INT(11) NOT NULL,
     `initiative bonus` INT(11) NOT NULL
)
 INSERT INTO `Initiative` VALUES
  (1, -1, 0);

CREATE TABLE `Speed`(
     `id` INT(11) NOT NULL AUTO_INCREMENT,
     `raw speed` INT(11) NOT NULL,
     `speed bonus` INT(11) NOT NULL
)
 INSERT INTO `Speed` VALUES
  (1, 30, 0);

CREATE TABLE `Saving Throws`(
     `id` INT(11) NOT NULL AUTO_INCREMENT,
     `intelligence` INT(11) NOT NULL,
     `wisdom` INT(11) NOT NULL,
     `constitution`  VARCHAR(30) NOT NULL
)
 INSERT INTO `Saving Throws` VALUES
  (1, 6, 4, "advantage");

CREATE TABLE `Sub Skills`(
     `id` INT(11) NOT NULL AUTO_INCREMENT,
     `History` INT(11) NOT NULL,
     `Religion` INT(11) NOT NULL,
     `Investigation`  VARCHAR(30) NOT NULL
);
 INSERT INTO `Sub Skills` VALUES
  (1, 6, 6, 6);


CREATE TABLE `Health`(
     `id` INT(11) NOT NULL AUTO_INCREMENT,
     `max hp` INT(11) NOT NULL,
     `current hp` INT(11) NOT NULL,
     `temp hp`  INT(11) NOT NULL,
     `hit dice`  VARCHAR(30) NOT NULL
);
 INSERT INTO `Health` VALUES
  (1, 50, 50, 0, "6d6");

CREATE TABLE `Weapons`(
     `id` INT(11) NOT NULL AUTO_INCREMENT,
     `Weapon name` VARCHAR(30) NOT NULL,
     `Hit` INT(11) NOT NULL,
     `Damage`  VARCHAR(30) NOT NULL,
     `Description`  VARCHAR(200) NOT NULL
);
 INSERT INTO `Weapons` VALUES
  (1, "Quarter Staff", 2, "1d6 / two hand: 1d8","6ft staff carved of weirwood, white in color with carved leaves all around" ),
  (2, "Short Claw", 2, "1d6+1", "smokey colored steal,coper hilt with a white wolf head pomal and red eyes, coted in black inky poison when removed from sheath, creature must succeed on a 15 constitution save, failure recieve 2d10 extra damage, lasts for 1 min" );

