CREATE TABLE `proj_news`.`menu` ( 
    `id` INT(11) NOT NULL , 
    `name` VARCHAR(255) NULL DEFAULT NULL , 
    `status` VARCHAR(255) NULL DEFAULT NULL , 
    `ordering` INT(11) NULL DEFAULT NULL , 
    `link` TEXT NULL DEFAULT NULL , 
    `type_menu` VARCHAR(255) NULL DEFAULT NULL , 
    `type_open` VARCHAR(255) NULL DEFAULT NULL 
) ENGINE = InnoDB;


ALTER TABLE `proj_news`.`menu` 
  ADD PRIMARY KEY (`id`) USING BTREE;

ALTER TABLE `proj_news`.`menu` 
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;