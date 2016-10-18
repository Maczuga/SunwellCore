UPDATE `creature_template` SET `modelid1`=20476 WHERE `entry`=21796;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 30330;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(30330, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 48, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Jotunheim Proto-Drake - On Reset - Set Active'),
(30330, 0, 1, 0, 6, 0, 100, 0, 0, 0, 0, 0, 33, 30330, 0, 0, 0, 0, 0, 18, 40, 0, 0, 0, 0, 0, 0, 'On Death - Kill Credit');

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(1, 21004, 31656, 0, 0, 1, 0, 38778 , 0, 0, 0, 0, 0, '', 'Can loot Lesser Nether Drake Spirit only with aura Spirit Calling'),
(1, 21032, 31656, 0, 0, 1, 0, 38778 , 0, 0, 0, 0, 0, '', 'Can loot Lesser Nether Drake Spirit only with aura Spirit Calling');

-- Creature Hellfire Wardling 22259 SAI
SET @ENTRY := 22259;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 11, 38683, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On just summoned - Self: Cast spell Magic Sucker Device Despawner, Mob (38683) on Self // "),
(@ENTRY, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Talk 0 // "),
(@ENTRY, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 11, 7741, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Cast spell Summoned Demon (7741) on Self // "),
(@ENTRY, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 19, 22258, 10, 0, 0, 0, 0, 0, " Linked - Self: Attack Closest alive creature Demoniac Scryer (22258) in 10 yards // "),
(@ENTRY, 0, 4, 5, 6, 0, 100, 0, 0, 0, 0, 0, 11, 38891, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On death - Self: Cast spell Magic Sucker Device (Despawn Visual) (38891) on Self // "),
(@ENTRY, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Despawn in 500 ms // "),
(@ENTRY, 0, 6, 0, 8, 0, 100, 0, 38691, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On spell Magic Sucker Device Despawner, Mob AE (38691) hit - Self: Despawn instantly // ");

-- Creature Fel Warden 22273 SAI
SET @ENTRY := 22273;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 11, 38683, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On just summoned - Self: Cast spell Magic Sucker Device Despawner, Mob (38683) on Self // Fel Warden - On Just Summoned - Cast Magic Sucker Device Despawner, Mob"),
(@ENTRY, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Talk 0 // Fel Warden - On Just Summoned - Say"),
(@ENTRY, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 11, 7741, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Cast spell Summoned Demon (7741) on Self // Fel Warden - On Just Summoned - Cast Summoned Demon"),
(@ENTRY, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 19, 22258, 10, 0, 0, 0, 0, 0, " Linked - Self: Attack Closest alive creature 0 in 100 yards // "),
(@ENTRY, 0, 4, 0, 8, 0, 100, 0, 38691, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On spell Magic Sucker Device Despawner, Mob AE (38691) hit - Self: Despawn instantly // Fel Warden - On Spellhit (Magic Sucker Device Despawner, Mob AE) - Despawn");

-- Gameobject Felhound Poo 184980 SAI
SET @ENTRY := 184980;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 1, 0, 0, 70, 0, 100, 0, 2, 0, 0, 0, 75, 37695, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On loot state changed to GO_ACTIVATED - Action invoker: Add aura Stanky (37695) // ");

UPDATE quest_template_addon SET SpecialFlags = 0 WHERE id between 339 and 342;
UPDATE `quest_template` SET `RequiredRaces`=690 WHERE `Id`=9820;

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(20, 0, 11585, 0, 0, 8, 0, 10172, 0, 0, 1, 0, 0, '', 'Hellscream\'s Vigil (11585) Only if player has not completed There Is No Hope'),
(20, 0, 11586, 0, 0, 8, 0, 10172, 0, 0, 0, 0, 0, '', 'Hellscream\'s Vigil (11586) Only if player has completed There Is No Hope');

DELETE FROM `creature` WHERE `guid`=143273;
DELETE FROM `creature` WHERE `guid`=143245;
DELETE FROM `creature` WHERE `guid`=143247;
DELETE FROM `creature` WHERE `guid`=143259;
DELETE FROM `creature` WHERE `guid`=143243;
DELETE FROM `creature` WHERE `guid`=143268;
DELETE FROM `creature` WHERE `guid`=143255;
DELETE FROM `creature` WHERE `guid`=143231;
DELETE FROM `creature` WHERE `guid`=143230;
DELETE FROM `creature` WHERE `guid`=143227;


-- Creature Harvest Collector 25623 SAI
SET @ENTRY := 25623;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 8, 0, 100, 0, 47166, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On spell Converting Harvest Collector (47166) hit - Self: Despawn in 1000 ms // ");

-- Creature Taunka'le Evacuee 26167 SAI
SET @ENTRY := 26167;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 46669, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On reset (e.g. after reaching home) - Self: Cast spell Evacuee Random Action (46669) on Self // "),
(@ENTRY, 0, 1, 0, 8, 0, 100, 0, 46663, 0, 0, 0, 87, 2616700, 2616701, 2616702, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On spell Evacuee Random Action (46663) hit - Self: Call random timed action list: 2616700, 2616701, 2616702, 0, 0, 0 // "),
(@ENTRY, 0, 2, 3, 8, 0, 100, 1, 46677, 0, 0, 0, 103, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On spell Evacuee Reaches Dragonblight (46677) hit - Self: Set rooted // "),
(@ENTRY, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, 2616703, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Start timed action list id #2616703 // ");

DELETE FROM `creature_loot_template` WHERE `Entry`=118 AND `Item`=24078;

-- Creature Harvest Collector 25623 SAI
SET @ENTRY := 25623;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 8, 0, 100, 0, 47166, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On spell Converting Harvest Collector (47166) hit - Self: Despawn in 1000 ms // ");


UPDATE `creature_template` SET `questItem1`=23217 WHERE `entry`=16932;
UPDATE `creature_template` SET `unit_flags`=2, `flags_extra`=2 WHERE `entry`=25773;

-- Creature Fizzcrank Mechagnome 25814 SAI
SET @ENTRY := 25814;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 1, 1, 10000, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On aggro - Action invoker: Talk 1 // Fizzcrank Mechagnome - On Aggro - Say Line 1 (Phase 1) (No Repeat)"),
(@ENTRY, 0, 1, 2, 8, 0, 100, 0, 46485, 0, 0, 0, 33, 26096, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On spell The Greatmother's Soulcatcher (46485) hit - Action invoker: Give kill credit Gnome Soul (26096) // Fizzcrank Mechagnome - On Spellhit 'The Greatmother's Soulcatcher' - Quest Credit 'Souls of the Decursed'"),
(@ENTRY, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Despawn in 10 ms // Fizzcrank Mechagnome - On Spellhit 'The Greatmother's Soulcatcher' - Despawn In 10 ms");

DELETE FROM `creature_template_addon` WHERE `entry`=26452;
UPDATE `gameobject_template` SET `Data0`=1505 WHERE `entry`=188112;
DELETE FROM `gameobject` WHERE `id` = 300184;
DELETE FROM `gameobject_template` WHERE `entry` = 300184;
UPDATE `gameobject` SET `spawntimesecs` = 120 WHERE `id` = 188112;

-- Gameobject Farshire Grain 188112 SAI
SET @ENTRY := 188112;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 1, 0, 1, 38, 0, 100, 0, 1, 1, 0, 0, 41, 0, 0, 0, 0, 0, 0, 20, 182071, 1, 0, 0, 0, 0, 0, "On data 1 set to 1 - Closest gameobject Small Chapel Fire (182071) in 1 yards: Despawn instantly // "),
(@ENTRY, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Despawn instantly // ");

-- Gameobject Small Chapel Fire 182071 SAI
SET @ENTRY := 182071;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 1, 0, 0, 1, 0, 100, 1, 4000, 4000, 0, 0, 45, 1, 1, 0, 0, 0, 0, 20, 188112, 1, 0, 0, 0, 0, 0, "When out of combat and timer at the begining between 4000 and 4000 ms (and later repeats every 0 and 0 ms) - Closest gameobject Farshire Grain (188112) in 1 yards: Set creature data #1 to 1 // ");

UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid in (103498, 103495);

-- Creature Scavenge-bot 004-A8 25752 SAI
SET @ENTRY := 25752;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 5000, 10000, 10000, 15000, 11, 49945, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 5000 and 10000 ms (and later repeats every 10000 and 15000 ms) - Self: Cast spell Cutting Laser (49945) on Victim // "),
(@ENTRY, 0, 1, 0, 8, 0, 100, 0, 46432, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On spell Power of the Storm (46432) hit - Self: Set event phase to 1 // "),
(@ENTRY, 0, 2, 0, 6, 1, 100, 0, 0, 0, 0, 0, 33, 26082, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On death - Action invoker: Give kill credit Weakness to Lightning Kill Credit Bunny (26082) // "),
(@ENTRY, 0, 3, 0, 1, 0, 100, 0, 5000, 5000, 15000, 20000, 11, 49947, 0, 0, 0, 0, 0, 19, 19871, 25, 0, 0, 0, 0, 0, "When out of combat and timer at the begining between 5000 and 5000 ms (and later repeats every 15000 and 20000 ms) - Self: Cast spell Cutting Laser (49947) on Closest alive creature World Trigger (Not Immune NPC) (19871) in 25 yards // "),
(@ENTRY, 0, 4, 0, 1, 0, 100, 0, 20000, 25000, 35000, 40000, 5, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When out of combat and timer at the begining between 20000 and 25000 ms (and later repeats every 35000 and 40000 ms) - Self: Play emote ONESHOT_ATTACKUNARMED (35) // ");

-- Creature Trapped Mammoth Calf 25850 SAI
SET @ENTRY := 25850;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 38, 0, 100, 0, 1, 0, 0, 0, 91, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data 1 set to 0 - Self: Remove 7 bytes from UNIT_FIELD_BYTES_1 // "),
(@ENTRY, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Talk 0 // "),
(@ENTRY, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 89, 12, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Move in radius 12 yards // "),
(@ENTRY, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 12000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Despawn in 12000 ms // ");

DELETE FROM `creature_addon` WHERE `guid`=74867;

-- Creature Jadefire Shadowstalker 7110 SAI
SET @ENTRY := 7110;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 1, 0, 100, 0, 2000, 2000, 110000, 110000, 11, 11013, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When out of combat and timer at the begining between 2000 and 2000 ms (and later repeats every 110000 and 110000 ms) - Self: Cast spell Sneak (11013) on Self // "),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 2000, 5000, 20000, 20000, 11, 14897, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 2000 and 5000 ms (and later repeats every 20000 and 20000 ms) - Self: Cast spell Slowing Poison (14897) on Random hostile // "),
(@ENTRY, 0, 2, 0, 0, 0, 100, 0, 8000, 8000, 20000, 20000, 11, 13578, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 8000 and 8000 ms (and later repeats every 20000 and 20000 ms) - Self: Cast spell Jadefire (13578) on Self // ");

UPDATE `creature_template_addon` SET `bytes1`=0 WHERE `entry`=7110;

-- Creature Ashenvale Outrunner 12856 SAI
SET @ENTRY := 12856;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2300, 3900, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 2300 and 3900 ms) - Self: Cast spell Shoot (6660) on Victim // "),
(@ENTRY, 0, 1, 0, 9, 0, 100, 0, 5, 30, 35900, 52300, 11, 18545, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When victim in range 5 - 30 yards (check every 35900 - 52300 ms) - Self: Cast spell Scorpid Sting (18545) on Victim // "),
(@ENTRY, 0, 2, 0, 9, 0, 100, 0, 0, 5, 7100, 15300, 11, 8646, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When victim in range 0 - 5 yards (check every 7100 - 15300 ms) - Self: Cast spell Snap Kick (8646) on Victim // "),
(@ENTRY, 0, 3, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 20540, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On reset (e.g. after reaching home) - Self: Cast spell Ashenvale Outrunner Sneak (20540) on Self // ");

REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (46222, 'spell_animal_blood_dummy');
DELETE FROM `spell_area` WHERE `spell`=57940 AND `area`=480 AND `quest_start`=0 AND `aura_spell`=0 AND `racemask`=0 AND `gender`=2;

DELETE FROM `playercreateinfo_skills` WHERE `raceMask`=4 AND `classMask`=0 AND `skill`=111;
DELETE FROM `playercreateinfo_skills` WHERE `raceMask`=8 AND `classMask`=0 AND `skill`=137;
DELETE FROM `playercreateinfo_skills` WHERE `raceMask`=16 AND `classMask`=0 AND `skill`=673;
DELETE FROM `playercreateinfo_skills` WHERE `raceMask`=32 AND `classMask`=0 AND `skill`=113;
DELETE FROM `playercreateinfo_skills` WHERE `raceMask`=64 AND `classMask`=0 AND `skill`=313;
DELETE FROM `playercreateinfo_skills` WHERE `raceMask`=128 AND `classMask`=0 AND `skill`=315;
DELETE FROM `playercreateinfo_skills` WHERE `raceMask`=512 AND `classMask`=0 AND `skill`=115;
DELETE FROM `playercreateinfo_skills` WHERE `raceMask`=690 AND `classMask`=0 AND `skill`=109;
DELETE FROM `playercreateinfo_skills` WHERE `raceMask`=1024 AND `classMask`=0 AND `skill`=759;
DELETE FROM `playercreateinfo_skills` WHERE `raceMask`=1101 AND `classMask`=0 AND `skill`=98;

REPLACE INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES 
(4, 0, 111, 0, 'Language: Dwarven'),
(8, 0, 113, 0, 'Language: Darnassian'),
(16, 0, 673, 0, 'Language: Forsaken'),
(32, 0, 115, 0, 'Language: Taurahe'),
(64, 0, 313, 0, 'Language: Gnomish'),
(128, 0, 315, 0, 'Language: Troll'),
(512, 0, 137, 0, 'Language: Thalassian'),
(690, 0, 109, 0, 'Language: Orcish'),
(1024, 0, 759, 0, 'Language: Draenei'),
(1101, 0, 98, 0, 'Language: Common');

UPDATE `creature_template` SET `questItem2`=31671, `questItem3`=31670 WHERE `entry`=20749;
UPDATE `creature_template` SET `questItem1`=29443 WHERE `entry`=19957;

UPDATE `creature_template_addon` SET `auras`='34873' WHERE `entry`=24783;
UPDATE `creature_template` SET `flags_extra`=2, `unit_flags` = `unit_flags` | 131072 | 512  WHERE `entry`=27530;
UPDATE `creature_template` SET `ScriptName`='npc_heated_battle' WHERE  `entry`=27533;
-- Creature Bloodmaul Geomancer 19952 SAI
SET @ENTRY := 19952;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "On death - Victim: Talk 1 // "),
(@ENTRY, 0, 1, 0, 4, 0, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "On aggro (35% chance) - Victim: Talk 0 // "),
(@ENTRY, 0, 2, 0, 1, 0, 100, 0, 0, 0, 1800000, 1800000, 11, 12544, 33, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When out of combat and timer at the begining between 0 and 0 ms (and later repeats every 1800000 and 1800000 ms) - Self: Cast spell Frost Armor (12544) on Self // "),
(@ENTRY, 0, 3, 0, 4, 0, 50, 0, 0, 0, 0, 0, 11, 6136, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "On aggro (50% chance) - Self: Cast spell Chilled (6136) on Victim // "),
(@ENTRY, 0, 4, 0, 0, 0, 100, 0, 0, 0, 2400, 3800, 11, 9053, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 2400 and 3800 ms) - Self: Cast spell Fireball (9053) on Victim // "),
(@ENTRY, 0, 5, 6, 54, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 20, 184713, 0, 0, 0, 0, 0, 0, "On just summoned - Self: Move to Closest gameobject Bladespire Clan Banner (184713) in 100 yards (point id 0) // "),
(@ENTRY, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, " Linked - Self: Attack Closest player in 15 yards // ");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=19952 AND SourceId = 0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22, 1, 19952, 0, 0, 8, 0, 11000, 0, 0, 0, "", "If Invoker has quest Into the Soulgrinder (11000) rewarded");

-- Creature Gurn Grubnosh 20116 SAI
SET @ENTRY := 20116;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 20, 184713, 0, 0, 0, 0, 0, 0, "On just summoned - Self: Move to Closest gameobject 0 in 100 yards (point id 0) // "),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 15000, 15000, 30000, 30000, 11, 35491, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 15000 and 15000 ms (and later repeats every 30000 and 30000 ms) - Self: Cast spell Furious Rage (35491) on Self // "),
(@ENTRY, 0, 2, 0, 40, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, "On any waypoint of any path reached - Self: Attack Closest player in 0 yards // ");

-- Creature Bloodmaul Lookout 19956 SAI
SET @ENTRY := 19956;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 20, 184713, 0, 0, 0, 0, 0, 0, "On just summoned - Self: Move to Closest gameobject 0 in 100 yards (point id 0) // "),
(@ENTRY, 0, 1, 0, 40, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, "On any waypoint of any path reached - Self: Attack Closest player in 0 yards // ");

-- Creature Bloodmaul Drudger 21238 SAI
SET @ENTRY := 21238;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "On death - Victim: Talk 1 // "),
(@ENTRY, 0, 1, 0, 4, 0, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On aggro (35% chance) - Self: Talk 0 // "),
(@ENTRY, 0, 2, 0, 0, 0, 100, 0, 9000, 9000, 30000, 30000, 11, 35918, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 9000 and 9000 ms (and later repeats every 30000 and 30000 ms) - Self: Cast spell Puncture Armor (35918) on Victim // "),
(@ENTRY, 0, 3, 4, 2, 0, 100, 0, 0, 30, 35000, 45000, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When health between 0% and 30% (check every 35000 - 45000 ms) - Self: Cast spell Enrage (8599) on Self // "),
(@ENTRY, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, " Linked - Victim: Talk 2 // "),
(@ENTRY, 0, 5, 0, 54, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 20, 184713, 0, 0, 0, 0, 0, 0, "On just summoned - Self: Move to Closest gameobject 0 in 100 yards (point id 0) // "),
(@ENTRY, 0, 6, 0, 40, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, "On any waypoint of any path reached - Self: Attack Closest player in 0 yards // ");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=21238 AND SourceId = 0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22, 1, 21238, 0, 0, 8, 0, 11000, 0, 0, 0, "", "If Invoker has quest Into the Soulgrinder (11000) rewarded");

-- Creature Bloodmaul Goon 21294 SAI
SET @ENTRY := 21294;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 20, 184713, 0, 0, 0, 0, 0, 0, "On just summoned - Self: Move to Closest gameobject 0 in 100 yards (point id 0) // "),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 5000, 5000, 10000, 10000, 11, 10966, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 5000 and 5000 ms (and later repeats every 10000 and 10000 ms) - Self: Cast spell Uppercut (10966) on Victim // "),
(@ENTRY, 0, 2, 0, 40, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, "On any waypoint of any path reached - Self: Attack Closest player in 0 yards // ");

-- Creature Bloodmaul Brute 19991 SAI
SET @ENTRY := 19991;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On aggro - Self: Talk 0 // "),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 2000, 5000, 4000, 5000, 11, 15496, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 2000 and 5000 ms (and later repeats every 4000 and 5000 ms) - Self: Cast spell Cleave (15496) on Victim // "),
(@ENTRY, 0, 2, 0, 0, 0, 100, 0, 5000, 10000, 8000, 12000, 11, 37577, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 5000 and 10000 ms (and later repeats every 8000 and 12000 ms) - Self: Cast spell Debilitating Strike (37577) on Victim // "),
(@ENTRY, 0, 3, 0, 0, 0, 100, 1, 15000, 20000, 10000, 15000, 11, 34932, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 15000 and 20000 ms (and later repeats every 10000 and 15000 ms) - Self: Cast spell Bloodmaul Buzz (34932) on Self // "),
(@ENTRY, 0, 4, 5, 2, 0, 100, 1, 0, 20, 1, 1, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When health between 0% and 20% (check every 1 - 1 ms) - Self: Cast spell Enrage (8599) on Self // "),
(@ENTRY, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Talk 2 // "),
(@ENTRY, 0, 6, 0, 54, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 20, 184713, 0, 0, 0, 0, 0, 0, "On just summoned - Self: Move to Closest gameobject 0 in 100 yards (point id 0) // "),
(@ENTRY, 0, 7, 0, 40, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, "On any waypoint of any path reached - Self: Attack Closest player in 0 yards // ");

-- Creature Darkclaw Bat 23959 SAI
SET @ENTRY := 23959;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On reset (e.g. after reaching home) - Self: Set event phase to 1 // "),
(@ENTRY, 0, 1, 2, 38, 1, 100, 0, 1, 1, 0, 0, 69, 0, 0, 0, 0, 0, 0, 19, 24230, 50, 0, 0, 0, 0, 0, "On data 1 set to 1 - Self: Move to Closest alive creature Feknut's Firecrackers Bunny (24230) in 50 yards (point id 0) // "),
(@ENTRY, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 11, 62068, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Cast spell Scare the Guano Out of Them!: Cast Spell 1 On Target's Master (62068) on Self // "),
(@ENTRY, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Set event phase to 2 // ");

-- Creature Feknut's Firecrackers Bunny 24230 SAI
SET @ENTRY := 24230;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 23959, 50, 0, 0, 0, 0, 0, "On just summoned - Closest alive creature Darkclaw Bat (23959) in 50 yards: Set creature data #1 to 1 // "),
(@ENTRY, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Despawn in 5000 ms // ");

-- Creature Naberius 20483 SAI
SET @ENTRY := 20483;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 10000, 15000, 25000, 30000, 11, 36146, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 10000 and 15000 ms (and later repeats every 25000 and 30000 ms) - Self: Cast spell Chains of Naberius (36146) on Random hostile (not top) // "),
(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 1000, 4000, 4000, 4000, 11, 15497, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 1000 and 4000 ms (and later repeats every 4000 and 4000 ms) - Self: Cast spell Frostbolt (15497) on Victim // "),
(@ENTRY, 0, 2, 0, 0, 0, 100, 0, 2000, 5000, 10000, 12000, 11, 36148, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 2000 and 5000 ms (and later repeats every 10000 and 12000 ms) - Self: Cast spell Chill Nova (36148) on Victim // ");


UPDATE `quest_template` SET `AddedInBuild`=10314 WHERE id in (13887, 13850, 13906);