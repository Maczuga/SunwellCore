DROP TABLE IF EXISTS `account_premium`;
CREATE TABLE IF NOT EXISTS `account_premium` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Account id',
  `premium_type` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `set_date` int(4) NOT NULL DEFAULT '0',
  `unset_date` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`premium_type`),
  KEY `setdate` (`set_date`),
  KEY `unsetdate` (`unset_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
