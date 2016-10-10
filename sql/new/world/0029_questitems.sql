ALTER TABLE `creature_template`
	ADD COLUMN `questItem1` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `RacialLeader`,
	ADD COLUMN `questItem2` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `questItem1`,
	ADD COLUMN `questItem3` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `questItem2`,
	ADD COLUMN `questItem4` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `questItem3`,
	ADD COLUMN `questItem5` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `questItem4`,
	ADD COLUMN `questItem6` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `questItem5`;

ALTER TABLE `gameobject_template`
	ADD COLUMN `questItem1` INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER `size`,
	ADD COLUMN `questItem2` INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER `questItem1`,
	ADD COLUMN `questItem3` INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER `questItem2`,
	ADD COLUMN `questItem4` INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER `questItem3`,
	ADD COLUMN `questItem5` INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER `questItem4`,
	ADD COLUMN `questItem6` INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER `questItem5`;

UPDATE `creature_template` ct SET ct.`questItem1` = IFNULL((SELECT ItemId FROM `creature_questitem` WHERE `CreatureEntry` = ct.Entry AND `Idx` = 0), 0);
UPDATE `creature_template` ct SET ct.`questItem2` = IFNULL((SELECT ItemId FROM `creature_questitem` WHERE `CreatureEntry` = ct.Entry AND `Idx` = 1), 0);
UPDATE `creature_template` ct SET ct.`questItem3` = IFNULL((SELECT ItemId FROM `creature_questitem` WHERE `CreatureEntry` = ct.Entry AND `Idx` = 2), 0);
UPDATE `creature_template` ct SET ct.`questItem4` = IFNULL((SELECT ItemId FROM `creature_questitem` WHERE `CreatureEntry` = ct.Entry AND `Idx` = 3), 0);
UPDATE `creature_template` ct SET ct.`questItem5` = IFNULL((SELECT ItemId FROM `creature_questitem` WHERE `CreatureEntry` = ct.Entry AND `Idx` = 4), 0);
UPDATE `creature_template` ct SET ct.`questItem6` = IFNULL((SELECT ItemId FROM `creature_questitem` WHERE `CreatureEntry` = ct.Entry AND `Idx` = 5), 0);

UPDATE `gameobject_template` gt SET gt.`questItem1` = IFNULL((SELECT ItemId FROM `gameobject_questitem` WHERE `GameObjectEntry` = gt.Entry AND `Idx` = 0), 0);
UPDATE `gameobject_template` gt SET gt.`questItem2` = IFNULL((SELECT ItemId FROM `gameobject_questitem` WHERE `GameObjectEntry` = gt.Entry AND `Idx` = 1), 0);
UPDATE `gameobject_template` gt SET gt.`questItem3` = IFNULL((SELECT ItemId FROM `gameobject_questitem` WHERE `GameObjectEntry` = gt.Entry AND `Idx` = 2), 0);
UPDATE `gameobject_template` gt SET gt.`questItem4` = IFNULL((SELECT ItemId FROM `gameobject_questitem` WHERE `GameObjectEntry` = gt.Entry AND `Idx` = 3), 0);
UPDATE `gameobject_template` gt SET gt.`questItem5` = IFNULL((SELECT ItemId FROM `gameobject_questitem` WHERE `GameObjectEntry` = gt.Entry AND `Idx` = 4), 0);
UPDATE `gameobject_template` gt SET gt.`questItem6` = IFNULL((SELECT ItemId FROM `gameobject_questitem` WHERE `GameObjectEntry` = gt.Entry AND `Idx` = 5), 0);

DROP TABLE `creature_questitem`;
DROP TABLE `gameobject_questitem`;