UPDATE `creature_template` SET `unit_flags`=0 WHERE  `entry`=20854;
UPDATE `creature_template_addon` SET `bytes1`=7, `emote`=65 WHERE  `entry`=20561;

-- Creature Withered Corpse 20561 SAI
SET @ENTRY := 20561;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 8, 0, 100, 0, 35372, 0, 0, 0, 33, 20561, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On spell Protectorate Igniter (35372) hit  - Action invoker: Give kill credit Withered Corpse (20561) // "),
(@ENTRY, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 4500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Despawn in 4500 ms // ");

UPDATE creature SET spawntimesecs = 180 WHERE id = 20561;

REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (67375, 673750, 0, 0, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` = 673750;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(673750, 15, 2379.42, 2781.81, 134.493, 0, 0, 0, 0, 100, 0),
(673750, 14, 2387.65, 2789.52, 134.546, 0, 0, 0, 0, 100, 0),
(673750, 13, 2403.12, 2795.53, 134.493, 0, 0, 0, 0, 100, 0),
(673750, 12, 2418.99, 2794.27, 134.493, 0, 0, 0, 0, 100, 0),
(673750, 11, 2432.36, 2786.82, 134.463, 0, 0, 0, 0, 100, 0),
(673750, 10, 2440.59, 2774.22, 134.472, 0, 0, 0, 0, 100, 0),
(673750, 9, 2441.78, 2763.09, 134.493, 0, 0, 0, 0, 100, 0),
(673750, 8, 2439.26, 2749.69, 134.493, 0, 0, 0, 0, 100, 0),
(673750, 7, 2431.09, 2737.6, 134.493, 0, 0, 0, 0, 100, 0),
(673750, 6, 2422.02, 2731.17, 134.493, 0, 0, 0, 0, 100, 0),
(673750, 5, 2409.74, 2728.39, 134.493, 0, 0, 0, 0, 100, 0),
(673750, 4, 2395.39, 2731.12, 134.493, 0, 0, 0, 0, 100, 0),
(673750, 3, 2384.8, 2738.98, 134.457, 0, 0, 0, 0, 100, 0),
(673750, 2, 2376.49, 2752.32, 134.481, 0, 0, 0, 0, 100, 0),
(673750, 1, 2376.45, 2766.16, 134.479, 0, 0, 0, 0, 100, 0);

-- Creature Withered Corpse 20561 SAI
SET @ENTRY := 20561;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 8, 0, 100, 0, 35372, 0, 0, 0, 33, 20561, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On spell Protectorate Igniter (35372) hit  - Action invoker: Give kill credit Withered Corpse (20561) // "),
(@ENTRY, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 4500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Despawn in 4500 ms // ");

UPDATE creature SET spawntimesecs = 180 WHERE id = 20561;

-- Creature  -74948 SAI
SET @GUID := -74948;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@GUID, 0, 0, 0, 38, 0, 100, 0, 2, 2, 0, 0, 47, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data 2 set to 2 - Self: Set visible // "),
(@GUID, 0, 1, 0, 38, 0, 100, 0, 1, 1, 0, 0, 53, 1, 1815200, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data 1 set to 1 - Self: Start path #1815200, run, do not repeat, Passive // "),
(@GUID, 0, 2, 3, 58, 0, 100, 0, 1, 1815200, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 5.37561, "On wapoint 1 of path 1815200 ended - Self: Look at (0, 0, 0, 5.37561) // "),
(@GUID, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, 1815200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Start timed action list id #1815200 // "),
(@GUID, 0, 4, 0, 36, 0, 100, 0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On creature corpse removed - Self: Respawn // "),
(@GUID, 0, 5, 6, 11, 0, 100, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On respawn  - Self: Set invisible // "),
(@GUID, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Set emote state (UNIT_NPC_EMOTESTATE) to ONESHOT_NONE (0) // ");

-- Creature  -74949 SAI
SET @GUID := -74949;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@GUID, 0, 0, 0, 38, 0, 100, 0, 2, 2, 0, 0, 47, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data 2 set to 2 - Self: Set visible // "),
(@GUID, 0, 1, 0, 38, 0, 100, 0, 1, 1, 0, 0, 53, 1, 1815201, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data 1 set to 1 - Self: Start path #1815201, run, do not repeat, Passive // "),
(@GUID, 0, 2, 3, 58, 0, 100, 0, 1, 1815201, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 4.88692, "On wapoint 1 of path 1815201 ended - Self: Look at (0, 0, 0, 4.88692) // "),
(@GUID, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, 1815200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Start timed action list id #1815200 // "),
(@GUID, 0, 4, 0, 36, 0, 100, 0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On creature corpse removed - Self: Respawn // "),
(@GUID, 0, 5, 6, 11, 0, 100, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On respawn  - Self: Set invisible // "),
(@GUID, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Set emote state (UNIT_NPC_EMOTESTATE) to ONESHOT_NONE (0) // ");

-- Creature  -74951 SAI
SET @GUID := -74951;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@GUID, 0, 0, 0, 38, 0, 100, 0, 2, 2, 0, 0, 47, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data 2 set to 2 - Self: Set visible // "),
(@GUID, 0, 1, 0, 38, 0, 100, 0, 1, 1, 0, 0, 53, 1, 1815203, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data 1 set to 1 - Self: Start path #1815203, run, do not repeat, Passive // "),
(@GUID, 0, 2, 3, 58, 0, 100, 0, 1, 1815203, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 2.9147, "On wapoint 1 of path 1815203 ended - Self: Look at (0, 0, 0, 2.9147) // "),
(@GUID, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, 1815200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Start timed action list id #1815200 // "),
(@GUID, 0, 4, 0, 36, 0, 100, 0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On creature corpse removed - Self: Respawn // "),
(@GUID, 0, 5, 6, 11, 0, 100, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On respawn  - Self: Set invisible // "),
(@GUID, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Set emote state (UNIT_NPC_EMOTESTATE) to ONESHOT_NONE (0) // ");

-- Creature  -74950 SAI
SET @GUID := -74950;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@GUID, 0, 0, 0, 38, 0, 100, 0, 2, 2, 0, 0, 47, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data 2 set to 2 - Self: Set visible // "),
(@GUID, 0, 1, 0, 38, 0, 100, 0, 1, 1, 0, 0, 53, 1, 1815202, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data 1 set to 1 - Self: Start path #1815202, run, do not repeat, Passive // "),
(@GUID, 0, 2, 3, 58, 0, 100, 0, 1, 1815202, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 3.15905, "On wapoint 1 of path 1815202 ended - Self: Look at (0, 0, 0, 3.15905) // "),
(@GUID, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, 1815200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Start timed action list id #1815200 // "),
(@GUID, 0, 4, 0, 36, 0, 100, 0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On creature corpse removed - Self: Respawn // "),
(@GUID, 0, 5, 6, 11, 0, 100, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On respawn  - Self: Set invisible // "),
(@GUID, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Set emote state (UNIT_NPC_EMOTESTATE) to ONESHOT_NONE (0) // ");

REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `QuestRequired`) VALUES (28145, 38382, 1);
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(1, 28145, 38382, 0, 0, 1, 0, 50894, 0, 0, 0, 0, 0, '', 'Loot requires aura');

-- Creature Slain Sha'tar Vindicator 21859 SAI
SET @ENTRY := 21859;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On reset (e.g. after reaching home) - Self: Set event phase to 1 // "),
(@ENTRY, 0, 1, 2, 8, 1, 100, 0, 39189, 0, 0, 0, 33, 21859, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On spell Sha'tari Torch (39189) hit  - Action invoker: Give kill credit Slain Sha'tar Vindicator (21859) // On Spell Hit - Kill Credit"),
(@ENTRY, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 41, 10000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Despawn in 10000 ms // On Spell Hit - Despawn"),
(@ENTRY, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 11, 59216, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Cast spell Burning Corpse (59216) on Self // On Spell Hit - Cast Spell"),
(@ENTRY, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Set event phase to 2 // ");

UPDATE npc_text SET text0_0 = "Greetings, $n." WHERE text0_0 = "MISSING TEXT";

-- Creature Wastewander Rogue 5615 SAI
SET @ENTRY := 5615;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 11, 8218, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When out of combat and timer at the begining between 1000 and 1000 ms (and later repeats every 0 and 0 ms) - Self: Cast spell Sneak (8218) on Self // "),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 3000, 6000, 6000, 10000, 11, 8721, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 3000 and 6000 ms (and later repeats every 6000 and 10000 ms) - Self: Cast spell Backstab (8721) on Victim // ");

UPDATE `creature_template` SET `unit_flags`=0 WHERE  `entry`=7856;

REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(11361, 0, 1, 'I want to browse your goods', 0, 3, 128, 0, 0, 0, 0, NULL, 0, 0);

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 11361, 0, 0, 0, 8, 0, 7003, 0, 0, 0, 0, 0, '', 'Show gossip option if player does have quest 7003 completed'),
(15, 11361, 0, 0, 0, 8, 0, 7721, 0, 0, 0, 0, 0, '', 'Show gossip option if player does have quest 7721 completed');

DELETE FROM conditions WHERE SourceTypeOrReferenceId=13 AND SourceEntry=32307;
INSERT INTO conditions VALUES (13, 3, 32307, 0, 0, 36, 0, 0, 0, 0, 1, 0, 0, '', 'Target must be dead');
INSERT INTO conditions VALUES (13, 3, 32307, 0, 0, 31, 0, 3, 17148, 0, 0, 0, 0, '', "Spell Place Kil'sorrow Banner can only be cast on Kil'sorrow mobs");
INSERT INTO conditions VALUES (13, 3, 32307, 0, 1, 31, 0, 3, 18658, 0, 0, 0, 0, '', "Spell Place Kil'sorrow Banner can only be cast on Kil'sorrow mobs");
INSERT INTO conditions VALUES (13, 3, 32307, 0, 2, 31, 0, 3, 17147, 0, 0, 0, 0, '', "Spell Place Kil'sorrow Banner can only be cast on Kil'sorrow mobs");
INSERT INTO conditions VALUES (13, 3, 32307, 0, 3, 31, 0, 3, 17146, 0, 0, 0, 0, '', "Spell Place Kil'sorrow Banner can only be cast on Kil'sorrow mobs");
INSERT INTO conditions VALUES (13, 3, 32307, 0, 4, 31, 0, 3, 18391, 0, 0, 0, 0, '', "Spell Place Kil'sorrow Banner can only be cast on Kil'sorrow mobs");
DELETE FROM conditions WHERE SourceTypeOrReferenceId=17 AND SourceEntry=32307;
INSERT INTO conditions VALUES (17, 0, 32307, 0, 0, 36, 0, 0, 0, 0, 1, 0, 0, '', 'Target must be dead');
INSERT INTO conditions VALUES (17, 0, 32307, 0, 0, 29, 0, 17148, 5, 1, 0, 12, 0, '', "Spell Place Kil'sorrow Banner can only be cast on Kil'sorrow mobs");
INSERT INTO conditions VALUES (17, 0, 32307, 0, 1, 29, 0, 18658, 5, 1, 0, 12, 0, '', "Spell Place Kil'sorrow Banner can only be cast on Kil'sorrow mobs");
INSERT INTO conditions VALUES (17, 0, 32307, 0, 2, 29, 0, 17147, 5, 1, 0, 12, 0, '', "Spell Place Kil'sorrow Banner can only be cast on Kil'sorrow mobs");
INSERT INTO conditions VALUES (17, 0, 32307, 0, 3, 29, 0, 17146, 5, 1, 0, 12, 0, '', "Spell Place Kil'sorrow Banner can only be cast on Kil'sorrow mobs");
INSERT INTO conditions VALUES (17, 0, 32307, 0, 4, 29, 0, 18391, 5, 1, 0, 12, 0, '', "Spell Place Kil'sorrow Banner can only be cast on Kil'sorrow mobs");
INSERT INTO conditions VALUES (17, 0, 32307, 0, 0, 30, 0, 182353, 10, 0, 1, 12, 0, '', "Spell Place Kil'sorrow Banner can only be cast if no banner is present");

-- Creature Angry Murloc 17102 SAI
SET @ENTRY := 17102;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 25, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "When health between 0% and 15% (check every 0 - 0 ms) - Self: Flee for assist // "),
(@ENTRY, 0, 1, 0, 54, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, "On just summoned - Self: Attack Closest enemy creature in 0 yards // ");


-- Gameobject Anchorite Relic 185298 SAI
SET @ENTRY := 185298;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 1, 0, 0, 70, 0, 100, 0, 2, 0, 0, 0, 99, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On loot state changed to GO_ACTIVATED - Self: Set loot state GO_READY (only gameobjects) // ");

-- Creature Sunfury Nethermancer 20248 SAI
SET @ENTRY := 20248;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 300000, 300000, 11, 36477, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When out of combat and timer at the begining between 1000 and 1000 ms (and later repeats every 300000 and 300000 ms) - Self: Cast spell Summon Mana Beast (36477) on Self // Sunfury Nethermancer - Out of Combat - Disable Combat Movement"),
(@ENTRY, 0, 1, 0, 9, 0, 100, 0, 0, 30, 3400, 4800, 11, 9613, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When victim in range 0 - 30 yards (check every 3400 - 4800 ms) - Self: Cast spell Shadow Bolt (9613) on Victim // Sunfury Nethermancer - Out of Combat - Cast 'Summon Mana Beast'"),
(@ENTRY, 0, 2, 0, 0, 0, 100, 0, 0, 0, 30000, 35000, 11, 35778, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 30000 and 35000 ms) - Self: Cast spell Bloodcrystal Surge (35778) on Self // Sunfury Nethermancer - On Aggro - Cast 'Bloodcrystal Surge' (No Repeat)"),
(@ENTRY, 0, 3, 0, 2, 0, 100, 0, 0, 75, 15000, 20000, 11, 17173, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When health between 0% and 75% (check every 15000 - 20000 ms) - Self: Cast spell Drain Life (17173) on Victim // Sunfury Nethermancer - On Aggro - Cast 'Shadow Bolt' (No Repeat)"),
(@ENTRY, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "When health between 0% and 15% (check every 0 - 0 ms) - Self: Flee for assist // Sunfury Nethermancer - On Aggro - Increment Phase By 1 (No Repeat)"),
(@ENTRY, 0, 5, 0, 1, 0, 50, 0, 10000, 20000, 15000, 30000, 11, 34397, 0, 0, 0, 0, 0, 19, 19421, 30, 0, 0, 0, 0, 0, "When out of combat and timer at the begining between 10000 and 20000 ms (and later repeats every 15000 and 30000 ms) (50% chance) - Self: Cast spell Red Beam (34397) on Closest alive creature Netherstorm Crystal Target (19421) in 30 yards // 20248 - Ooc - Cast Red Beam");

INSERT INTO `creature_questender` (`id`, `quest`) VALUES (3216, 3121);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (3216, 3122);

INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES 
(27531, 571, 0, 0, 1, 1, 0, 0, 3656.72, 748.811, 81.6333, 2.7022, 120, 0, 0, 51410, 0, 0, 0, 0, 0, 0),
(27531, 571, 0, 0, 1, 1, 0, 0, 3642.64, 1209.49, 131.166, 1.52018, 120, 0, 0, 51410, 0, 0, 0, 0, 0, 0);

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES (105757, 27244, 571, 0, 0, 1, 1, 24453, 0, 2801.95, 7.25871, 4.26567, 4.96257, 300, 0, 0, 9940, 0, 0, 0, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES (123494, 31135, 571, 0, 0, 1, 1, 27074, 0, 8216.64, 3516.06, 624.996, 3.57661, 300, 0, 0, 12600, 0, 0, 0, 0, 0, 0);

-- Creature Injured Warsong Warrior 27106 SAI
SET @ENTRY := 27106;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 8, 0, 100, 1, 47962, 0, 0, 0, 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On spell Rescue Injured Soldier (47962) hit  - Self: Despawn in 1 ms // Injured Warsong Warrior - On Spell hit - Despawn after 1sec");

DELETE FROM `smart_scripts` WHERE `entryorguid`=22895 AND `source_type`=0;
UPDATE `creature_template` SET `speed_walk`=0.01, `faction`=14, `unit_flags`=131076, `spell1`=39592, `AIName`="" WHERE `entry`=22895;

UPDATE `creature_template` SET DamageModifier = 12 WHERE entry in (18972, 18950, 18970, 18948, 18986, 18965);
UPDATE `creature_template` SET DamageModifier = 20 WHERE entry in (18969, 18966);