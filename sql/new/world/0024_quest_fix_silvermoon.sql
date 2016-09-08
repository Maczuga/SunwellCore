REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(15958, 1, 8728.4, -7144.8, 35.23, 'Gharsul the Remorseless'),
(15656, 1, 8728.4, -7144.8, 35.23, 'Angershade');

UPDATE `creature_template` SET `DamageModifier`=1.25 WHERE `entry`=15656;
UPDATE `creature_template` SET `DamageModifier`=1.5 WHERE `entry`=15958;
