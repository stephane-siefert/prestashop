/* PHP:ps_1771_update_customer_note(); */;

SET SESSION sql_mode='';
SET NAMES 'utf8';

UPDATE `PREFIX_currency` SET numeric_iso_code = LPAD(numeric_iso_code, 3, '0') WHERE LENGTH(numeric_iso_code) != 3;

/* add id_order in cart */
ALTER TABLE `PREFIX_cart`
    ADD `id_order` INT(10) UNSIGNED NULL DEFAULT NULL,
    ADD INDEX (id_order);
