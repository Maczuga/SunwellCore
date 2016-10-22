-- Creature Grom'tor, Son of Oronok 21291 SAI
SET @ENTRY := 21291;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 54, 20000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When player opened gossip dialog - Self: Pause path for 20000 ms // "),
(@ENTRY, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 53, 0, 21291, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On respawn  - Self: Start path #21291, walk, repeat, Passive // "),
(@ENTRY, 0, 2, 0, 1, 0, 100, 0, 10000, 30000, 240000, 240000, 80, 2129100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When out of combat and timer at the begining between 10000 and 30000 ms (and later repeats every 240000 and 240000 ms) - Start timed action list id #2129100 // ");


DELETE FROM creature WHERE `id` in (22102);

UPDATE creature_template SET unit_flags = unit_flags | 131072 | 2 | 262144 WHERE entry in (17008);
-- Creature Gul'dan 17008 SAI
SET @ENTRY := 17008;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 38, 0, 100, 0, 1, 1, 0, 0, 11, 35996, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data 1 set to 1 - Self: Cast spell Gul'dan Channel (35996) on Self // "),
(@ENTRY, 0, 1, 0, 38, 0, 100, 0, 2, 2, 0, 0, 28, 35996, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data 2 set to 2 - Self: Remove aura due to spell Gul'dan Channel (35996) // "),
(@ENTRY, 0, 2, 0, 38, 0, 100, 0, 3, 3, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, 21049, 0, 0, 0, 0, 0, 0, "On data 3 set to 3 - Self: Look at Closest alive creature Spirit of the Past (21049) in 100 yards // "),
(@ENTRY, 0, 3, 0, 38, 0, 100, 0, 4, 4, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 4.95674, "On data 4 set to 4 - Self: Look at (0, 0, 0, 4.95674) // "),
(@ENTRY, 0, 4, 0, 0, 0, 100, 1, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Evade // ");

-- Creature Crazed Colossus 19823 SAI
SET @ENTRY := 19823;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 33, 22051, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, "On death - Party invoker: Give kill credit Crazed Colossus Kill Credit (22051) // ");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=19823 AND SourceId = 0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22, 1, 19823, 0, 0, 1, 0, 38224, 0, 0, 0, "", "If Invoker has aura of spell Illidari Agent Illusion (38224), effect EFFECT_0");

-- Gameobject Ravenous Flayer Egg 184684 SAI
SET @ENTRY := 184684;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 1, 0, 1, 70, 0, 100, 0, 2, 0, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 20, 184747, 5, 0, 0, 0, 0, 0, "On loot state changed to GO_ACTIVATED - Closest gameobject Flayer Fog (184747) in 5 yards: Despawn in 5000 ms // "),
(@ENTRY, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Despawn in 5000 ms // ");

UPDATE `gameobject` SET `spawntimesecs`=45 WHERE  `guid`=61162;
UPDATE `gameobject` SET `spawntimesecs`=120 WHERE id = 28005;

-- Gameobject Frozen Phylactery 188141 SAI
SET @ENTRY := 188141;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 1, 0, 0, 70, 0, 100, 0, 2, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On loot state changed to GO_ACTIVATED - Self: Despawn in 2000 ms // ");

UPDATE `creature_template` SET `InhabitType`=7 WHERE  `entry`=1;

DELETE FROM `waypoint_data` WHERE id = 991110;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`) VALUES 
(991110, 1, 3639.15, 174.254, 344.044),
(991110, 2, 3678.05, 272.238, 345.888),
(991110, 3, 3589.83, 487.236, 356.967),
(991110, 4, 3230.36, 615.148, 346.995),
(991110, 5, 3061.91, 567.384, 332.884),
(991110, 6, 2990.21, 429.798, 332.884),
(991110, 7, 3203.85, 198.322, 332.884),
(991110, 8, 3485.54, 172.443, 356.967);

-- Creature Burning Depths Necromancer 27358 SAI
SET @ENTRY := 27358;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 2000, 2000, 6000, 6000, 11, 51431, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 2000 and 2000 ms (and later repeats every 6000 and 6000 ms) - Self: Cast spell Power Release (51431) on Victim // ");

UPDATE `creature` SET curhealth = 8982 WHERE `id` in (26523);
DELETE FROM `creature` WHERE  `guid`=113329;
DELETE FROM `creature_addon WHERE `guid` = 113329;

UPDATE `creature_template` SET `unit_flags`=0 WHERE  `entry`=21815;

UPDATE `creature_template` SET `flags_extra`=536870912 WHERE  `entry`=21287;

UPDATE creature_template SET unit_flags = unit_flags | 2 | 131072, InhabitType = 8 WHERE entry in (21080);
-- Creature Dormant Infernal 21080 SAI
SET @ENTRY := 21080;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 25, 0, 100, 1, 0, 0, 0, 0, 103, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On reset (e.g. after reaching home) - Self: Set rooted // "),
(@ENTRY, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 36055, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Cast spell Stationary Infernal Ball (36055) on Self // "),
(@ENTRY, 0, 2, 3, 4, 0, 100, 0, 0, 0, 0, 0, 12, 19759, 4, 30000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On aggro - Self: Summon creature Newly Crafted Infernal (19759) at Self, moved by offset (0, 0, 0, 0) // "),
(@ENTRY, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Despawn instantly // ");

-- Creature Azaloth 21506 SAI
SET @ENTRY := 21506;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 25, 0, 100, 0, 0, 0, 0, 0, 75, 32567, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On reset (e.g. after reaching home) - Self: Add aura Green Banish State (32567) // "),
(@ENTRY, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 18, 131588, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Set UNIT_FLAGS to UNIT_FLAG_DISABLE_MOVE, UNIT_FLAG_IMMUNE_TO_NPC, UNIT_FLAG_PACIFIED // "),
(@ENTRY, 0, 2, 3, 8, 0, 100, 0, 37834, 0, 0, 0, 19, 131588, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On spell Unbanish Azaloth (37834) hit  - Self: Remove UNIT_FLAGS to UNIT_FLAG_DISABLE_MOVE, UNIT_FLAG_IMMUNE_TO_NPC, UNIT_FLAG_PACIFIED // "),
(@ENTRY, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 33, 21892, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, " Linked - Action invoker: Give kill credit Azaloth Credit Marker (21892) // "),
(@ENTRY, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 28, 32567, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Remove aura due to spell Green Banish State (32567) // "),
(@ENTRY, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 28, 37833, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Remove aura due to spell Banish (37833) // "),
(@ENTRY, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 19, 0, 50, 0, 0, 0, 0, 0, " Linked - Self: Attack Closest alive creature 0 in 50 yards // "),
(@ENTRY, 0, 7, 0, 1, 0, 100, 0, 15000, 15000, 0, 0, 24, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When out of combat and timer at the begining between 15000 and 15000 ms (and later repeats every 0 and 0 ms) - Self: Evade // ");

-- Creature Captured Arko'narin 11016 SAI
SET @ENTRY := 11016;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 90, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On respawn  - Self: Set UNIT_FIELD_BYTES_1 to 8 // "),
(@ENTRY, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 18, 514, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Set UNIT_FLAGS to UNIT_FLAG_NON_ATTACKABLE, UNIT_FLAG_IMMUNE_TO_NPC // "),
(@ENTRY, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 81, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Set npc flags UNIT_NPC_FLAG_GOSSIP, UNIT_NPC_FLAG_QUESTGIVER // "),
(@ENTRY, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Set react state to REACT_PASSIVE // "),
(@ENTRY, 0, 4, 0, 19, 0, 100, 0, 5203, 0, 0, 0, 53, 0, 11016, 0, 0, 0, 2, 7, 0, 0, 0, 0, 0, 0, 0, "When player accepts quest Rescue From Jaedenar (5203) - Self: Start path #11016, walk, do not repeat, Aggressive // ");


-- Gameobject Nether Drake Egg 184867 SAI
SET @ENTRY := 184867;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 1, 0, 1, 64, 0, 100, 0, 3, 0, 0, 0, 12, 20021, 4, 30000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When player opened gossip dialog - Self: Summon creature Nether Whelp (20021) at Self, moved by offset (0, 0, 0, 0) // "),
(@ENTRY, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Despawn instantly // ");

UPDATE `creature_template` SET `unit_flags`=32768 WHERE  `entry`=21796;

-- Gameobject Power Converter 184906 SAI
SET @ENTRY := 184906;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 1, 0, 0, 70, 0, 100, 0, 2, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On loot state changed to GO_ACTIVATED - Self: Despawn in 1000 ms // ");


UPDATE `creature_template` SET `questItem3`=24236 WHERE  `entry`=17606;

UPDATE `creature_template` SET `flags_extra`=130 WHERE  `entry`=27321;

-- Gameobject Wolfsbane Root 189313 SAI
SET @ENTRY := 189313;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 1, 0, 0, 70, 0, 100, 0, 2, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On loot state changed to GO_ACTIVATED - Self: Despawn instantly // ");

-- TimedActionList  2066600 SAI
SET @ENTRY := 2066600;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 48, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Set active (are you sure?) // "),
(@ENTRY, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 11, 35960, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 1000 and 1000 ms (and later repeats every 0 and 0 ms) - Self: Cast spell Blade's Edge Multi Gold Beam (35960) on Self // "),
(@ENTRY, 9, 2, 0, 0, 0, 100, 0, 1500, 1500, 0, 0, 11, 35960, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 1500 and 1500 ms (and later repeats every 0 and 0 ms) - Self: Cast spell Blade's Edge Multi Gold Beam (35960) on Self // "),
(@ENTRY, 9, 3, 0, 0, 0, 100, 0, 1500, 1500, 0, 0, 11, 35960, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 1500 and 1500 ms (and later repeats every 0 and 0 ms) - Self: Cast spell Blade's Edge Multi Gold Beam (35960) on Self // "),
(@ENTRY, 9, 4, 0, 0, 0, 100, 0, 1500, 1500, 0, 0, 11, 35960, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 1500 and 1500 ms (and later repeats every 0 and 0 ms) - Self: Cast spell Blade's Edge Multi Gold Beam (35960) on Self // "),
(@ENTRY, 9, 5, 0, 0, 0, 100, 0, 1500, 1500, 0, 0, 11, 35960, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 1500 and 1500 ms (and later repeats every 0 and 0 ms) - Self: Cast spell Blade's Edge Multi Gold Beam (35960) on Self // "),
(@ENTRY, 9, 6, 0, 0, 0, 100, 0, 1500, 1500, 0, 0, 11, 35960, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 1500 and 1500 ms (and later repeats every 0 and 0 ms) - Self: Cast spell Blade's Edge Multi Gold Beam (35960) on Self // "),
(@ENTRY, 9, 7, 0, 0, 0, 100, 0, 1500, 1500, 0, 0, 86, 36000, 0, 10, 73835, 21025, 1, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 1500 and 1500 ms (and later repeats every 0 and 0 ms) - SMART_TARGET_CREATURE_GUID: Cast spell Blade's Edge Purple Beam (02) (36000) at Self // "),
(@ENTRY, 9, 8, 0, 0, 0, 100, 0, 1500, 1500, 0, 0, 86, 36000, 0, 10, 73835, 21025, 1, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 1500 and 1500 ms (and later repeats every 0 and 0 ms) - SMART_TARGET_CREATURE_GUID: Cast spell Blade's Edge Purple Beam (02) (36000) at Self // "),
(@ENTRY, 9, 9, 0, 0, 0, 100, 0, 1500, 1500, 0, 0, 86, 36000, 0, 10, 73835, 21025, 1, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 1500 and 1500 ms (and later repeats every 0 and 0 ms) - SMART_TARGET_CREATURE_GUID: Cast spell Blade's Edge Purple Beam (02) (36000) at Self // "),
(@ENTRY, 9, 10, 0, 0, 0, 100, 0, 1500, 1500, 0, 0, 86, 36000, 0, 10, 73835, 21025, 1, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 1500 and 1500 ms (and later repeats every 0 and 0 ms) - SMART_TARGET_CREATURE_GUID: Cast spell Blade's Edge Purple Beam (02) (36000) at Self // "),
(@ENTRY, 9, 11, 0, 0, 0, 100, 0, 1500, 1500, 0, 0, 28, 35709, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 1500 and 1500 ms (and later repeats every 0 and 0 ms) - Self: Remove aura due to spell White Banish State (35709) // "),
(@ENTRY, 9, 12, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 19, 21057, 50, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Closest alive creature Nexus-Prince Razaan (21057) in 50 yards: Despawn instantly // "),
(@ENTRY, 9, 13, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 12, 21057, 4, 300000, 0, 0, 0, 8, 0, 0, 0, 2815.03, 5242.67, 264.46, 5.23, "When in combat and timer at the begining between 5000 and 5000 ms (and later repeats every 0 and 0 ms) - Self: Summon creature Nexus-Prince Razaan (21057) at (2815.03, 5242.67, 264.46, 5.23) // "),
(@ENTRY, 9, 14, 0, 0, 0, 100, 0, 0, 0, 0, 0, 63, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Variable_1 = 0 // "),
(@ENTRY, 9, 15, 0, 0, 0, 100, 0, 0, 0, 0, 0, 48, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Set active (are you sure?) // ");

UPDATE `creature_template` SET `exp`=2 WHERE  `entry`=27354;
UPDATE `creature` SET `curhealth`=11052 WHERE  `guid`=45833;
UPDATE `creature` SET `curhealth`=11052 WHERE  `guid`=45832;

-- Creature Grishna Falconwing 19988 SAI
SET @ENTRY := 19988;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 2500, 5500, 10000, 11000, 11, 37587, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 2500 and 5500 ms (and later repeats every 10000 and 11000 ms) - Self: Cast spell Bestial Wrath (37587) on Victim // "),
(@ENTRY, 0, 1, 0, 6, 0, 35, 0, 0, 0, 0, 0, 85, 37466, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On death (35% chance) - Invoker: Cast spell Understanding Ravenspeech (37466) to Self // ");

-- Quest 1173, Challenge Overlord Mok'Morokk

SET @OMM := 4500; -- Overlord Mok'Morokk

UPDATE `quest_template` SET `SpecialFlags`= 2 WHERE `Id`= 1173;

DELETE FROM `creature_text` WHERE `entry`= @OMM;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(@OMM, 0,0,'Puny $r wanna fight Overlord Mok''Morokk? Me beat you! Me boss here!',12,0,100,0,0,0,1515,0,'Overlord Mok''Morokk - on Quest Accept'),
(@OMM, 1,0,'Me scared! Me run now!',                                              14,0,100,0,0,0,1523,0,'Overlord Mok''Morokk - on Health 0%-25%');

DELETE FROM `waypoints` WHERE `entry` = @OMM;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@OMM, 1, -3138.49, -2864.64, 34.76, 'Overlord Mok''Morokk'),
(@OMM, 2, -3128.08, -2847.37, 34.72, 'Overlord Mok''Morokk'),
(@OMM, 3, -3108.94, -2839.60, 34.28, 'Overlord Mok''Morokk');

UPDATE `creature_template` SET `AIName` = "SmartAI", `ScriptName` = '' WHERE `entry` = @OMM;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@OMM, @OMM*100, @OMM*100+1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@OMM,      0, 0,0,  0,0,100,0, 1000,3000,7000,10000, 11,      6749,   2, 0,0,0,0,  2, 0,0,0,0,0,0,0,'Overlord Mok''Morokk - In Combat Update - cast ''Wide Swipe'''),
(@OMM,      0, 1,2, 19,0,100,1, 1173,   0,   0,    0, 64,         1,   0, 0,0,0,0, 16, 0,0,0,0,0,0,0,'Overlord Mok''Morokk - on Quest Accept - Store players (No repeat)'),
(@OMM,      0, 2,0, 61,0,100,0,    0,   0,   0,    0, 80,  @OMM*100,   0, 0,0,0,0,  1, 0,0,0,0,0,0,0,'Overlord Mok''Morokk - on Quest Accept - Run Actionlist 450000'),
(@OMM*100,  9, 0,0,  0,0,100,0, 3000,3000,   0,    0,  1,         0,   0, 0,0,0,0, 12, 1,0,0,0,0,0,0,'Overlord Mok''Morokk - Actionlist - Say text 0'),
(@OMM*100,  9, 1,0,  0,0,100,0,    0,   0,   0,    0,  2,        16,   0, 0,0,0,0,  1, 0,0,0,0,0,0,0,'Overlord Mok''Morokk - Actionlist - Set faction (Monster)'),
(@OMM*100,  9, 2,0,  0,0,100,0,    0,   0,   0,    0, 83,         2,   0, 0,0,0,0,  1, 0,0,0,0,0,0,0,'Overlord Mok''Morokk - Actionlist - Remove npcflag Quest Giver'),
(@OMM*100,  9, 3,0,  0,0,100,0,    0,   0,   0,    0, 19,       768,   0, 0,0,0,0,  1, 0,0,0,0,0,0,0,'Overlord Mok''Morokk - Actionlist - Remove Unit Flags immune to NPC & immune to PC'),
(@OMM*100,  9, 4,0,  0,0,100,0,    0,   0,   0,    0, 49,         0,   0, 0,0,0,0, 12, 1,0,0,0,0,0,0,'Overlord Mok''Morokk - Actionlist - Attack stored player'),
(@OMM,      0, 3,0,  2,0,100,1,    0,  25,   0,    0, 80,@OMM*100+1,   2, 0,0,0,0,  1, 0,0,0,0,0,0,0,'Overlord Mok''Morokk - on Health 0%-25% - Run Actionlist 450001 (No repeat)'),
(@OMM,      0, 4,0,  0,0,100,1,    0,   0,   0,    0, 42,         0,   1, 0,0,0,0,  1, 0,0,0,0,0,0,0,'Overlord Mok''Morokk - In Combat - Set invincibility hp level (No repeat)'),
(@OMM*100+1,9, 0,0,  0,0,100,0,    0,   0,   0,    0, 18,       768,   0, 0,0,0,0,  1, 0,0,0,0,0,0,0,'Overlord Mok''Morokk - Actionlist - Set Unit Flags immune to NPC & immune to PC'),
(@OMM*100+1,9, 1,0,  0,0,100,0,    0,   0,   0,    0, 28,         0,   0, 0,0,0,0,  1, 0,0,0,0,0,0,0,'Overlord Mok''Morokk - Actionlist - Remove all auras'),
(@OMM*100+1,9, 2,0,  0,0,100,0,    0,   0,   0,    0,  2,        29,   0, 0,0,0,0,  1, 0,0,0,0,0,0,0,'Overlord Mok''Morokk - Actionlist - Set faction (Orgrimmar)'),
(@OMM*100+1,9, 3,0,  0,0,100,0,    0,   0,   0,    0, 24,         0,   0, 0,0,0,0,  1, 0,0,0,0,0,0,0,'Overlord Mok''Morokk - Actionlist - Evade'),
(@OMM*100+1,9, 4,0,  0,0,100,0,    0,   0,   0,    0, 15,      1173,   0, 0,0,0,0, 12, 1,0,0,0,0,0,0,'Overlord Mok''Morokk - Actionlist - Credit Quest ''Challenge Overlord Mok''Morokk'''),
(@OMM*100+1,9, 5,0,  0,0,100,0,  500, 500,   0,    0,  1,         1,   0, 0,0,0,0, 12, 1,0,0,0,0,0,0,'Overlord Mok''Morokk - Actionlist - Say text 1'),
(@OMM*100+1,9, 6,0,  0,0,100,0,    0,   0,   0,    0, 53,         1,@OMM, 0,0,0,0,  1, 0,0,0,0,0,0,0,'Overlord Mok''Morokk - Actionlist - Start Waypoint'),
(@OMM,      0, 5,0, 58,0,100,0,    0,@OMM,   0,    0, 41,         0,   0, 0,0,0,0,  1, 0,0,0,0,0,0,0,'Overlord Mok''Morokk - on WP End - Despawn'),
(@OMM,      0, 6,7, 25,0,100,0,    0,   0,   0,    0, 18,       768,   0, 0,0,0,0,  1, 0,0,0,0,0,0,0,'Overlord Mok''Morokk - on Reset - Set Unit Flags immune to NPC & immune to PC'),
(@OMM,      0, 7,8, 61,0,100,0,    0,   0,   0,    0, 82,         2,   0, 0,0,0,0,  1, 0,0,0,0,0,0,0,'Overlord Mok''Morokk - on Reset - Remove all auras'),
(@OMM,      0, 8,0, 61,0,100,0,    0,   0,   0,    0,  2,        29,   0, 0,0,0,0,  1, 0,0,0,0,0,0,0,'Overlord Mok''Morokk - on Reset - Set faction (Orgrimmar)'),
(@OMM,      0, 9,0, 11,0,100,0,    0,   0,   0,    0, 42,         1,   0, 0,0,0,0,  1, 0,0,0,0,0,0,0,'Overlord Mok''Morokk - on Spawn - Set Invincibility at 1 HP');

-- Creature Ravaged Crystalline Ice Giant 26809 SAI
SET @ENTRY := 26809;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 31261, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On reset (e.g. after reaching home) - Self: Cast spell Permanent Feign Death (Root) (31261) on Self // "),
(@ENTRY, 0, 1, 2, 64, 0, 100, 0, 0, 0, 0, 0, 56, 36765, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "When player opened gossip dialog - Action invoker: Add item 1x36765 // "),
(@ENTRY, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, " Linked - Action invoker: Close gossip // ");


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=26809 AND SourceId = 0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`, `NegativeCondition`, `ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22, 2, 26809, 0, 0, 2, 0, 36765, 1, 0, 1, 1, "", "If Invoker has 1 of item 36765 in backpack");

-- Creature Tatjana 27627 SAI
SET @ENTRY := 27627;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On respawn  - None: Set emote state (UNIT_NPC_EMOTESTATE) to 0 // "),
(@ENTRY, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 43671, 0, 0, 0, 0, 0, 9, 27626, 0, 5, 0, 0, 0, 0, " Linked - Self: Cast spell Ride Vehicle (43671) on Creature Tatjana's Horse (27626) in 0 - 5 yards // "),
(@ENTRY, 0, 2, 3, 8, 0, 100, 0, 49134, 0, 0, 0, 11, 49135, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On spell Tranquilizer Dart (49134) hit  - Self: Cast spell Tatjana Ping (49135) on Self // "),
(@ENTRY, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 18, 393984, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Set UNIT_FLAGS to UNIT_FLAG_IMMUNE_TO_PC, UNIT_FLAG_IMMUNE_TO_NPC, UNIT_FLAG_PACIFIED, UNIT_FLAG_STUNNED // "),
(@ENTRY, 0, 4, 0, 0, 0, 100, 0, 2000, 6000, 9000, 12000, 11, 32009, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 2000 and 6000 ms (and later repeats every 9000 and 12000 ms) - Self: Cast spell Cutdown (32009) on Victim // "),
(@ENTRY, 0, 5, 6, 38, 0, 100, 0, 0, 1, 0, 0, 17, 65, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data 0 set to 1 - Self: Set emote state (UNIT_NPC_EMOTESTATE) to STATE_DEAD (65) // "),
(@ENTRY, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Evade // "),
(@ENTRY, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 15000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Despawn in 15000 ms // "),
(@ENTRY, 0, 8, 0, 38, 0, 100, 0, 0, 2, 0, 0, 101, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data 0 set to 2 - Self: Set home position to current position // ");

DELETE FROM `creature_addon` WHERE guid IN (SELECT guid FROM creature WHERE id = 26577);
DELETE FROM creature WHERE id = 26577;
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES 
(26577, 571, 0, 0, 1, 1, 0, 0, 4910.17, 807.092, 170.807, 1.50677, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 4917.08, 859.325, 179.113, 0.448841, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 4958.14, 875.693, 197.928, 0.735511, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 4968.93, 926.49, 208.193, 1.55625, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 4959.23, 979.429, 212.16, 2.43983, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 5003.3, 989.837, 211.446, 0.389936, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 5021.22, 1017.74, 221.356, 0.429206, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 5061.85, 1026.91, 221.362, 0.39779, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 5078.45, 1054.72, 223.858, 0.334959, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 5105.05, 1043.06, 223.911, 5.90736, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 5141.74, 1049.63, 222.43, 0.0914852, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 5196.65, 1040.16, 228.149, 0.295688, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 5208.1, 1079.39, 217.985, 1.31278, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 5225.23, 1113.66, 215.707, 6.26864, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 5246.65, 1095.76, 216.697, 5.74635, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 5278.55, 1110.06, 218.387, 0.421352, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 5281.35, 1073.8, 218.926, 3.35089, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 5253.63, 1070.38, 219.183, 3.25272, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 5228.32, 1062.14, 220.071, 2.65581, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 5174.38, 1091, 217.74, 2.45553, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 5131.13, 1110.64, 221.186, 3.49226, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 5076.3, 1085.34, 228.054, 3.65327, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 5097.11, 1057.21, 223.914, 4.63109, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 5030.81, 1011.91, 220.284, 3.56295, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 4958.2, 982.59, 212.744, 3.07993, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 4924.35, 994.818, 212.422, 2.98568, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 4892.56, 1022.14, 223.236, 4.15985, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 4885.42, 985.692, 209.198, 4.34442, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 4871.56, 956.085, 196.643, 4.27767, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 4875.49, 927.189, 184.864, 4.67429, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 4849.13, 910.178, 170.97, 3.84177, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 4855.85, 886.625, 169.032, 5.03557, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 4861.91, 877.791, 169.101, 5.47147, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 4879.15, 860.378, 170.658, 4.69, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 4876.94, 828.961, 164.954, 5.62855, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 4900.79, 806.666, 170.642, 4.89028, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 4904.43, 778.907, 163.845, 4.02241, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 4873.23, 736.299, 164.26, 4.89813, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 4880.77, 721.896, 162.347, 5.13768, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 4882.92, 710.738, 161.274, 4.5447, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 4892.56, 674.009, 164.395, 6.0723, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 4900.58, 672.975, 168.492, 0.177886, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0),
(26577, 571, 0, 0, 1, 1, 0, 0, 4938.32, 698.139, 182.895, 1.06539, 600, 10, 0, 7952, 7654, 1, 0, 0, 0, 0);

-- Gameobject School of Northern Salmon 189290 SAI
SET @ENTRY := 189290;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 1, 0, 0, 8, 0, 100, 0, 48794, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On spell Cast Net (48794) hit  - Self: Despawn instantly // ");

UPDATE `creature_template` SET `InhabitType`=8, `speed_walk`=0.01, `MovementType`=0 WHERE  `entry` IN (22451, 23076);
DELETE FROM `creature` WHERE  `guid`=78797;

UPDATE `creature_template` SET `questItem1`=25802 WHERE  `entry`=18466;
UPDATE `creature_template` SET `questItem1`=25802 WHERE  `entry`=18467;

-- Creature Grizzly Bear 27131 SAI
SET @ENTRY := 27131;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 1, 0, 100, 0, 10000, 15000, 10000, 15000, 80, 2713100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When out of combat and timer at the begining between 10000 and 15000 ms (and later repeats every 10000 and 15000 ms) - Start timed action list id #2713100 // "),
(@ENTRY, 0, 1, 0, 4, 0, 100, 1, 0, 0, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On aggro - Self: Enable combat based movement // ");


-- Creature Matis the Cruel 17664 SAI
SET @ENTRY := 17664;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 38, 0, 100, 0, 1, 1, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, 17853, 0, 0, 0, 0, 0, 0, "On data 1 set to 1 - Self: Look at Closest alive creature Tracker of the Hand (17853) in 100 yards // "),
(@ENTRY, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Talk 0 // "),
(@ENTRY, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 19, 17853, 0, 0, 0, 0, 0, 0, " Linked - Self: Attack Closest alive creature Tracker of the Hand (17853) in 100 yards // "),
(@ENTRY, 0, 3, 0, 4, 0, 100, 0, 0, 0, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On aggro - Self: Enable combat based movement // "),
(@ENTRY, 0, 4, 0, 9, 0, 100, 0, 5, 30, 0, 0, 11, 6660, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When victim in range 5 - 30 yards (check every 0 - 0 ms) - Self: Cast spell Shoot (6660) on Victim // "),
(@ENTRY, 0, 5, 0, 2, 0, 100, 1, 25, 50, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 17853, 0, 0, 0, 0, 0, 0, "When health between 25% and 50% (check every 0 - 0 ms) - Closest alive creature Tracker of the Hand (17853) in 100 yards: Set creature data #1 to 1 // "),
(@ENTRY, 0, 6, 7, 38, 0, 100, 0, 2, 2, 0, 0, 90, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data 2 set to 2 - Self: Set UNIT_FIELD_BYTES_1 to 3 // "),
(@ENTRY, 0, 7, 8, 61, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Disable auto attack // "),
(@ENTRY, 0, 8, 9, 61, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Disable combat based movement // "),
(@ENTRY, 0, 9, 10, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Talk 1 // "),
(@ENTRY, 0, 10, 11, 61, 0, 100, 0, 0, 0, 0, 0, 45, 2, 2, 0, 0, 0, 0, 19, 17853, 0, 0, 0, 0, 0, 0, " Linked - Closest alive creature Tracker of the Hand (17853) in 100 yards: Set creature data #2 to 2 // "),
(@ENTRY, 0, 11, 12, 61, 0, 100, 0, 0, 0, 0, 0, 11, 31336, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Cast spell Matis Captured DND (31336) on Self // "),
(@ENTRY, 0, 12, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 15000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Despawn in 15000 ms // "),
(@ENTRY, 0, 13, 0, 61, 0, 100, 0, 0, 0, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On link - Self: Set UNIT_FLAGS to UNIT_FLAG_IMMUNE_TO_PC, UNIT_FLAG_IMMUNE_TO_NPC // ");

-- Creature Flamebringer 27292 SAI
SET @ENTRY := 27292;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 62, 0, 100, 0, 9512, 0, 0, 0, 11, 48606, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 9512 selected - Self: Cast spell Flamebringer Summon Cue (48606) on Action invoker // "),
(@ENTRY, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, " Linked - Action invoker: Close gossip // "),
(@ENTRY, 0, 2, 3, 54, 0, 100, 0, 0, 0, 0, 0, 83, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On just summoned - Self: Remove npc flags UNIT_NPC_FLAG_GOSSIP // "),
(@ENTRY, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 85, 48600, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Invoker: Cast spell Ride Flamebringer (48600) to Self // "),
(@ENTRY, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Set react state to REACT_PASSIVE // "),
(@ENTRY, 0, 5, 0, 28, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On passenger removed (vehicle) - Self: Despawn instantly // ");

UPDATE `creature_template` SET `MovementType`=1 WHERE  `entry`=18689;
UPDATE `creature_template` SET `unit_flags`=0 WHERE  `entry`=18689;

-- Creature Scrapped Fel Reaver 20243 SAI
SET @ENTRY := 20243;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 25, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On reset (e.g. after reaching home) - Self: Set react state to REACT_PASSIVE // "),
(@ENTRY, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Set UNIT_FLAGS to UNIT_FLAG_IMMUNE_TO_PC, UNIT_FLAG_IMMUNE_TO_NPC // "),
(@ENTRY, 0, 2, 3, 8, 0, 100, 0, 35282, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On spell Fel Zapper (35282) hit  - Self: Talk 0 // "),
(@ENTRY, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 19, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Remove UNIT_FLAGS to UNIT_FLAG_IMMUNE_TO_PC, UNIT_FLAG_IMMUNE_TO_NPC // "),
(@ENTRY, 0, 4, 0, 0, 0, 100, 0, 0, 0, 15000, 20000, 12, 20287, 4, 15000, 0, 0, 0, 8, 0, 0, 0, 2550, 3895.5, 137.34, 2, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 15000 and 20000 ms) - Self: Summon creature Zaxxis Ambusher (20287) at (2550, 3895.5, 137.34, 2) // ");

-- Creature Zaxxis Ambusher 20287 SAI
SET @ENTRY := 20287;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 19, 20243, 0, 0, 0, 0, 0, 0, "On just summoned - Self: Move to Closest alive creature Scrapped Fel Reaver (20243) in 100 yards (point id 0) // "),
(@ENTRY, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 25, 25, 0, 0, 0, 0, 0, 0, " Linked - Self: Attack Closest enemy creature in 25 yards // ");

-- Creature Snufflenose Gopher 4781 SAI
SET @ENTRY := 4781;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, "On just summoned - Owner/Summoner: Talk 0 // Snufflenose Gopher - On Just Summoned - Say Line 0"),
(@ENTRY, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 29, 1, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Follow Owner/Summoner by distance 1, angle 0 // Snufflenose Gopher - On Just Summoned - Follow Summoner"),
(@ENTRY, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 19, 4781, 20, 0, 0, 0, 0, 0, " Linked - Closest alive creature Snufflenose Gopher (4781) in 20 yards: Despawn instantly // "),
(@ENTRY, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Set react state to REACT_PASSIVE // "),
(@ENTRY, 0, 4, 5, 38, 0, 100, 0, 1, 1, 10000, 10000, 29, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data 1 set to 1 (wait 10000 - 10000 ms before next event trigger) - Self: Follow Self by distance 0, angle 0 // Snufflenose Gopher - On Data Set - Stop Following Invoker"),
(@ENTRY, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 20, 20920, 0, 0, 0, 0, 0, 0, " Linked - Self: Move to Closest gameobject Blueleaf Tuber (20920) in 100 yards (point id 0) // Snufflenose Gopher - On Data Set - Move to Blueleaf Tuber"),
(@ENTRY, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, 80, 478100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Start timed action list id #478100 // Snufflenose Gopher - On Data Set - Run Script"),
(@ENTRY, 0, 7, 8, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, " Linked - Owner/Summoner: Talk 1 // Snufflenose Gopher - On Data Set - Say Line 1"),
(@ENTRY, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, " Linked - Owner/Summoner: Set react state to REACT_PASSIVE // Snufflenose Gopher - On Data Set - Set Passive"),
(@ENTRY, 0, 9, 0, 8, 0, 100, 0, 8283, 0, 5000, 5000, 45, 1, 1, 0, 0, 0, 0, 20, 20920, 100, 0, 0, 0, 0, 0, "On spell Snufflenose Command (8283) hit (wait 5000 - 5000 ms before next trigger) - Closest gameobject Blueleaf Tuber (20920) in 100 yards: Set creature data #1 to 1 // Snufflenose Gopher - On Spellhit (Snufflenose Command) - Set Data Blueleaf Tuber");

DELETE FROM `creature_addon` WHERE guid IN (SELECT guid FROM creature WHERE id = 22314);
DELETE FROM creature WHERE id = 22314;
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES 
(22314, 530, 0, 0, 1, 1, 0, 0, -2579.23, 5430.93, 28.044, 2.28638, 180, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(22314, 530, 0, 0, 1, 1, 0, 0, -2574.8, 5445.07, 28.0151, 1.23831, 180, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(22314, 530, 0, 0, 1, 1, 0, 0, -2574.78, 5445.07, 28.0445, 1.23, 180, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(22314, 530, 0, 0, 1, 1, 0, 0, -2569.46, 5435.18, 27.99, 5.67, 180, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(22314, 530, 0, 0, 1, 1, 0, 0, -2565.86, 5447.09, 0.05, 5.5, 180, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(22314, 530, 0, 0, 1, 1, 0, 0, -2545.31, 5484.29, 8.3446, 0.226893, 180, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(22314, 530, 0, 0, 1, 1, 0, 0, -2526.51, 5383.79, 28.0903, 3.19395, 180, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(22314, 530, 0, 0, 1, 1, 0, 0, -2516.25, 5374.44, 28.0895, 6.02, 180, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(22314, 530, 0, 0, 1, 1, 0, 0, -2515.36, 5387.91, 0.05, 2.08, 180, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(22314, 530, 0, 0, 1, 1, 0, 0, -2512.17, 5454.35, 0.05, 4.6, 180, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(22314, 530, 0, 0, 1, 1, 0, 0, -2464.22, 5402.19, 2.16002, 0.575959, 180, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(22314, 530, 0, 0, 1, 1, 0, 0, -2419.04, 5411.14, 1.9, 4.66, 180, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(22314, 530, 0, 0, 1, 1, 0, 0, -2579.23, 5430.93, 28.044, 2.28638, 180, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(22314, 530, 0, 0, 1, 1, 0, 0, -2574.8, 5445.07, 28.0151, 1.23831, 180, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(22314, 530, 0, 0, 1, 1, 0, 0, -2574.78, 5445.07, 28.0445, 1.23, 180, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(22314, 530, 0, 0, 1, 1, 0, 0, -2569.46, 5435.18, 27.99, 5.67, 180, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(22314, 530, 0, 0, 1, 1, 0, 0, -2565.86, 5447.09, 0.05, 5.5, 180, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(22314, 530, 0, 0, 1, 1, 0, 0, -2545.31, 5484.29, 8.3446, 0.226893, 180, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(22314, 530, 0, 0, 1, 1, 0, 0, -2526.51, 5383.79, 28.0903, 3.19395, 180, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(22314, 530, 0, 0, 1, 1, 0, 0, -2516.25, 5374.44, 28.0895, 6.02, 180, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(22314, 530, 0, 0, 1, 1, 0, 0, -2515.36, 5387.91, 0.05, 2.08, 180, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(22314, 530, 0, 0, 1, 1, 0, 0, -2512.17, 5454.35, 0.05, 4.6, 180, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(22314, 530, 0, 0, 1, 1, 0, 0, -2464.22, 5402.19, 2.16002, 0.575959, 180, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(22314, 530, 0, 0, 1, 1, 0, 0, -2419.04, 5411.14, 1.9, 4.66, 180, 0, 0, 42, 0, 0, 0, 0, 0, 0);

DELETE FROM `gameobject_addon` WHERE guid IN (SELECT guid FROM gameobject WHERE id BETWEEN 185202 AND 185205);
DELETE FROM gameobject WHERE id BETWEEN 185202 AND 185205;
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES 
(185202, 530, 0, 0, 1, 1, -2419.04, 5411.14, 1.89249, 4.66396, 0, 0, 0.724021, -0.689778, 180, 100, 1, 0),
(185202, 530, 0, 0, 1, 1, -2579.23, 5430.93, 28.044, 5.12324, 0, 0, 0.548002, -0.836477, 180, 100, 1, 0),
(185202, 530, 0, 0, 1, 1, -2569.46, 5435.18, 27.9828, 5.67493, 0, 0, 0.29946, -0.954109, 180, 100, 1, 0),
(185202, 530, 0, 0, 1, 1, -2574.8, 5445.07, 28.0151, 1.23831, 0, 0, 0.580345, 0.81437, 180, 100, 1, 0),
(185202, 530, 0, 0, 1, 1, -2515.36, 5387.92, 0.0475059, 2.08017, 0, 0, 0.862447, 0.506148, 180, 100, 1, 0),
(185202, 530, 0, 0, 1, 1, -2526.51, 5383.79, 28.0903, 3.72802, 0, 0, 0.95732, -0.289031, 180, 100, 1, 0),
(185202, 530, 0, 0, 1, 1, -2516.25, 5374.44, 27.9657, 6.02924, 0, 0, 0.126633, -0.99195, 180, 100, 1, 0),
(185202, 530, 0, 0, 1, 1, -2565.86, 5447.09, 0.0478076, 5.41505, 0, 0, 0.420563, -0.907264, 180, 100, 1, 0),
(185202, 530, 0, 0, 1, 1, -2512.17, 5454.35, 0.0480657, 3.38166, 0, 0, 0.992805, -0.119744, 180, 100, 1, 0),
(185202, 530, 0, 0, 1, 1, -2464.22, 5402.19, 2.16002, 3.59974, 0, 0, 0.973877, -0.227076, 180, 100, 1, 0),
(185202, 530, 0, 0, 1, 1, -2545.31, 5484.29, 8.3446, 5.20632, 0, 0, 0.512792, -0.858513, 180, 100, 1, 0);

UPDATE `creature_template_addon` SET `bytes1`=0 WHERE  `entry`=19144;
UPDATE `creature_addon` SET `bytes1`=0 WHERE  `guid`=68482;

REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (683930, 1, -1861.92, 5170.83, -49.3571, 0, 0, 0, 0, 100, 0);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (683940, 1, -1865.79, 5169.72, -49.6475, 0, 0, 0, 0, 100, 0);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (683950, 1, -1859.48, 5167.44, -48.7334, 0, 0, 0, 0, 100, 1981707);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (683930, 2, -1875.78, 5179.95, -50.1392, 0, 0, 0, 0, 100, 0);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (683940, 2, -1876.58, 5177.51, -49.6518, 0, 0, 0, 0, 100, 0);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (683950, 2, -1880.71, 5180.71, -48.8896, 0, 0, 0, 0, 100, 1981708);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (683940, 3, -1887.59, 5161.49, -42.3299, 0, 0, 0, 0, 100, 0);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (683950, 3, -1890.13, 5161.01, -40.8421, 0, 0, 0, 0, 100, 1981709);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (683930, 3, -1888.46, 5157.1, -40.5147, 0, 0, 0, 0, 100, 0);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (683950, 4, -1915.89, 5176.17, -40.2088, 0, 0, 0, 0, 100, 1981710);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (683930, 4, -1915.48, 5174.51, -40.2088, 0, 0, 0, 0, 100, 0);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (683940, 4, -1912.86, 5176.21, -40.2088, 0, 0, 0, 0, 100, 0);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (683950, 5, -1891.91, 5203.4, -50.08, 0, 0, 0, 0, 100, 1981711);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (683940, 5, -1891.91, 5203.4, -50.08, 0, 0, 0, 0, 100, 0);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (683930, 5, -1891.91, 5203.4, -50.08, 0, 0, 0, 0, 100, 0);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (683940, 6, -1874.02, 5229.39, -40.2084, 0, 0, 0, 0, 100, 0);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (683950, 6, -1870.32, 5226.94, -40.2084, 0, 0, 0, 0, 100, 1981712);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (683930, 6, -1870.6, 5221.16, -40.2084, 0, 0, 0, 0, 100, 0);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (683950, 7, -1883.16, 5196.31, -50.51, 0, 0, 0, 0, 100, 1981713);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (683930, 7, -1883.16, 5196.31, -50.51, 0, 0, 0, 0, 100, 0);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (683940, 7, -1883.16, 5196.31, -50.51, 0, 0, 0, 0, 100, 0);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (683930, 8, -1830.71, 5173.15, -49.4324, 0, 0, 0, 0, 100, 0);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (683940, 8, -1835.97, 5178.56, -49.7912, 0, 0, 0, 0, 100, 0);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (683950, 8, -1836.54, 5172.59, -48.7732, 0, 0, 0, 0, 100, 1981714);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (683930, 9, -1865.38, 5176.11, -49.7907, 0, 0, 0, 0, 100, 0);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (683940, 9, -1865.57, 5179.66, -49.8009, 0, 0, 0, 0, 100, 0);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (683950, 9, -1869.23, 5175.23, -50.0966, 0, 0, 0, 0, 100, 1981715);

UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry`=17827;

UPDATE `creature_template` SET `spell2`=29577 WHERE `entry`=26472;

UPDATE `creature_text` SET `text`='My freedom means nothing if we fail to save Ursoc.  Make haste, $N.' WHERE  `entry`=27328 AND `groupid`=2 AND `id`=0;

DELETE FROM `creature_template_addon` WHERE  `entry`=28006;
UPDATE `creature` SET `spawntimesecs`=120 WHERE id IN (28005, 28018);

-- Creature Grand Necrolord Antiok 28006 SAI
SET @ENTRY := 28006;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 7000, 7000, 18000, 18000, 11, 32863, 0, 0, 0, 0, 0, 2, 27996, 30, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 7000 and 7000 ms (and later repeats every 18000 and 18000 ms) - Self: Cast spell Seed of Corruption (32863) on Victim // "),
(@ENTRY, 0, 1, 0, 4, 0, 100, 1, 0, 0, 0, 0, 11, 50494, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On aggro - Self: Cast spell Shroud of Lightning (50494) on Self // "),
(@ENTRY, 0, 2, 0, 0, 0, 100, 0, 1100, 1100, 2000, 3000, 11, 50455, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 1100 and 1100 ms (and later repeats every 2000 and 3000 ms) - Self: Cast spell Shadow Bolt (50455) on Victim // "),
(@ENTRY, 0, 3, 0, 1, 0, 100, 0, 10000, 10000, 40000, 40000, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When out of combat and timer at the begining between 10000 and 10000 ms (and later repeats every 40000 and 40000 ms) - Self: Talk 2 // "),
(@ENTRY, 0, 4, 0, 2, 0, 100, 1, 0, 25, 0, 0, 11, 50497, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When health between 0% and 25% (check every 0 - 0 ms) - Self: Cast spell Scream of Chaos (50497) on Victim // "),
(@ENTRY, 0, 5, 0, 6, 0, 100, 0, 0, 0, 0, 0, 11, 50472, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On death - Self: Cast spell Drop Scythe of Antiok (50472) on Self // "),
(@ENTRY, 0, 6, 0, 38, 0, 100, 0, 1, 0, 0, 0, 80, 2800600, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data 1 set to 0 - Start timed action list id #2800600 // "),
(@ENTRY, 0, 7, 0, 7, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On evade - Self: Despawn instantly // ");


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=28006 AND SourceId = 0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22, 1, 28006, 0, 0, 1, 0, 50343, 0, 0, 1, 0, "", "If Invoker has aura of spell Wyrmrest Commander (50343), effect EFFECT_0"),
(22, 2, 28006, 0, 0, 1, 0, 50343, 0, 0, 0, 0, "", "If Invoker has aura of spell Wyrmrest Commander (50343), effect EFFECT_0");

-- TimedActionList  2800600 SAI
SET @ENTRY := 2800600;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Talk 0 // "),
(@ENTRY, 9, 1, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 5000 and 5000 ms (and later repeats every 0 and 0 ms) - Self: Talk 1 // "),
(@ENTRY, 9, 2, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 11, 50501, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 5000 and 5000 ms (and later repeats every 0 and 0 ms) - Self: Cast spell Flesh Harvest (50501) on Self // "),
(@ENTRY, 9, 3, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 28, 50494, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 3000 and 3000 ms (and later repeats every 0 and 0 ms) - Self: Remove aura due to spell Shroud of Lightning (50494) // "),
(@ENTRY, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 19, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Remove UNIT_FLAGS to UNIT_FLAG_DISABLE_MOVE // "),
(@ENTRY, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Enable combat based movement // "),
(@ENTRY, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Attack Closest player in 30 yards // ");

-- Creature Jotunheim Proto-Drake 30330 SAI
SET @ENTRY := 30330;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_jotunheim_protodrake' WHERE `entry`=30330;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

-- Creature Jenny 25969 SAI
SET @ENTRY := 25969;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 11, 46340, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On just summoned - Self: Cast spell Crates Carried (46340) on Self // "),
(@ENTRY, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Set react state to REACT_PASSIVE // "),
(@ENTRY, 0, 2, 0, 32, 0, 100, 0, 50, 20000, 3000, 5000, 11, 46342, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When creature damaged by 50 - 20000 HP (wait 3000 - 5000 ms before next event trigger) - Self: Cast spell Drop Crate (46342) on Self // "),
(@ENTRY, 0, 3, 4, 75, 0, 100, 0, 0, 25849, 30, 0, 11, 46358, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, "When creature Fezzix Geartwist (25849) in range 30 - Self: Cast spell Give Jenny Credit (46358) on Owner/Summoner // "),
(@ENTRY, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Despawn in 2000 ms // ");


UPDATE `creature_template` SET `questItem2`=28635 WHERE  `entry`=20134;
UPDATE `creature_template` SET `questItem2`=28637 WHERE  `entry`=20135;

UPDATE `creature` SET `spawndist`=0, `MovementType`=0 WHERE `guid` IN (97949, 119499);

UPDATE `creature_template` SET `unit_flags`=32772 WHERE  `entry`=20284;

REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `autocast`) VALUES 
(58932, 4170, 12499, 1),
(58932, 4170, 12500, 1);

UPDATE `creature_loot_template` SET `Chance`=100 WHERE `Item` IN (36857, 36858);

UPDATE `creature_template` SET `flags_extra`=130, unit_flags = 33554432 WHERE `entry` IN (20209, 20417, 20440);

-- Creature Gordunni Elementalist 22144 SAI
SET @ENTRY := 22144;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 11, 12550, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On aggro - Self: Cast spell Lightning Shield (12550) on Self // "),
(@ENTRY, 0, 1, 0, 2, 0, 100, 1, 0, 60, 0, 0, 11, 32062, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When health between 0% and 60% (check every 0 - 0 ms) - Self: Cast spell Fire Nova Totem (32062) on Self // "),
(@ENTRY, 0, 2, 0, 2, 0, 100, 1, 0, 50, 0, 0, 11, 11986, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When health between 0% and 50% (check every 0 - 0 ms) - Self: Cast spell Healing Wave (11986) on Self // "),
(@ENTRY, 0, 3, 0, 2, 0, 100, 1, 0, 30, 0, 0, 11, 6742, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When health between 0% and 30% (check every 0 - 0 ms) - Self: Cast spell Bloodlust (6742) on Self // ");

-- Creature Gordunni Back-Breaker 22143 SAI
SET @ENTRY := 22143;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 4000, 6000, 9000, 14000, 11, 15610, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 4000 and 6000 ms (and later repeats every 9000 and 14000 ms) - Self: Cast spell Kick (15610) on Victim // "),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 6000, 9000, 6000, 9000, 11, 37974, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 6000 and 9000 ms (and later repeats every 6000 and 9000 ms) - Self: Cast spell Enraging Strike (37974) on Victim // "),
(@ENTRY, 0, 2, 3, 2, 0, 100, 1, 0, 30, 0, 0, 11, 8599, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When health between 0% and 30% (check every 0 - 0 ms) - Self: Cast spell Enrage (8599) on Self // "),
(@ENTRY, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Talk 0 // ");

-- Creature Gordunni Head-Splitter 22148 SAI
SET @ENTRY := 22148;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 3000, 5500, 4000, 6500, 11, 15496, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 3000 and 5500 ms (and later repeats every 4000 and 6500 ms) - Self: Cast spell Cleave (15496) on Victim // "),
(@ENTRY, 0, 1, 0, 2, 0, 100, 1, 0, 30, 0, 0, 11, 8599, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When health between 0% and 30% (check every 0 - 0 ms) - Self: Cast spell Enrage (8599) on Self // ");

-- Creature Gordunni Soulreaper 23022 SAI
SET @ENTRY := 23022;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 1, 0, 100, 1, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When out of combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Disable combat based movement // "),
(@ENTRY, 0, 1, 2, 4, 0, 100, 1, 0, 0, 0, 0, 11, 15232, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "On aggro - Self: Cast spell Shadow Bolt (15232) on Victim // "),
(@ENTRY, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 23, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Increment phase by 1 and decrement by 0 // "),
(@ENTRY, 0, 3, 0, 9, 1, 100, 0, 0, 40, 2400, 3800, 11, 15232, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When victim in range 0 - 40 yards (check every 2400 - 3800 ms) - Self: Cast spell Shadow Bolt (15232) on Victim // "),
(@ENTRY, 0, 4, 5, 3, 1, 100, 1, 0, 15, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When mana between 0% and 15% (check every 0 - 0 ms) - Self: Enable combat based movement // "),
(@ENTRY, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 23, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Increment phase by 1 and decrement by 0 // "),
(@ENTRY, 0, 6, 0, 9, 1, 100, 1, 35, 80, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When victim in range 35 - 80 yards (check every 0 - 0 ms) - Self: Enable combat based movement // "),
(@ENTRY, 0, 7, 0, 9, 1, 100, 1, 5, 15, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When victim in range 5 - 15 yards (check every 0 - 0 ms) - Self: Disable combat based movement // "),
(@ENTRY, 0, 8, 0, 9, 1, 100, 1, 0, 5, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When victim in range 0 - 5 yards (check every 0 - 0 ms) - Self: Enable combat based movement // "),
(@ENTRY, 0, 9, 0, 3, 2, 100, 0, 30, 100, 100, 100, 23, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When mana between 30% and 100% (check every 100 - 100 ms) - Self: Increment phase by 0 and decrement by 1 // "),
(@ENTRY, 0, 10, 0, 0, 0, 100, 0, 4000, 6000, 18000, 25000, 11, 20464, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 4000 and 6000 ms (and later repeats every 18000 and 25000 ms) - Self: Cast spell Summon Skeleton (20464) on Self // "),
(@ENTRY, 0, 11, 0, 2, 0, 100, 0, 0, 30, 30000, 35000, 11, 20743, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When health between 0% and 30% (check every 30000 - 35000 ms) - Self: Cast spell Drain Life (20743) on Victim // ");

UPDATE `creature_template` SET `unit_flags`=256 WHERE  `entry`=22452;

UPDATE `creature_template` SET `unit_flags`=33554434 WHERE  `entry`=27212;

UPDATE `creature_template` SET `AIName`="CombatAI" WHERE `entry` IN (26586, 26590);

DELETE FROM `creature` WHERE guid BETWEEN 20 AND 23;

UPDATE `waypoint_data` SET `delay`=20000 WHERE `id`=1379680 AND `point`=6;

-- Gameobject Unstable Explosives 190590 SAI
SET @ENTRY := 190590;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 1, 0, 0, 70, 0, 100, 0, 2, 0, 0, 0, 41, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On loot state changed to GO_ACTIVATED - Self: Despawn in 3000 ms // ");

UPDATE `creature_template` SET `flags_extra`=2 WHERE  `entry`=27017;

-- Creature Depleted War Golem 27017 SAI
SET @ENTRY := 27017;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 38, 0, 100, 0, 1, 1, 0, 0, 80, 2701700, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data 1 set to 1 - Start timed action list id #2701700 // ");

-- TimedActionList  2701700 SAI
SET @ENTRY := 2701700;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 19, 26407, 25, 1, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Move to Closest dead creature Lightning Sentry (26407) in 25 yards (point id 0) // "),
(@ENTRY, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Talk 0 // "),
(@ENTRY, 9, 2, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 47799, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 3000 and 3000 ms (and later repeats every 0 and 0 ms) - Self: Cast spell Charge War Golem (47799) on Self // "),
(@ENTRY, 9, 3, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 5000 and 5000 ms (and later repeats every 0 and 0 ms) - Self: Talk 1 // "),
(@ENTRY, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 47797, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Cast spell War Golem Charge Credit (47797) on Owner/Summoner // "),
(@ENTRY, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Evade // ");

DELETE FROM conditions WHERE SourceTypeOrReferenceId=13 AND SourceEntry=32314;
INSERT INTO conditions VALUES (13, 3, 32314, 0, 0, 36, 0, 0, 0, 0, 1, 0, 0, '', 'Target must be dead');
INSERT INTO conditions VALUES (13, 3, 32314, 0, 0, 31, 0, 3, 17138, 0, 0, 0, 0, '', "Spell Place Kil'sorrow Banner can only be cast on Warmaul Ogres");
INSERT INTO conditions VALUES (13, 3, 32314, 0, 1, 31, 0, 3, 18037, 0, 0, 0, 0, '', "Spell Place Kil'sorrow Banner can only be cast on Warmaul Ogres");
INSERT INTO conditions VALUES (13, 3, 32314, 0, 2, 31, 0, 3, 18064, 0, 0, 0, 0, '', "Spell Place Kil'sorrow Banner can only be cast on Warmaul Ogres");
INSERT INTO conditions VALUES (13, 3, 32314, 0, 3, 31, 0, 3, 18065, 0, 0, 0, 0, '', "Spell Place Kil'sorrow Banner can only be cast on Warmaul Ogres");
INSERT INTO conditions VALUES (13, 3, 32314, 0, 4, 31, 0, 3, 18402, 0, 0, 0, 0, '', "Spell Place Kil'sorrow Banner can only be cast on Warmaul Ogres");
INSERT INTO conditions VALUES (13, 3, 32314, 0, 6, 31, 0, 3, 18064, 0, 0, 0, 0, '', "Spell Place Kil'sorrow Banner can only be cast on Warmaul Ogres");
DELETE FROM conditions WHERE SourceTypeOrReferenceId=17 AND SourceEntry=32314;
INSERT INTO conditions VALUES (17, 0, 32314, 0, 0, 29, 0, 17138, 5, 1, 0, 12, 0, '', "Spell Place Kil'sorrow Banner can only be cast on Warmaul Ogres");
INSERT INTO conditions VALUES (17, 0, 32314, 0, 1, 29, 0, 18037, 5, 1, 0, 12, 0, '', "Spell Place Kil'sorrow Banner can only be cast on Warmaul Ogres");
INSERT INTO conditions VALUES (17, 0, 32314, 0, 2, 29, 0, 18064, 5, 1, 0, 12, 0, '', "Spell Place Kil'sorrow Banner can only be cast on Warmaul Ogres");
INSERT INTO conditions VALUES (17, 0, 32314, 0, 3, 29, 0, 18065, 5, 1, 0, 12, 0, '', "Spell Place Kil'sorrow Banner can only be cast on Warmaul Ogres");
INSERT INTO conditions VALUES (17, 0, 32314, 0, 4, 29, 0, 18402, 5, 1, 0, 12, 0, '', "Spell Place Kil'sorrow Banner can only be cast on Warmaul Ogres");
INSERT INTO conditions VALUES (17, 0, 32314, 0, 0, 30, 0, 182354, 10, 0, 1, 12, 0, '', "Spell Place Kil'sorrow Banner can only be cast if no banner is present");

UPDATE `creature_template` SET `unit_flags`=0, `flags_extra`=2 WHERE  `entry`=18209;

-- Creature Prince Sandoval 14688 SAI
SET @ENTRY := 14688;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 1, 0, 100, 257, 3000, 3000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When out of combat and timer at the begining between 3000 and 3000 ms (and later repeats every 0 and 0 ms) - Self: Talk 0 // "),
(@ENTRY, 0, 1, 0, 1, 0, 100, 257, 10000, 10000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When out of combat and timer at the begining between 10000 and 10000 ms (and later repeats every 0 and 0 ms) - Self: Talk 1 // "),
(@ENTRY, 0, 2, 0, 1, 0, 100, 257, 15000, 15000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When out of combat and timer at the begining between 15000 and 15000 ms (and later repeats every 0 and 0 ms) - Self: Talk 2 // "),
(@ENTRY, 0, 3, 4, 1, 0, 100, 257, 17000, 17000, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 40, 0, 0, 0, 0, 0, 0, "When out of combat and timer at the begining between 17000 and 17000 ms (and later repeats every 0 and 0 ms) - Self: Attack Closest player in 40 yards // "),
(@ENTRY, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 19, 770, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Remove UNIT_FLAGS to UNIT_FLAG_NON_ATTACKABLE, UNIT_FLAG_IMMUNE_TO_PC, UNIT_FLAG_IMMUNE_TO_NPC // "),
(@ENTRY, 0, 5, 0, 0, 0, 100, 0, 11000, 14000, 23000, 25000, 11, 61162, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 11000 and 14000 ms (and later repeats every 23000 and 25000 ms) - Self: Cast spell Engulfing Strike (61162) on Victim // "),
(@ENTRY, 0, 6, 0, 0, 0, 100, 0, 17000, 18000, 15000, 17000, 11, 61163, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 17000 and 18000 ms (and later repeats every 15000 and 17000 ms) - Self: Cast spell Fire Nova (61163) on Self // ");

-- TimedActionList  2561800 SAI
SET @ENTRY := 2561800;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 45908, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Cast spell Shield of Suffering (45908) on Self // "),
(@ENTRY, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 59, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Set walk // "),
(@ENTRY, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 3125, 6534, 80.1, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Move to position (3125, 6534, 80.1, 0) (point id 0) // "),
(@ENTRY, 9, 3, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 4.11, "When in combat and timer at the begining between 6000 and 6000 ms (and later repeats every 0 and 0 ms) - Self: Look at (0, 0, 0, 4.11) // "),
(@ENTRY, 9, 4, 0, 0, 0, 100, 0, 32000, 32000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 32000 and 32000 ms (and later repeats every 0 and 0 ms) - Self: Talk 0 // "),
(@ENTRY, 9, 5, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1.52, "When in combat and timer at the begining between 4000 and 4000 ms (and later repeats every 0 and 0 ms) - Self: Look at (0, 0, 0, 1.52) // "),
(@ENTRY, 9, 6, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 1000 and 1000 ms (and later repeats every 0 and 0 ms) - Self: Talk 1 // "),
(@ENTRY, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Set home position to current position // "),
(@ENTRY, 9, 8, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 45923, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 3000 and 3000 ms (and later repeats every 0 and 0 ms) - Self: Cast spell Shadow Prison (45923) on Self // "),
(@ENTRY, 9, 9, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 12, 25730, 4, 120000, 0, 0, 0, 8, 0, 0, 0, 3149, 6527, 80.84, 2.6, "When in combat and timer at the begining between 1000 and 1000 ms (and later repeats every 0 and 0 ms) - Self: Summon creature En'kilah Necrolord (25730) at (3149, 6527, 80.84, 2.6) // "),
(@ENTRY, 9, 10, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 8000 and 8000 ms (and later repeats every 0 and 0 ms) - Self: Talk 2 // "),
(@ENTRY, 9, 11, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 4000 and 4000 ms (and later repeats every 0 and 0 ms) - Self: Talk 3 // "),
(@ENTRY, 9, 12, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 4000 and 4000 ms (and later repeats every 0 and 0 ms) - Self: Talk 4 // "),
(@ENTRY, 9, 13, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 4000 and 4000 ms (and later repeats every 0 and 0 ms) - Self: Talk 5 // "),
(@ENTRY, 9, 14, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 7000 and 7000 ms (and later repeats every 0 and 0 ms) - Self: Talk 6 // "),
(@ENTRY, 9, 15, 0, 0, 0, 100, 0, 9000, 9000, 0, 0, 1, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 9000 and 9000 ms (and later repeats every 0 and 0 ms) - Self: Talk 7 // "),
(@ENTRY, 9, 16, 0, 0, 0, 100, 0, 20000, 20000, 0, 0, 1, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 20000 and 20000 ms (and later repeats every 0 and 0 ms) - Self: Talk 8 // "),
(@ENTRY, 9, 17, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 1, 9, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 10000 and 10000 ms (and later repeats every 0 and 0 ms) - Self: Talk 9 // "),
(@ENTRY, 9, 18, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 2000 and 2000 ms (and later repeats every 0 and 0 ms) - Self: Talk 10 // "),
(@ENTRY, 9, 19, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 19, 770, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 2000 and 2000 ms (and later repeats every 0 and 0 ms) - Self: Remove UNIT_FLAGS to UNIT_FLAG_NON_ATTACKABLE, UNIT_FLAG_IMMUNE_TO_PC, UNIT_FLAG_IMMUNE_TO_NPC // "),
(@ENTRY, 9, 20, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 28, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 1000 and 1000 ms (and later repeats every 0 and 0 ms) - Self: Remove all auras // "),
(@ENTRY, 9, 21, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 50329, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Cast spell Shield of Suffering (50329) on Self // "),
(@ENTRY, 9, 22, 0, 0, 0, 100, 0, 0, 0, 0, 0, 19, 770, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Remove UNIT_FLAGS to UNIT_FLAG_NON_ATTACKABLE, UNIT_FLAG_IMMUNE_TO_PC, UNIT_FLAG_IMMUNE_TO_NPC // "),
(@ENTRY, 9, 23, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 49, 0, 0, 0, 0, 0, 0, 19, 25751, 30, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 2000 and 2000 ms (and later repeats every 0 and 0 ms) - Self: Attack Closest alive creature High Overlord Saurfang (25751) in 30 yards // ");

-- Creature Varidus the Flenser 25618 SAI
SET @ENTRY := 25618;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 38, 0, 100, 0, 25729, 0, 0, 0, 80, 2561800, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data 25729 set to 0 - Start timed action list id #2561800 // "),
(@ENTRY, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 18, 770, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Set UNIT_FLAGS to UNIT_FLAG_NON_ATTACKABLE, UNIT_FLAG_IMMUNE_TO_PC, UNIT_FLAG_IMMUNE_TO_NPC // "),
(@ENTRY, 0, 2, 0, 0, 0, 100, 0, 5000, 5000, 10000, 10000, 11, 32711, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 5000 and 5000 ms (and later repeats every 10000 and 10000 ms) - Self: Cast spell Shadow Nova (32711) on Self // "),
(@ENTRY, 0, 3, 4, 6, 0, 100, 0, 0, 0, 0, 0, 15, 11705, 0, 0, 0, 0, 0, 18, 40, 0, 0, 0, 0, 0, 0, "On death - Players in 40 yards: Call quest Foolish Endeavors (11705) group event happened // "),
(@ENTRY, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 19, 25729, 100, 0, 0, 0, 0, 0, " Linked - Closest alive creature Shadowstalker Getry (25729) in 100 yards: Despawn instantly // "),
(@ENTRY, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 19, 25751, 100, 0, 0, 0, 0, 0, " Linked - Closest alive creature High Overlord Saurfang (25751) in 100 yards: Despawn instantly // "),
(@ENTRY, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 25729, 40, 0, 0, 0, 0, 0, " Linked - Closest alive creature Shadowstalker Getry (25729) in 40 yards: Set creature data #1 to 1 // "),
(@ENTRY, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Despawn instantly // ");
