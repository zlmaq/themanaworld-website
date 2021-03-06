CREATE TABLE `tmw_accounts` 
(
   `ID`              INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
   `USERNAME`        VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
   `PASSWORD`        VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
   `EMAIL`           VARCHAR( 200 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
   `STATE`           TINYINT UNSIGNED NOT NULL DEFAULT '0',
   `REGISTRATION`    TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
   `GENDER`          TINYINT UNSIGNED NOT NULL DEFAULT '0',
   --
   INDEX ( `STATE` ) ,
   UNIQUE ( `USERNAME` )
) ENGINE = InnoDB;
