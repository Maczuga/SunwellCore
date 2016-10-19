UPDATE `creature_template` SET `scale`=10 WHERE `entry`=28013;

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES 
(42888, 28013, 571, 0, 0, 1, 1, 0, 0, 2456.49, -400.943, 34.6589, 6.17437, 300, 0, 0, 42, 0, 0, 0, 33554432, 0, 0),
(42887, 28013, 571, 0, 0, 1, 1, 0, 0, 2488.95, -399.983, 30.8896, 0.150357, 300, 0, 0, 42, 0, 0, 0, 33554432, 0, 0);

UPDATE `gossip_menu_option` SET `npc_option_npcflag`=128 WHERE  `menu_id`=9487 AND `id`=0;
UPDATE `gossip_menu_option` SET `option_id`=3 WHERE  `menu_id`=9487 AND `id`=0;

-- Creature Northeast Tent 23752 SAI
SET @ENTRY := 23752;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 8, 0, 100, 0, 42356, 0, 0, 0, 33, 23752, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On spell Burn Direhorn Post (42356) hit  - Action invoker: Give kill credit Northeast Tent (23752) // "),
(@ENTRY, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 20, 186310, 10, 0, 0, 0, 0, 0, " Linked - Closest gameobject Grimtotem Tent (186310) in 10 yards: Activate (only gameobject) // ");

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (17, 0, 47431, 0, 0, 31, 1, 3, 26359, 0, 0, 0, 0, '', 'Spell Capture Jormungar Spawn can only be cast on Ice Heart Jormungar Spawn');
-- Creature Ice Heart Jormungar Spawn 26359 SAI
SET @ENTRY := 26359;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 9, 0, 100, 0, 0, 5, 10000, 15000, 11, 43358, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When victim in range 0 - 5 yards (check every 10000 - 15000 ms) - Self: Cast spell Gut Rip (43358) on Victim // "),
(@ENTRY, 0, 1, 0, 8, 0, 100, 0, 47431, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On spell Capture Jormungar Spawn (47431) hit  - Self: Despawn instantly // ");

DELETE FROM `spell_scripts` WHERE id IN (48285, 48297);
REPLACE INTO `spell_scripts` (`id`, `effIndex`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(48297, 1, 1, 18, 0, 0, 0, 0, 0, 0, 0),
(49285, 1, 1, 18, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `disables` (`entry`, `flags`) VALUES (47939, 64);
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=47939;
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 0, 47939, 0, 0, 31, 0, 5, 188539, 0, 0, 0, 0, '', 'Gather Lumber - limit GO targets to Coldwind Tree');

-- Gameobject Coldwind Tree 188539 SAI
SET @ENTRY := 188539;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 1, 0, 0, 8, 0, 100, 0, 47939, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On spell Gather Lumber (47939) hit  - Self: Despawn instantly // ");

-- A Necessary Distraction (10688)
-- A Necessary Distraction (10637)
DELETE FROM conditions WHERE SourceTypeOrReferenceId=17 AND SourceEntry IN(37834);
DELETE FROM conditions WHERE SourceTypeOrReferenceId=13 AND SourceEntry IN(37834);
INSERT INTO conditions VALUES(17, 0, 37834, 0, 0, 31, 1, 3, 21506, 0, 0, 0, 0, '', 'Requires Azaloth');
INSERT INTO conditions VALUES(17, 0, 37834, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, '', 'Requires Azaloth');
DELETE FROM spell_scripts WHERE id=37834;
INSERT INTO spell_scripts VALUES(37834, 0, 0, 14, 32567, 0, 0, 0, 0, 0, 0);
INSERT INTO spell_scripts VALUES(37834, 0, 0, 8, 21892, 0, 0, 0, 0, 0, 0);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id=21506);

DELETE FROM `creature_template_addon` WHERE `entry`=21506;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(21506, 0, 0x0, 0x1, '32567'); -- 21506 - 37833

UPDATE `creature_template` SET `faction`=954, `unit_flags`=32768 WHERE  `entry`=21506; -- 954

-- Creature Azaloth 21506 SAI
SET @ENTRY := 21506;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 18, 131076, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On reset (e.g. after reaching home) - Self: Set UNIT_FLAGS to UNIT_FLAG_DISABLE_MOVE, UNIT_FLAG_PACIFIED // "),
(@ENTRY, 0, 1, 2, 8, 0, 100, 0, 37834, 0, 0, 0, 19, 131076, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On spell Unbanish Azaloth (37834) hit  - Self: Remove UNIT_FLAGS to UNIT_FLAG_DISABLE_MOVE, UNIT_FLAG_PACIFIED // "),
(@ENTRY, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 33, 21892, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, " Linked - Action invoker: Give kill credit Azaloth Credit Marker (21892) // "),
(@ENTRY, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 28, 37833, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Remove aura due to spell Banish (37833) // ");

-- Creature Sunfury Warlock 21503 SAI
SET @ENTRY := 21503;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 1, 0, 100, 0, 0, 0, 15000, 15000, 11, 38722, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When out of combat and timer at the begining between 0 and 0 ms (and later repeats every 15000 and 15000 ms) - Self: Cast spell Spellbind Azaloth (38722) on Self // ");


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=21503 AND SourceId = 0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22, 1, 21503, 0, 0, 29, 0, 21506, 20, 0, 0, "", "If there is creature Azaloth (21506) within range 20 yards to Invoker");


UPDATE creature_template SET unit_flags = unit_flags & 256 WHERE entry in (19720, 19725, 19726, 23864);

-- Creature Wrangled Aether Ray 23343 SAI
SET @ENTRY := 23343;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 29, 5, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, "On just summoned - Self: Follow Owner/Summoner by distance 5, angle 0 // "),
(@ENTRY, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Set react state to REACT_PASSIVE // "),
(@ENTRY, 0, 2, 0, 1, 0, 100, 1, 500, 500, 0, 0, 11, 40926, 66, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, "When out of combat and timer at the begining between 2000 and 2000 ms (and later repeats every 0 and 0 ms) - Self: Cast spell Wrangle Aether Rays: Wrangling Rope Channel (40926) on Owner/Summoner // ");

UPDATE `creature_template` SET `HoverHeight`=1 WHERE  `entry`=26858;

UPDATE `creature_template` SET `unit_flags`=512, `flags_extra`=0 WHERE  `entry`=18209;

-- TimedActionList  2700300 SAI
SET @ENTRY := 2700300;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 23, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Increment phase by 1 and decrement by 0 // "),
(@ENTRY, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 24, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Evade // "),
(@ENTRY, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Disable combat based movement // "),
(@ENTRY, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 18, 164418, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Set UNIT_FLAGS to UNIT_FLAG_NON_ATTACKABLE, UNIT_FLAG_UNK_6, UNIT_FLAG_IMMUNE_TO_NPC, UNIT_FLAG_UNK_15, UNIT_FLAG_PACIFIED // "),
(@ENTRY, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 75, 48325, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Add aura Rune Shield (48325) // "),
(@ENTRY, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Talk 2 // "),
(@ENTRY, 9, 6, 0, 0, 0, 100, 0, 0, 14000, 0, 0, 11, 48028, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 14000 ms (and later repeats every 0 and 0 ms) - Self: Cast spell Reclusive Runemaster Quest Complete (48028) on Self // "),
(@ENTRY, 9, 7, 0, 0, 0, 100, 0, 0, 14000, 0, 0, 19, 514, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 14000 ms (and later repeats every 0 and 0 ms) - Self: Remove UNIT_FLAGS to UNIT_FLAG_NON_ATTACKABLE, UNIT_FLAG_IMMUNE_TO_NPC // "),
(@ENTRY, 9, 8, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Despawn instantly // ");

UPDATE `creature_template` SET `flags_extra`=2 WHERE  `entry`=27400;
UPDATE `creature_template` SET `unit_flags`=536904450 WHERE  `entry`=27400;

REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (97213, 0, 0, 7, 1, 65, NULL);
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (103288, 0, 0, 7, 1, 65, NULL);

UPDATE `creature_template` SET `speed_walk`=0.01, `unit_flags`=131076, `spell1`=0, `AIName` = "", `flags_extra` = 0 WHERE `entry`=2667;
REPLACE INTO `creature_template_addon` (`entry`, `auras`) VALUES (2667, '3825');
UPDATE `creature_template` SET `speed_walk`=0.01 WHERE  `entry`=6066;

DELETE from creature_addon WHERE guid IN (select guid from creature where id = 18240);
UPDATE `creature_template_addon` SET `emote`=65, `bytes2`=0 WHERE  `entry`=18240;
UPDATE `creature_template` SET `dynamicflags`=32 WHERE  `entry`=18240;

DELETE FROM `creature` WHERE  `guid`=105029;


UPDATE `gameobject_template` SET `Data15`=1 WHERE  `entry` IN (185567, 185569, 185574);

REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (51844, 'spell_q12634_some_make_lemonade');

UPDATE `quest_template_addon` SET `SpecialFlags`=2 WHERE  `ID`=3129;

-- TimedActionList  811500 SAI
SET @ENTRY := 811500;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Set sheath to Unarmed // "),
(@ENTRY, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 5, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 2000 and 2000 ms (and later repeats every 0 and 0 ms) - Self: Play emote ONESHOT_KNEEL (16) // "),
(@ENTRY, 9, 2, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 3000 and 3000 ms (and later repeats every 0 and 0 ms) - Self: Play emote ONESHOT_NONE (0) // "),
(@ENTRY, 9, 3, 0, 0, 0, 100, 0, 200, 200, 0, 0, 40, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 200 and 200 ms (and later repeats every 0 and 0 ms) - Self: Set sheath to Melee // "),
(@ENTRY, 9, 4, 0, 0, 0, 100, 0, 800, 800, 0, 0, 17, 173, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 800 and 800 ms (and later repeats every 0 and 0 ms) - Self: Set emote state (UNIT_NPC_EMOTESTATE) to STATE_WORK (173) // "),
(@ENTRY, 9, 5, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 7000 and 7000 ms (and later repeats every 0 and 0 ms) - Self: Set emote state (UNIT_NPC_EMOTESTATE) to 0 // ");

-- Creature Witch Doctor Uzer'i 8115 SAI
SET @ENTRY := 8115;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 19, 0, 100, 0, 3129, 0, 0, 0, 53, 1, 8115, 0, 3129, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When player accepts quest Weapons of Spirit (3129) - Self: Start path #8115, run, do not repeat, Passive // "),
(@ENTRY, 0, 1, 2, 40, 0, 100, 0, 2, 8115, 0, 0, 80, 811500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On wapoint 2 of path 8115 reached - Start timed action list id #811500 // "),
(@ENTRY, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 54, 14000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Pause path for 14000 ms // "),
(@ENTRY, 0, 3, 4, 58, 0, 100, 0, 4, 8115, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On wapoint 4 of path 8115 ended - Action invoker: Talk 0 // "),
(@ENTRY, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 15, 3129, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, " Linked - Action invoker: Call quest Weapons of Spirit (3129) group event happened // "),
(@ENTRY, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 4, " Linked - Self: Look at (0, 0, 0, 4) // ");

REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `TextRange`, `comment`, `BroadcastTextID`) VALUES 
(8115, 0, 0, 'I have completed the weapons, $N.', 12, 0, 0, 0, 0, 0, 0, '', 0);

-- TimedActionList  2735900 SAI
SET @ENTRY := 2735900;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Set react state to REACT_PASSIVE // "),
(@ENTRY, 9, 1, 0, 0, 0, 100, 0, 10, 10, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 10 and 10 ms (and later repeats every 0 and 0 ms) - Self: Set UNIT_FLAGS to UNIT_FLAG_IMMUNE_TO_PC, UNIT_FLAG_IMMUNE_TO_NPC // "),
(@ENTRY, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Set event phase to 2 // "),
(@ENTRY, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Play emote ONESHOT_CHEER(DNR) (4) // "),
(@ENTRY, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Talk 0 // "),
(@ENTRY, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 59, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Set run // "),
(@ENTRY, 9, 6, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 69, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 3719.13, -839.1, 164.9, 0, "When in combat and timer at the begining between 2000 and 2000 ms (and later repeats every 0 and 0 ms) - Self: Move to position (3719.13, -839.1, 164.9, 0) (point id 1) // "),
(@ENTRY, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Despawn in 5000 ms // ");

REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (8115, 1, -4378.31, 257.865, 26.2, NULL);
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (8115, 2, -4382.57, 256.647, 25.9171, NULL);
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (8115, 3, -4378.31, 257.865, 26.2, NULL);
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (8115, 4, -4375.44, 269.821, 25.4891, NULL);

UPDATE `event_scripts` SET `x`=2580.555, `y`=1067.1992, `z`=-31.1, `o`=5.69 WHERE `id`=17567;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`) VALUES (26510, 1, 2597.43, 1056.23, -32.3598);
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`) VALUES (26510, 2, 2651.05, 1016.86, -27.6206);
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`) VALUES (26510, 3, 2660.67, 998.6, -25.9708);
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`) VALUES (26510, 4, 2650.99, 991.827, -25.5381);
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`) VALUES (26510, 5, 2646.937, 1001.912, -25.25);

-- Creature Tu'u'gwar 26510 SAI
SET @ENTRY := 26510;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 18, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On just summoned - Self: Set UNIT_FLAGS to UNIT_FLAG_NON_ATTACKABLE // "),
(@ENTRY, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 53, 0, 26510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Start path #26510, walk, do not repeat, Passive // "),
(@ENTRY, 0, 2, 0, 40, 0, 100, 0, 5, 26510, 0, 0, 80, 2651000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On wapoint 5 of path 26510 reached - Start timed action list id #2651000 // ");

-- TimedActionList  2651000 SAI
SET @ENTRY := 2651000;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Look at (0, 0, 0, 1) // "),
(@ENTRY, 9, 1, 0, 0, 0, 100, 0, 500, 500, 0, 0, 5, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 500 and 500 ms (and later repeats every 0 and 0 ms) - Self: Play emote ONESHOT_ATTACKUNARMED (35) // "),
(@ENTRY, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 1000 and 1000 ms (and later repeats every 0 and 0 ms) - Self: Play emote 0 // "),
(@ENTRY, 9, 3, 0, 0, 0, 100, 0, 500, 500, 0, 0, 19, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 500 and 500 ms (and later repeats every 0 and 0 ms) - Self: Remove UNIT_FLAGS to UNIT_FLAG_NON_ATTACKABLE // "),
(@ENTRY, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Set react state to REACT_AGGRESSIVE // ");

DELETE FROM `creature_summon_groups` WHERE `summonerId` = 9020;
INSERT INTO `creature_summon_groups` (`summonerId`, `entry`, `position_x`, `position_y`, `position_z`, `orientation`, `summonType`, `summonTime`) VALUES 
(9020, 8889, 383.705, -203.343, -68.869, 2.01, 4, 15000),
(9020, 8889, 376.020, -202.206, -70.2751, 1.53, 4, 15000),
(9020, 8901, 383.705, -203.343, -68.869, 2.01, 4, 15000),
(9020, 8901, 376.020, -202.206, -70.2751, 1.53, 4, 15000);

UPDATE `creature_template` SET `DamageModifier`=2 WHERE  `entry`=9020;

-- Creature Commander Gor'shak 9020 SAI
SET @ENTRY := 9020;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 19, 0, 100, 0, 0, 0, 0, 0, 19, 512, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When player accepts any quest - Self: Remove UNIT_FLAGS to UNIT_FLAG_IMMUNE_TO_NPC // "),
(@ENTRY, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, 902000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Start timed action list id #902000 // "),
(@ENTRY, 0, 2, 3, 38, 0, 100, 256, 1, 1, 0, 0, 15, 3982, 0, 0, 0, 0, 0, 17, 0, 200, 0, 0, 0, 0, 0, "On data 1 set to 1 - Players in 0 - 200 yards: Call quest What Is Going On? (3982) group event happened // "),
(@ENTRY, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 18, 512, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Set UNIT_FLAGS to UNIT_FLAG_IMMUNE_TO_NPC // "),
(@ENTRY, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Set event phase to 2 // "),
(@ENTRY, 0, 5, 0, 6, 0, 100, 0, 0, 0, 0, 0, 18, 512, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On death - Self: Set UNIT_FLAGS to UNIT_FLAG_IMMUNE_TO_NPC // ");

-- TimedActionList  902000 SAI
SET @ENTRY := 902000;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 9, 0, 0, 0, 0, 100, 256, 3000, 3000, 0, 0, 107, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 3000 and 3000 ms (and later repeats every 0 and 0 ms) - Self: Summon creature group 0 // "),
(@ENTRY, 9, 1, 0, 0, 0, 100, 256, 5000, 5000, 0, 0, 107, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 5000 and 5000 ms (and later repeats every 0 and 0 ms) - Self: Summon creature group 0 // "),
(@ENTRY, 9, 2, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 45, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 2000 and 2000 ms (and later repeats every 0 and 0 ms) - Self: Set creature data #1 to 1 // ");

-- Creature Anvilrage Overseer 8889 SAI
SET @ENTRY := 8889;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 13589, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Cast spell Haste Aura (13589) on Self // "),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 5000, 5000, 8000, 8000, 11, 15580, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 5000 and 5000 ms (and later repeats every 8000 and 8000 ms) - Self: Cast spell Strike (15580) on Victim // "),
(@ENTRY, 0, 2, 0, 63, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 19, 9020, 30, 0, 0, 0, 0, 0, "When just created - Self: Attack Closest alive creature Commander Gor'shak (9020) in 30 yards // ");

-- Creature Anvilrage Reservist 8901 SAI
SET @ENTRY := 8901;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 4, 0, 100, 3, 0, 0, 0, 0, 11, 9128, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On aggro - Self: Cast spell Battle Shout (9128) on Self // "),
(@ENTRY, 0, 1, 0, 0, 0, 100, 2, 0, 0, 2200, 3800, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 2200 and 3800 ms) - Self: Cast spell Shoot (6660) on Victim // "),
(@ENTRY, 0, 2, 0, 0, 0, 100, 2, 4000, 6000, 12000, 15000, 11, 9080, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 4000 and 6000 ms (and later repeats every 12000 and 15000 ms) - Self: Cast spell Hamstring (9080) on Victim // "),
(@ENTRY, 0, 3, 0, 0, 0, 100, 2, 8000, 11000, 6000, 9000, 11, 11976, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 8000 and 11000 ms (and later repeats every 6000 and 9000 ms) - Self: Cast spell Strike (11976) on Victim // "),
(@ENTRY, 0, 4, 0, 2, 0, 100, 3, 0, 15, 0, 0, 25, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When health between 0% and 15% (check every 0 - 0 ms) - Self: Flee for assist // "),
(@ENTRY, 0, 5, 0, 63, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 19, 9020, 30, 0, 0, 0, 0, 0, "When just created - Self: Attack Closest alive creature Commander Gor'shak (9020) in 30 yards // ");

UPDATE `creature_template` SET `unit_flags`=0 WHERE  `entry`=26425;

UPDATE `creature_template_addon` SET `emote`=65 WHERE  `entry`=21727;
UPDATE `creature_template` SET `flags_extra`=2 WHERE  `entry`=21727;
UPDATE `creature_template` SET `unit_flags`=536904450 WHERE  `entry`=21727;
UPDATE `creature_template` SET `dynamicflags`=32 WHERE  `entry`=21727;