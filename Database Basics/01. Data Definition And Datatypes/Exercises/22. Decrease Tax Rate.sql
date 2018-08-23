USE hotel;

UPDATE payments SET `tax_rate`=`tax_rate`* 0.97 WHERE id > 0;
SELECT `tax_rate` FROM `payments`;
