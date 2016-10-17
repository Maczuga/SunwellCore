-- Creature Rift Spawn 6492 SAI
SET @ENTRY := 6492;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 8, 0, 100, 0, 9095, 0, 0, 0, 28, 34426, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On spell Cantation of Manifestation (9095) hit  - Self: Remove aura due to spell Greater Invisibility (34426) // Rift Spawn - On Spellhit - Remove Aura"),
(@ENTRY, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 28, 9095, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Remove aura due to spell Cantation of Manifestation (9095) // Rift Spawn - On Spellhit - Remove Aura"),
(@ENTRY, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 11, 9096, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Cast spell Rift Spawn Manifestation (9096) on Self // Rift Spawn - On Spellhit - Cast Rift Spawn Manifestation"),
(@ENTRY, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Attack Action invoker // Rift Spawn - On Spellhit - Attack ActionInvoker"),
(@ENTRY, 0, 4, 5, 11, 0, 100, 0, 0, 0, 0, 0, 11, 34426, 19, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On respawn  - Self: Cast spell Greater Invisibility (34426) on Self // Rift Spawn - on spawn - add aura"),
(@ENTRY, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 19, 33685508, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Remove UNIT_FLAGS to UNIT_FLAG_DISABLE_MOVE, UNIT_FLAG_PACIFIED, UNIT_FLAG_NOT_SELECTABLE // Rift Spawn - On spawn - remove Flag"),
(@ENTRY, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 42, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - What is it? // Rift Spawn - on Spawn - Set Invincible HP"),
(@ENTRY, 0, 7, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 34426, 19, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On reset (e.g. after reaching home) - Self: Cast spell Greater Invisibility (34426) on Self // Rift Spawn - on reset - add aura"),
(@ENTRY, 0, 8, 9, 2, 0, 100, 1, 0, 1, 0, 0, 18, 33685508, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When health between 0% and 1% (check every 0 - 0 ms) - Self: Set UNIT_FLAGS to UNIT_FLAG_DISABLE_MOVE, UNIT_FLAG_PACIFIED, UNIT_FLAG_NOT_SELECTABLE // Rift Spawn - on 1% HP - add flag"),
(@ENTRY, 0, 9, 10, 61, 0, 100, 0, 0, 0, 0, 0, 11, 9032, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Cast spell Self Stun - 30 seconds (9032) on Self // Rift Spawn - On On 1% HP - Cast Self Stun - 30 seconds"),
(@ENTRY, 0, 10, 11, 61, 0, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Set event phase to 2 // Rift Spawn - On 1% HP - Set Phase 2"),
(@ENTRY, 0, 11, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 31000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Despawn in 31000 ms // Rift Spawn - On 1% HP - despawn"),
(@ENTRY, 0, 12, 0, 25, 0, 100, 0, 0, 0, 0, 0, 19, 33685508, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On reset (e.g. after reaching home) - Self: Remove UNIT_FLAGS to UNIT_FLAG_DISABLE_MOVE, UNIT_FLAG_PACIFIED, UNIT_FLAG_NOT_SELECTABLE // Rift Spawn - on reset - remove aura"),
(@ENTRY, 0, 13, 0, 4, 0, 100, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On aggro - Self: Talk 0 // Rift Spawn - On Aggro - Say Line 0"),
(@ENTRY, 0, 14, 0, 7, 2, 100, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On evade - Self: Talk 1 // Rift Spawn - On Evade (Phase 2)  - Say line 1");

-- Gameobject Containment Coffer 122088 SAI
SET @ENTRY := 122088;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 1, 0, 1, 1, 0, 100, 1, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When out of combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Activate (only gameobject) // "),
(@ENTRY, 1, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 12, 23837, 1, 15000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Summon creature ELM General Purpose Bunny (23837) at Self, moved by offset (0, 0, 0, 0) // "),
(@ENTRY, 1, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 32, 32, 0, 0, 0, 0, 19, 23837, 0, 0, 0, 0, 0, 0, " Linked - Closest alive creature 0 in 100 yards: Set creature data #32 to 32 // "),
(@ENTRY, 1, 3, 4, 1, 0, 100, 1, 4000, 4000, 4000, 4000, 41, 0, 0, 0, 0, 0, 0, 19, 6492, 1, 0, 0, 0, 0, 0, "When out of combat and timer at the begining between 4000 and 4000 ms (and later repeats every 4000 and 4000 ms) - Closest alive creature Rift Spawn (6492) in 1 yards: Despawn instantly // "),
(@ENTRY, 1, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Despawn instantly // ");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=6492 AND SourceId = 0;

DELETE FROM `creature_text` WHERE `entry`=6492;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextID`) VALUES 
(6492, 0, 0, '%s is angered and attacks!', 16, 0, 100, 0, 0, 0, 'Rift Spawn', 3074),
(6492, 1, 0, '%s escapes into the void!', 16, 0, 100, 0, 0, 0, 'Rift Spawn', 2564);

DELETE FROM `disables` WHERE `sourceType`=0 AND `entry`=9095;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(0, 9095, 64, '', '', 'Ignore LOS on  Cantation of Manifestation');

UPDATE gameobject SET animprogress = 0, spawntimesecs = ABS(spawntimesecs) WHERE id = 20919;

UPDATE `quest_template` SET `AddedInBuild`=12340 WHERE  `Id`=26013;
REPLACE INTO `creature_addon` (`guid`, `bytes1`, `emote`) VALUES (129727, 7, 65);

UPDATE `creature_template` SET `DamageModifier`=1 WHERE  `entry`=28782;

-- Creature Fel Cannon: Hate 19067 SAI
SET @ENTRY := 19067;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 8, 0, 100, 0, 33531, 0, 0, 0, 33, 19067, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, "On spell Fel Cannon: Hate (33531) hit  - Party invoker: Give kill credit Fel Cannon: Hate (19067) // Fel Cannon: Hate - On Spellhit 'Fel Cannon: Hate' - Quest Credit 'Forge Camp: Annihilated'"),
(@ENTRY, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, 19212, 50, 0, 0, 0, 0, 0, " Linked - Self: Look at Closest alive creature Fel Cannon: Hate Target (19212) in 50 yards // "),
(@ENTRY, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Set event phase to 2 // "),
(@ENTRY, 0, 3, 0, 1, 2, 100, 0, 3000, 3000, 0, 0, 11, 33535, 0, 0, 0, 0, 0, 19, 19212, 50, 0, 0, 0, 0, 0, "When out of combat and timer at the begining between 3000 and 3000 ms (and later repeats every 0 and 0 ms) - Self: Cast spell Fel Energy Beam (33535) on Closest alive creature Fel Cannon: Hate Target (19212) in 50 yards // "),
(@ENTRY, 0, 4, 5, 1, 2, 100, 0, 8000, 8000, 0, 0, 92, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When out of combat and timer at the begining between 8000 and 8000 ms (and later repeats every 0 and 0 ms) - Self: Interrupt casted spell // "),
(@ENTRY, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Set event phase to 1 // ");

-- Creature Fel Cannon: Fear 19210 SAI
SET @ENTRY := 19210;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 8, 0, 100, 0, 33532, 0, 0, 0, 33, 19210, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, "On spell Fel Cannon: Fear (33532) hit  - Party invoker: Give kill credit Fel Cannon: Fear (19210) // "),
(@ENTRY, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, 19211, 50, 0, 0, 0, 0, 0, " Linked - Self: Look at Closest alive creature Fel Cannon: Fear Target (19211) in 50 yards // "),
(@ENTRY, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Set event phase to 2 // "),
(@ENTRY, 0, 3, 0, 1, 2, 100, 0, 3000, 3000, 10000, 10000, 11, 33535, 0, 0, 0, 0, 0, 19, 19211, 50, 0, 0, 0, 0, 0, "When out of combat and timer at the begining between 3000 and 3000 ms (and later repeats every 10000 and 10000 ms) - Self: Cast spell Fel Energy Beam (33535) on Closest alive creature Fel Cannon: Fear Target (19211) in 50 yards // "),
(@ENTRY, 0, 4, 5, 1, 2, 100, 0, 8000, 8000, 10000, 10000, 92, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When out of combat and timer at the begining between 8000 and 8000 ms (and later repeats every 10000 and 10000 ms) - Self: Interrupt casted spell // "),
(@ENTRY, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Set event phase to 1 // ");

UPDATE `creature_template` SET `ScriptName`='npc_dark_rider_of_acherus' WHERE `entry` =28654;
UPDATE `creature_template` SET `ScriptName`='npc_salanar_the_horseman', `AIName` = '' WHERE `entry` = 28653;
DELETE FROM `smart_scripts` WHERE `entryorguid`=28653;

-- Creature Bleeding Hollow Tormentor 19424 SAI
SET @ENTRY := 19424;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 5000, 5000, 10000, 10000, 11, 30530, 1, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 5000 and 5000 ms (and later repeats every 10000 and 10000 ms) - Self: Cast spell Fear (30530) on Second highest aggro // "),
(@ENTRY, 0, 1, 0, 0, 0, 100, 1, 0, 0, 3000, 3000, 11, 34368, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 0 ms (and later repeats every 3000 and 3000 ms) - Self: Cast spell Summon Riding Worg (34368) on Self // "),
(@ENTRY, 0, 2, 3, 2, 0, 100, 1, 0, 15, 0, 0, 11, 31553, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When health between 0% and 15% (check every 0 - 0 ms) - Self: Cast spell Hamstring (31553) on Victim // "),
(@ENTRY, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Flee for assist // ");

UPDATE `quest_template_addon` SET ExclusiveGroup = 12932 WHERE ID IN (12932, 12954);
UPDATE `quest_template_addon` SET `PrevQuestID`=9977 WHERE  `ID`=12954;

-- Isle of Quel'Danas - prevent Dawnblade Hawkrider's SAI from targeting players.
DELETE FROM `conditions` WHERE `SourceEntry`=25063;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(22, 1, 25063, 0, 0, 31, 0, 4, 0, 0, 1, 0, 0, "", "Dawnblade Hawkrider's SAI id 1 does not execute if invoker is a player");

-- fix race availability for four quests (that should be Human only).
UPDATE `quest_template` SET `RequiredRaces`=1 WHERE `ID` IN (6181, 6281, 6261, 6285);

--
UPDATE `quest_template_addon` SET `RewardMailTemplateId`=93, `RewardMailDelay`=7200 WHERE `Id`=8323;
UPDATE `quest_template_addon` SET `RewardMailTemplateId`=94, `RewardMailDelay`=7200 WHERE `Id`=8324;

--
-- True Believers and Still Believing
DELETE FROM `mail_loot_template` WHERE `Item`=20469;
INSERT INTO `mail_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(93, 20469, 0, 100, 0, 1, 0, 1, 1, ""),
(94, 20469, 0, 100, 0, 1, 0, 1, 1, "");

-- A Terrible Purpose.
UPDATE `quest_template_addon` SET `RewardMailTemplateId`=110, `RewardMailDelay`=7200 WHERE `Id`=8287;

DELETE FROM `mail_loot_template` WHERE `Entry`=110;
INSERT INTO `mail_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(110, 20645, 0, 100, 0, 1, 0, 1, 1, "");

-- Wrath of Neptulon
UPDATE `quest_template_addon` SET `RewardMailTemplateId`=123, `RewardMailDelay`=86400 WHERE `Id`=8729;

-- A Letter for Home (Alliance and Horde)
UPDATE `quest_template_addon` SET `RewardMailTemplateId`=193, `RewardMailDelay`=86400 WHERE `Id`=12067;
UPDATE `quest_template_addon` SET `RewardMailTemplateId`=194, `RewardMailDelay`=86400 WHERE `Id`=12085;

-- Tactical Clemency
UPDATE `quest_template_addon` SET `RewardMailTemplateId`=234 WHERE `Id`=12422;

-- Abandoned Mail
UPDATE `quest_template_addon` SET `RewardMailTemplateId`=236 WHERE `Id`=12711;

DELETE FROM `mail_loot_template` WHERE `Entry`=236;
INSERT INTO `mail_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(236, 39317, 0, 100, 0, 1, 0, 1, 1, "");

-- Hammershout the Elder
UPDATE `quest_template_addon` SET `RewardMailTemplateId`=92 WHERE `Id`=8646;

-- Various Lunar Festival quests
DELETE FROM `quest_template_addon` WHERE `Id` IN (13067, 13066, 13065, 13033, 13032, 13031, 13030, 13029, 13028, 13027, 13026, 13025, 13024, 13023, 13022, 13021, 13020, 13019, 13018, 13017, 13016, 13015, 13014, 13013, 13012);
INSERT INTO `quest_template_addon` (`Id`, `RewardMailTemplateId`, `RewardMailDelay`) VALUES
(13012, 237, 21600),
(13013, 238, 21600),
(13014, 239, 21600),
(13015, 240, 21600),
(13016, 241, 21600),
(13017, 242, 21600),
(13018, 243, 21600),
(13019, 244, 21600),
(13020, 245, 21600),
(13021, 246, 21600),
(13022, 247, 21600),
(13023, 248, 21600),
(13024, 249, 21600),
(13025, 250, 21600),
(13026, 251, 21600),
(13027, 252, 21600),
(13028, 253, 21600),
(13029, 254, 21600),
(13030, 255, 21600),
(13031, 256, 21600),
(13032, 257, 21600),
(13033, 258, 21600),
(13065, 259, 21600),
(13066, 260, 21600),
(13067, 261, 21600);

DELETE FROM `mail_loot_template` WHERE `Entry` BETWEEN 237 AND 261;
INSERT INTO `mail_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(237, 21746, 0, 100, 0, 1, 0, 1, 1, ""),
(238, 21746, 0, 100, 0, 1, 0, 1, 1, ""),
(239, 21746, 0, 100, 0, 1, 0, 1, 1, ""),
(240, 21746, 0, 100, 0, 1, 0, 1, 1, ""),
(241, 21746, 0, 100, 0, 1, 0, 1, 1, ""),
(242, 21746, 0, 100, 0, 1, 0, 1, 1, ""),
(243, 21746, 0, 100, 0, 1, 0, 1, 1, ""),
(244, 21746, 0, 100, 0, 1, 0, 1, 1, ""),
(245, 21746, 0, 100, 0, 1, 0, 1, 1, ""),
(246, 21746, 0, 100, 0, 1, 0, 1, 1, ""),
(247, 21746, 0, 100, 0, 1, 0, 1, 1, ""),
(248, 21746, 0, 100, 0, 1, 0, 1, 1, ""),
(249, 21746, 0, 100, 0, 1, 0, 1, 1, ""),
(250, 21746, 0, 100, 0, 1, 0, 1, 1, ""),
(251, 21746, 0, 100, 0, 1, 0, 1, 1, ""),
(252, 21746, 0, 100, 0, 1, 0, 1, 1, ""),
(253, 21746, 0, 100, 0, 1, 0, 1, 1, ""),
(254, 21746, 0, 100, 0, 1, 0, 1, 1, ""),
(255, 21746, 0, 100, 0, 1, 0, 1, 1, ""),
(256, 21746, 0, 100, 0, 1, 0, 1, 1, ""),
(257, 21746, 0, 100, 0, 1, 0, 1, 1, ""),
(258, 21746, 0, 100, 0, 1, 0, 1, 1, ""),
(259, 21746, 0, 100, 0, 1, 0, 1, 1, ""),
(260, 21746, 0, 100, 0, 1, 0, 1, 1, ""),
(261, 21746, 0, 100, 0, 1, 0, 1, 1, "");

UPDATE `gameobject` SET `spawntimesecs` = 2 WHERE `id` IN (188518,188530,190208,188461,187022,187023,187026,187027,187032,187381,186885,186886,187033,186684,176189);

--
UPDATE `quest_template` SET `RequiredRaces`=8 WHERE `ID` IN (6344, 6341, 6342, 6343);

UPDATE `quest_offer_reward` SET `RewardText`="I bid you greetings, $N. Your name rings loudly in Darnassus, for you show promise. But we shall soon see if you possess the strength of will to follow the path of the $C." WHERE `ID`=1684;

UPDATE `creature_template` SET `faction`=189 WHERE `entry`=1986;

UPDATE `smart_scripts` SET `action_param2`=2 WHERE `entryorguid`=16819 AND `id`=1;

UPDATE `smart_scripts` SET `event_param2`=30000, `event_param4`=30000 WHERE `entryorguid`=2030 AND `id`=2;
UPDATE `smart_scripts` SET `event_param2`=30000, `event_param4`=30000 WHERE `entryorguid`=2009 AND `id`=0;

-- 
UPDATE `creature_template` SET `ScriptName`="" WHERE `entry` IN (27017);
DELETE FROM `creature_text` WHERE `entry`=27017;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `broadcasttextid`) VALUES
(27017,0,0,'Initiating energy collection.',12,0,100,0,0,0,'War Golem',26153),
(27017,1,0,'Energy collection complete.',12,0,100,0,0,0,'War Golem',26154);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2701700) AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (27017) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(27017, 0, 0, 0, 38, 0, 100, 512, 0, 1, 4000, 4000, 80, 2701700, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Depleted War Golem - On Data Set 0 1 - Actionlist"),
(2701700, 9, 0, 0, 0, 0, 100, 512, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 19, 26407, 25, 1, 0, 0, 0, 0, "Depleted War Golem - Actionlist - Move to pos"),
(2701700, 9, 1, 0, 0, 0, 100, 512, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Depleted War Golem - Actionlist - Say text 1"),
(2701700, 9, 2, 0, 0, 0, 100, 512, 3000, 3000, 0, 0, 11, 47799, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Depleted War Golem - Actionlist - cast"),
(2701700, 9, 3, 0, 0, 0, 100, 512, 5000, 5000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Depleted War Golem - Actionlist - Say text 2"),
(2701700, 9, 4, 0, 0, 0, 100, 512, 0, 0, 0, 0, 11, 47797, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, "Depleted War Golem - Actionlist - Cast 'War Golem Charge Credit'"),
(2701700, 9, 5, 0, 0, 0, 100, 512, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Depleted War Golem - Actionlist - evade");

DELETE FROM `quest_template_addon` WHERE `ID`=919;
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`) VALUES
(919, 997);

UPDATE quest_offer_reward SET `RewardText`="Ah, it's here! I have waited for this rare earth for quite some time. I hope it's still fresh...$b$bThank you for bringing it to me, $N. You are a $R who is generous with $Ghis:her; time." WHERE `ID`=997;

--
UPDATE `gameobject_template` AS  gt SET gt.`flags`=gt.`flags`|4 WHERE gt.`entry` IN (31,33,34,35,36,47,55,56,59,60,61,68,76,254,256,257,259,261,270,287,288,711,1557,1561,1585,1586,1593,1599,1609,1627,1720,1728,1738,1739,1740,1763,1767,2008,2059,2076,2083,2289,2553,2555,2556,2652,2657,2688,2701,2702,2703,2713,2734,2868,2875,2908,2933,3076,3643,3740,3972,4141,5619,5620,5621,7510,7923,10076,12666,16431,17182,17183,17184,17185,19024,19599,20985,20992,21015,21016,21042,24776,32569,35251,50961,51708,61934,65407,89931,112877,112888,112948,113791,131474,138492,141980,142071,142122,142127,142151,142179,142194,142195,142343,142487,142702,142703,142704,142705,142706,142707,142708,142709,142710,142711,142712,142713,142714,142958,144181,148504,148512,148838,149047,149420,149502,150075,151286,152097,156561,161504,161505,164689,164867,164868,164869,164885,164886,164887,164888,164909,164953,164954,169217,171939,171942,173284,173324,173327,174594,174595,174596,174597,174598,174599,174600,174601,174602,174603,174604,174605,174606,174607,174608,174682,174684,174686,174708,174709,174712,174713,175084,175085,175087,175226,175227,175230,175320,175524,175586,175587,175607,175608,175609,175704,175894,175924,175925,176090,176091,176115,176190,176191,176196,176197,176198,176317,176361,176392,176393,176631,177289,177491,177544,177667,177675,177725,177727,177786,177904,178125,178444,180652,179437,179438,179485,179517,179551,179827,179880,180025,180056,180366,180448,180503,180570,180633,180918,181011,181150,181698,181748,181756,181758,182062,182065,182549,182796,182934,183340,183341,183435,184300,184477,184825,184830,184846,184961,184962,184963,185121,185165,185166,210334,210349,175233,180642,180715,180743,180746,181643,181649,211017,211018,211024,211052,211053,186264,186314,186881,180024,187273,186419,186420,211023,189989,189990,187851,190039,190040,190044,190047,187565,188085,188364,188419,186864,188261,188365,188667,190768,192072,186935,193400,186585,187905,189303,189311,189312,190036,190037,190041,190042,190043,190045,190052,190057,190059,190061,190064,190065,190066,190067,190068,190069,190070,190071,190072,190073,190074,190075,190076,190077,190078,190079,190080,190081,190082,190083,190084,190085,190087,190102,190103,190104,190105,190108,190110,190111,190113,190116,190535,190602,190657,190917,190936,191728,191760,191761,191766,192060,192833,190777,193195,192524,192080,192079,190034,190107,190038,190046,190048,190049,190050,190051,190053,190054,190106,190035,191879,191881,191882,194059,194060,194061,194062,194064,194067,194068,194069,194070,194071,194072,194078,194079,194081,194084,190055,190062,190100,190112,194066,194057,194056,191878,190063,194063,191880,194077,192018,190086,190088,190089,190097,190101,190115,190098,190096,190109,190099,190114,190091,190090,191883,194076,201742,190056,190058,190060,194058,194065,194073,194074,194075,194080,194119,181073,180055);

--
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=3693;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(22, 1, 3693, 0, 0, 29, 1, 3694, 100, 0, 1, 0, 0, "", "Terenthis - Execute SAI 0 only if not within 100 yards of Sentinel Selarin"),
(22, 2, 3693, 0, 0, 29, 1, 3694, 100, 0, 1, 0, 0, "", "Terenthis - Execute SAI 1 only if not within 100 yards of Sentinel Selarin");

DELETE FROM `creature_text` WHERE `entry`=3694;
DELETE FROM `creature_text` WHERE `entry`=3693 AND `groupid`=7;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(3694, 0, 0, (SELECT `FemaleText` FROM `broadcast_text` WHERE `ID`=1302), 12, 7, 100, 0, 0, 0, 1302, 0, "Sentinel Selarin"),
(3694, 1, 0, (SELECT `FemaleText` FROM `broadcast_text` WHERE `ID`=1303), 12, 7, 100, 0, 0, 0, 1303, 0, "Sentinel Selarin"),
(3694, 2, 0, (SELECT `FemaleText` FROM `broadcast_text` WHERE `ID`=1304), 12, 7, 100, 0, 0, 0, 1304, 0, "Sentinel Selarin"),
(3694, 3, 0, (SELECT `FemaleText` FROM `broadcast_text` WHERE `ID`=1306), 12, 7, 100, 0, 0, 0, 1306, 0, "Sentinel Selarin"),
(3693, 7, 0, (SELECT `MaleText` FROM `broadcast_text` WHERE `ID`=1305), 12, 7, 100, 0, 0, 0, 1305, 0, "Terenthis");

UPDATE `smart_scripts` SET `link`=5 WHERE `entryorguid`=3694 AND `id`=2;
UPDATE `smart_scripts` SET `link`=6 WHERE `entryorguid`=3694 AND `id`=4;
DELETE FROM `smart_scripts` WHERE `entryorguid`=3694 AND `id` IN (5, 6);
DELETE FROM `smart_scripts` WHERE `entryorguid`=369400;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3694, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 83, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Sentinel Selarin - On Summon - Remove Questgiver+Gossip npcflag"),
(3694, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, 369400, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Sentinel Selarin - On Waypoint 12 Reached - Run Actionlist"),

(369400, 9, 0, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Sentinel Selarin - On Script - Talk 0"),
(369400, 9, 1, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 7, 0, 0, 0, 0, 0, 19, 3693, 0, 0, 0, 0, 0, 0, "Sentinel Selarin - On Script - Talk 7 (Terenthis)"),
(369400, 9, 2, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Sentinel Selarin - On Script - Talk 1"),
(369400, 9, 3, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Sentinel Selarin - On Script - Talk 2"),
(369400, 9, 4, 0, 61, 0, 100, 0, 2000, 2000, 0, 0, 82, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Sentinel Selarin - On Summon - Add Questgiver+Gossip npcflag"),
(369400, 9, 5, 0, 0, 0, 100, 0, 90000, 90000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Sentinel Selarin - On Script - Talk 3"),
(369400, 9, 6, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 83, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Sentinel Selarin - On Script - Remove Questgiver+Gossip npcflag");

--
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=3695;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(22, 1, 3695, 0, 0, 29, 1, 3693, 100, 0, 0, 0, 0, "", "Grimclaw - Execute SAI 0 only if within 100 yards of Terenthis");

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (3695, 369500);
DELETE FROM `smart_scripts` WHERE `entryorguid`=3693 AND `id` IN (3, 4);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3693, 0, 3, 4, 20, 0, 100, 0, 985, 0, 0, 0, 83, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Terenthis - On Quest How Big a Threat? (Part 2) Rewarded - Remove Questgiver+Gossip npcflag"),
(3693, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 12, 3695, 8, 0, 0, 0, 0, 8, 0, 0, 0, 6402.4761, 368.3005, 16.3091, 1.0602, "Terenthis - On Quest How Big a Threat? (Part 2) Rewarded - Summon Grimclaw"),

(3695, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 53, 1, 3695, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Grimclaw - On Respawn - Start Waypoint"),
(3695, 0, 1, 0, 40, 0, 100, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, 3693, 0, 0, 0, 0, 0, 0, "Grimclaw - On WP 1 Reached - Talk 0 (Terenthis)"),
(3695, 0, 2, 0, 40, 0, 100, 0, 5, 0, 0, 0, 80, 369500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Grimclaw - On WP 5 Reached - Run Actionlist"),
(3695, 0, 3, 0, 40, 0, 100, 0, 9, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Grimclaw - On WP 9 Reached - Despawn"),

(369500, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 54, 57000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Grimclaw - On Script - Pause Waypoint for 57 seconds"),
(369500, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Grimclaw - On Script - Talk 0"),
(369500, 9, 2, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 19, 3693, 0, 0, 0, 0, 0, 0, "Grimclaw - On Script - Talk 1 (Terenthis)"),
(369500, 9, 3, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Grimclaw - On Script - Talk 1"),
(369500, 9, 4, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 19, 3693, 0, 0, 0, 0, 0, 0, "Grimclaw - On Script - Talk 2 (Terenthis)"),
(369500, 9, 5, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 19, 3693, 0, 0, 0, 0, 0, 0, "Grimclaw - On Script - Talk 3 (Terenthis)"),
(369500, 9, 6, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 19, 3693, 0, 0, 0, 0, 0, 0, "Grimclaw - On Script - Talk 4 (Terenthis)"),
(369500, 9, 7, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Grimclaw - On Script - Talk 2"),
(369500, 9, 8, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 5, 0, 0, 0, 0, 0, 19, 3693, 0, 0, 0, 0, 0, 0, "Grimclaw - On Script - Talk 5 (Terenthis)"),
(369500, 9, 9, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Grimclaw - On Script - Talk 3"),
(369500, 9, 10, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 6, 0, 0, 0, 0, 0, 19, 3693, 0, 0, 0, 0, 0, 0, "Grimclaw - On Script - Talk 6 (Terenthis)"),
(369500, 9, 11, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 82, 3, 0, 0, 0, 0, 0, 19, 3693, 0, 0, 0, 0, 0, 0, "Grimclaw - On Script - Add Questgiver+Gossip npcflag (Terenthis)");

DELETE FROM `waypoints` WHERE `entry`=3695;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(3695, 1, 6409.0093, 381.5969, 13.7997, "Grimclaw"),
(3695, 2, 6422.3823, 398.5416, 11.1623, "Grimclaw"),
(3695, 3, 6429.1572, 395.6921, 11.6041, "Grimclaw"),
(3695, 4, 6437.8657, 372.9119, 13.9415, "Grimclaw"),
(3695, 5, 6436.2852, 366.5291, 13.9415, "Grimclaw"),
(3695, 6, 6437.8657, 372.9119, 13.9415, "Grimclaw"),
(3695, 7, 6429.1572, 395.6921, 11.6041, "Grimclaw"),
(3695, 8, 6422.3823, 398.5416, 11.1623, "Grimclaw"),
(3695, 9, 6409.0093, 381.5969, 13.7997, "Grimclaw");

DELETE FROM `creature_text` WHERE `entry` IN (3693, 3695);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(3693, 0, 0, (SELECT `MaleText` FROM `broadcast_text` WHERE `ID`=1245), 12, 7, 100, 0, 0, 0, 1245, 0, "Terenthis"),
(3693, 1, 0, (SELECT `MaleText` FROM `broadcast_text` WHERE `ID`=1227), 12, 7, 100, 0, 0, 0, 1227, 0, "Terenthis"),
(3693, 2, 0, (SELECT `MaleText` FROM `broadcast_text` WHERE `ID`=1229), 12, 7, 100, 0, 0, 0, 1229, 0, "Terenthis"),
(3693, 3, 0, (SELECT `MaleText` FROM `broadcast_text` WHERE `ID`=1246), 16, 7, 100, 0, 0, 0, 1246, 0, "Terenthis"),
(3693, 4, 0, (SELECT `MaleText` FROM `broadcast_text` WHERE `ID`=1230), 12, 7, 100, 0, 0, 0, 1230, 0, "Terenthis"),
(3693, 5, 0, (SELECT `MaleText` FROM `broadcast_text` WHERE `ID`=1232), 12, 7, 100, 0, 0, 0, 1232, 0, "Terenthis"),
(3693, 6, 0, (SELECT `MaleText` FROM `broadcast_text` WHERE `ID`=1384), 12, 7, 100, 0, 0, 0, 1384, 0, "Terenthis"),

(3695, 0, 0, (SELECT `MaleText` FROM `broadcast_text` WHERE `ID`=1226), 16, 7, 100, 0, 0, 0, 1226, 0, "Grimclaw"),
(3695, 1, 0, (SELECT `MaleText` FROM `broadcast_text` WHERE `ID`=1228), 16, 7, 100, 0, 0, 0, 1228, 0, "Grimclaw"),
(3695, 2, 0, (SELECT `MaleText` FROM `broadcast_text` WHERE `ID`=1231), 16, 7, 100, 0, 0, 0, 1231, 0, "Grimclaw"),
(3695, 3, 0, (SELECT `MaleText` FROM `broadcast_text` WHERE `ID`=1233), 16, 7, 100, 0, 0, 0, 1233, 0, "Grimclaw");

--
DELETE FROM `pool_template` WHERE `entry` BETWEEN 5707 AND 5710 OR `entry` IN (384, 385);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(5707, 1, "Wintergrasp weekly quests (Alliance, attackers)"),
(5708, 1, "Wintergrasp weekly quests (Alliance, defenders)"),
(5709, 1, "Wintergrasp weekly quests (Horde, attackers)"),
(5710, 1, "Wintergrasp weekly quests (Horde, defenders)");

DELETE FROM `pool_quest` WHERE `pool_entry` BETWEEN 5707 AND 5710 OR `pool_entry` IN (384, 385);
INSERT INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES
(13195, 5707, "A Rare Herb (Alliance, attackers)"),
(13196, 5707, "Bones and Arrows (Alliance, attackers)"),
(13197, 5707, "Fueling the Demolishers (Alliance, attackers)"),
(13198, 5707, "Warding the Warriors (Alliance, attackers)"),

(13156, 5708, "A Rare Herb (Alliance, defenders)"),
(13154, 5708, "Bones and Arrows (Alliance, defenders)"),
(236, 5708, "Fueling the Demolishers (Alliance, defenders)"),
(13153, 5708, "Warding the Warriors (Alliance, defenders)"),

(13201, 5709, "A Rare Herb (Horde, attackers)"),
(13199, 5709, "Bones and Arrows (Horde, attackers)"),
(13200, 5709, "Fueling the Demolishers (Horde, attackers)"),
(13202, 5709, "Jinxing the Walls (Horde, attackers)"),

(13194, 5710, "Healing with Roses (Horde, defenders)"),
(13193, 5710, "Bones and Arrows (Horde, defenders)"),
(13191, 5710, "Fueling the Demolishers (Horde, defenders)"),
(13192, 5710, "Warding the Walls (Horde, defenders)");

