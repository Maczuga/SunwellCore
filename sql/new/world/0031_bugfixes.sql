UPDATE `smart_scripts` SET `action_param1`=13518 WHERE `entryorguid`=3281 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `creature_template` SET`DamageModifier`=2 WHERE `entry`=3281;
UPDATE `creature_template` SET`speed_walk`=0.75, `speed_run`=0.857143 WHERE `entry`=2983;
UPDATE `creature_template` SET `AddedInBuild`=0 WHERE `entry`=36273;
UPDATE `creature_template` SET `AddedInBuild`=0 WHERE `entry`=36517;
# Singragossa Ice Tomb
UPDATE `creature_model_info` SET `BoundingRadius`=7.5, `CombatReach`=6 WHERE `DisplayID`=30890;
# Lazy Peon
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE `id` = '10556';
# Silverpine Troggs 
DELETE FROM `smart_scripts` WHERE  `entryorguid`=1940 AND `source_type`=0 AND `id`=2 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=1940 AND `source_type`=0 AND `id`=3 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=1940 AND `source_type`=0 AND `id`=4 AND `link`=0;
# Herzul and pack - pathing
DELETE FROM `creature_formations` WHERE `memberGUID` IN (13990, 13991, 13992);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (13990, 13990, 0, 0, 2);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (13990, 13991, 4, 90, 2);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (13990, 13992, 4, 270, 2);
UPDATE `creature` SET `MovementType`=2 WHERE  `guid`=13990;
UPDATE `creature_addon` SET `path_id`=139900 WHERE  `guid`=13990;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (139900, 20, -1169.12, -2042.56, 92.2397, 0, 0, 0, 0, 100, 1977705);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (139900, 19, -1139.99, -2067, 85.8363, 0, 0, 0, 0, 100, 1977704);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (139900, 18, -1145.81, -2129.77, 86.5448, 0, 0, 0, 0, 100, 1977703);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (139900, 17, -1173.44, -2200.79, 86.7624, 0, 0, 0, 0, 100, 1977702);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (139900, 16, -1149.07, -2245.8, 84.8565, 0, 0, 0, 0, 100, 1977701);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (139900, 15, -1111.43, -2298.32, 90.548, 0, 0, 0, 0, 100, 1977700);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (139900, 14, -1063.16, -2276.25, 89.5466, 0, 0, 0, 0, 100, 1977699);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (139900, 13, -997.552, -2252.47, 92.8249, 0, 0, 0, 0, 100, 1977698);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (139900, 12, -944.79, -2252.9, 93.3514, 0, 0, 0, 0, 100, 1977697);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (139900, 11, -945.38, -2222.67, 93.0372, 0, 0, 0, 0, 100, 1977696);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (139900, 10, -906.082, -2145.11, 94.0268, 0, 0, 0, 0, 100, 1977695);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (139900, 9, -882.432, -2108.63, 91.9334, 0, 0, 0, 0, 100, 1977694);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (139900, 8, -876.613, -2057.88, 81.6158, 0, 0, 0, 0, 100, 1977693);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (139900, 7, -857.572, -1982.11, 92.0166, 0, 0, 0, 0, 100, 1977692);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (139900, 6, -873.159, -1960.32, 91.8588, 0, 0, 0, 0, 100, 1977691);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (139900, 5, -944.002, -1965.78, 91.7321, 0, 0, 0, 0, 100, 1977690);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (139900, 4, -1034.76, -1931.5, 91.5662, 0, 0, 0, 0, 100, 1977689);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (139900, 3, -1059.16, -1956.59, 90.2053, 0, 0, 0, 0, 100, 1977688);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (139900, 2, -1127, -2002.52, 91.3579, 0, 0, 0, 0, 100, 1977687);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (139900, 1, -1163.95, -2040.68, 92.2289, 0, 0, 0, 0, 100, 1977686);

