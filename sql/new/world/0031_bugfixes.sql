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
DELETE FROM `smart_scripts` WHERE `entryorguid`=1940 AND `source_type`=0 AND `id`=2 AND `link`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=1940 AND `source_type`=0 AND `id`=3 AND `link`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=1940 AND `source_type`=0 AND `id`=4 AND `link`=0;
# Herzul and pack - pathing
DELETE FROM `creature_formations` WHERE `memberGUID` IN (13990, 13991, 13992);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (13990, 13990, 0, 0, 2);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (13990, 13991, 4, 90, 2);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (13990, 13992, 4, 270, 2);
UPDATE `creature` SET `MovementType`=2 WHERE `guid`=13990;
UPDATE `creature_addon` SET `path_id`=139900 WHERE `guid`=13990;
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

# Rotting Ancestor
UPDATE `creature` SET `position_x`=3058.74, `position_y`=655.327, `position_z`=75.3524, `orientation`=3.28818 WHERE `guid`=38246;
# Pyrewood Ambush
UPDATE `creature_template` SET `DamageModifier`=0.1 WHERE `entry`=2058;

UPDATE `waypoint_data` SET `delay`=80000, `action`=0 WHERE `id`=297790 AND `point`=13;


# NPC: Sagorne Creststrider <Shaman Trainer>
UPDATE `gossip_menu_option` SET `option_text`='Teach me the ways of the spirits.' WHERE `menu_id`=5123 AND `id`=0;
# Trial of the Sea Lion
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES (27812, 177844, 0, 0, 0, 1, 1, 842.781, 2208.34, -136.78, 3.2799, -0, -0, -0.99761, 0.0690986, 50, 100, 1, 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES (269068, 180057, 0, 0, 0, 1, 1, 837.835, 2208.33, -137.017, 0.110862, -0, -0, -0.0554024, -0.998464, 300, 0, 1, 0);
# [Quest] Mage Summoner
UPDATE `creature_template` SET `faction`=91 WHERE `entry`=3950;
UPDATE `creature_template` SET `flags_extra`=2 WHERE `entry`=3986;
-- Creature Sarilus Foulborne 3986 SAI
SET @ENTRY := 3986;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 4000, 4000, 5000, 8000, 11, 20806, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 4000 and 4000 ms (and later repeats every 5000 and 8000 ms) - Self: Cast spell Frostbolt (20806) on Random hostile // "),
(@ENTRY, 0, 1, 0, 0, 0, 100, 1, 0, 1000, 0, 0, 11, 6490, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 0 and 1000 ms (and later repeats every 0 and 0 ms) - Self: Cast spell Sarilus's Elementals (6490) on Self // "),
(@ENTRY, 0, 2, 0, 7, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 9, 3950, 0, 40, 0, 0, 0, 0, "On evade - Creature Minor Water Guardian (3950) in 0 - 40 yards: Despawn in 1000 ms // ");
# [NPC] Pridewing consort
UPDATE `creature_template` SET `InhabitType`=3 WHERE `entry`=4014;

DELETE FROM `gameobject` WHERE `guid` IN (7304, 7321);

DELETE FROM `spell_script_names` WHERE `spell_id`=32216;
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(32216,'spell_warr_victorious');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (13, 17) AND `SourceEntry` IN (42767, 42788);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 2, 42788, 0, 0, 31, 0, 3, 23943, 0, 0, 0, 0, "", "Spell 'Feed Plaguehound' targets NPC 'Hungry Plaguehound'"),
(17, 0, 42788, 0, 0, 29, 0, 23943, 10, 0, 0, 0, 0, "", "Spell 'Feed Plaguehound' requires NPC 'Hungry Plaguehound' within 10 yards"),
(13, 1, 42767, 0, 0, 31, 0, 3, 23945, 0, 0, 0, 0, "", "Spell 'Sic'em' targets NPC 'Fjord Crow'");

UPDATE `creature_template` SET `spell1`=42767 WHERE `entry`=23943;

UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=23945;
DELETE FROM `smart_scripts` WHERE `entryorguid`=23945;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(23945, 0, 0, 0, 8, 0, 100, 0, 42767, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Fjord Crow - On Spellhit 'Sic'em' - Attack Invoker");

-- Creature Hungry Plaguehound 23943 SAI
SET @ENTRY := 23943;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 85, 42790, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On just summoned - Invoker: Cast spell Charm Plaguehound (42790) to Self // ");

INSERT INTO `disables` (`sourceType`, `entry`, `comment`) VALUES (7, 175786, 'Mangletooth cage');

-- Creature Rift Spawn 6492 SAI
SET @ENTRY := 6492;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 8, 0, 100, 0, 9095, 0, 0, 0, 28, 34426, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On spell Cantation of Manifestation (9095) hit - Self: Remove aura due to spell Greater Invisibility (34426) // Rift Spawn - On Spellhit - Remove Aura"),
(@ENTRY, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 28, 9095, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Remove aura due to spell Cantation of Manifestation (9095) // Rift Spawn - On Spellhit - Remove Aura"),
(@ENTRY, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 11, 9096, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Cast spell Rift Spawn Manifestation (9096) on Self // Rift Spawn - On Spellhit - Cast Rift Spawn Manifestation"),
(@ENTRY, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Attack Action invoker // Rift Spawn - On Spellhit - Attack ActionInvoker"),
(@ENTRY, 0, 4, 5, 11, 0, 100, 0, 0, 0, 0, 0, 11, 34426, 19, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On respawn - Self: Cast spell Greater Invisibility (34426) on Self // Rift Spawn - on spawn - add aura"),
(@ENTRY, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 19, 33685508, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Remove UNIT_FLAGS to UNIT_FLAG_DISABLE_MOVE, UNIT_FLAG_PACIFIED, UNIT_FLAG_NOT_SELECTABLE // Rift Spawn - On spawn - remove Flag"),
(@ENTRY, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, 2, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Set faction to 7 // Rift Spawn - on spawn - set faction"),
(@ENTRY, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 42, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - What is it? // Rift Spawn - on Spawn - Set Invincible HP"),
(@ENTRY, 0, 8, 9, 2, 0, 100, 1, 0, 1, 0, 0, 41, 3500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When health between 0% and 1% (check every 0 - 0 ms) - Self: Despawn in 3500 ms // "),
(@ENTRY, 0, 9, 10, 61, 0, 100, 0, 0, 0, 0, 0, 11, 9032, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Cast spell Self Stun - 30 seconds (9032) on Self // Rift Spawn - On On 1% HP - Cast Self Stun - 30 seconds"),
(@ENTRY, 0, 10, 11, 61, 0, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Set event phase to 2 // Rift Spawn - On 1% HP - Set Phase 2"),
(@ENTRY, 0, 11, 12, 61, 0, 100, 0, 0, 0, 0, 0, 41, 31000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Despawn in 31000 ms // Rift Spawn - On 1% HP - despawn"),
(@ENTRY, 0, 12, 13, 61, 0, 100, 0, 0, 0, 0, 0, 12, 23837, 1, 15000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Summon creature ELM General Purpose Bunny (23837) at Self, moved by offset (0, 0, 0, 0) // "),
(@ENTRY, 0, 13, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 32, 32, 0, 0, 0, 0, 19, 23837, 0, 0, 0, 0, 0, 0, " Linked - Closest alive creature ELM General Purpose Bunny (23837) in 100 yards: Set creature data #32 to 32 // "),
(@ENTRY, 0, 14, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 34426, 19, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On reset (e.g. after reaching home) - Self: Cast spell Greater Invisibility (34426) on Self // Rift Spawn - on reset - add aura"),
(@ENTRY, 0, 15, 0, 25, 0, 100, 0, 0, 0, 0, 0, 19, 33685508, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On reset (e.g. after reaching home) - Self: Remove UNIT_FLAGS to UNIT_FLAG_DISABLE_MOVE, UNIT_FLAG_PACIFIED, UNIT_FLAG_NOT_SELECTABLE // Rift Spawn - on reset - remove aura"),
(@ENTRY, 0, 16, 0, 4, 0, 100, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On aggro - Self: Talk 0 // Rift Spawn - On Aggro - Say Line 0"),
(@ENTRY, 0, 17, 0, 7, 2, 100, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On evade - Self: Talk 1 // Rift Spawn - On Evade (Phase 2) - Say line 1");


DELETE FROM `creature_text` WHERE `entry`=6492;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextID`) VALUES 
(6492, 0, 0, '%s is angered and attacks!', 16, 0, 100, 0, 0, 0, 'Rift Spawn', 3074),
(6492, 1, 0, '%s escapes into the void!', 16, 0, 100, 0, 0, 0, 'Rift Spawn', 2564);

UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=122088;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (122088, 12208800);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(122088, 1, 0, 0, 1, 0, 100, 1, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 6492, 1, 0, 0, 0, 0, 0, 'Containment Coffer - On reset - Set data to Rift Spawn'),
(122088, 1, 1, 0, 1, 0, 100, 1, 0, 0, 0, 0, 45, 2, 2, 0, 0, 0, 0, 19, 6492, 1, 0, 0, 0, 0, 0, 'Containment Coffer - On reset - Set data to Rift Spawn'),
(122088, 1, 2, 0, 1, 0, 100, 1, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Containment Coffer - On reset - activate self'),
(122088, 1, 3, 0, 1, 0, 100, 1, 4000, 4000, 4000, 4000, 44, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Containment Coffer - On reset - set phasemask');

-- Creature ELM General Purpose Bunny 23837 SAI
SET @ENTRY := 23837;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 11, 52388, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On just summoned - Self: Cast spell You Reap What You Sow: Ritual Bunny Channel (52388) on Self // ELM General Purpose Bunny - On Just Summoned - Cast 'You Reap What You Sow: Ritual Bunny Channel'"),
(@ENTRY, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 19, 28671, 30, 0, 0, 0, 0, 0, " Linked - Closest alive creature Prophet of Quetz'lun (28671) in 30 yards: Set creature data #0 to 1 // ELM General Purpose Bunny - On Just Summoned - Set Data 0 1"),
(@ENTRY, 0, 2, 0, 38, 0, 100, 0, 31, 31, 0, 0, 87, 1636401, 1636403, 1636404, 1636406, 1636407, 1636408, 1, 0, 0, 0, 0, 0, 0, 0, "On data 31 set to 31 - Self: Call random timed action list: 1636401, 1636403, 1636404, 1636406, 1636407, 1636408 // ELM General Purpose Bunny - On Data Set - Run Random Script"),
(@ENTRY, 0, 3, 0, 38, 0, 100, 0, 30, 30, 0, 0, 87, 1636401, 1636402, 1636403, 1636405, 1636406, 1636408, 1, 0, 0, 0, 0, 0, 0, 0, "On data 30 set to 30 - Self: Call random timed action list: 1636401, 1636402, 1636403, 1636405, 1636406, 1636408 // ELM General Purpose Bunny - On Data Set - Run Random Script"),
(@ENTRY, 0, 4, 0, 11, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 27249, 0, 0, 0, 0, 0, 0, "On respawn - Closest alive creature Alystros the Verdant Keeper (27249) in 100 yards: Set creature data #1 to 1 // ELM General Purpose Bunny - On Just Summoned - Set Data to Alystros the Verdant Keeper");

DELETE FROM `smart_scripts` WHERE `entryorguid`=23837 AND `source_type`=0 AND `id`=5;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(23837, 0, 5, 0, 38, 0, 100, 1, 32, 32, 0, 0, 11, 9010, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'ELM General Purpose Bunny - On Data Set - Cast Create Filled Containment Coffer');

DELETE FROM `disables` WHERE `sourceType`=0 AND `entry`=9095;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(0, 9095, 64, '', '', 'Ignore LOS on Cantation of Manifestation');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=9082;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 9082, 0, 0, 29, 0, 6492, 10, 0, 0, 0, 0, '', 'Create Containment Coffer can only be cast if there is rift spawn near');

# Quest items
UPDATE `creature_template` SET `questItem3`=2924 WHERE `entry`=1693;
UPDATE `creature_template` SET `questItem3`=2924 WHERE `entry`=2476;
UPDATE `creature_template` SET `questItem1`=723 WHERE `entry`=157;
UPDATE `creature_template` SET `questItem2`=723 WHERE `entry`=345;
UPDATE `creature_template` SET `questItem1`=723 WHERE `entry`=454;
UPDATE `creature_template` SET `questItem1`=723 WHERE `entry`=547;
UPDATE `creature_template` SET `questItem2`=0 WHERE `entry`=345;
UPDATE `creature_template` SET `questItem1`=729 WHERE `entry`=154;
UPDATE `creature_template` SET `questItem1`=729 WHERE `entry`=199;
UPDATE `creature_template` SET `questItem1`=729 WHERE `entry`=1109;
UPDATE `creature_template` SET `questItem1`=730 WHERE `entry`=126;
UPDATE `creature_template` SET `questItem1`=730 WHERE `entry`=127;
UPDATE `creature_template` SET `questItem1`=730 WHERE `entry`=171;
UPDATE `creature_template` SET `questItem1`=730 WHERE `entry`=456;
UPDATE `creature_template` SET `questItem1`=730 WHERE `entry`=513;
UPDATE `creature_template` SET `questItem1`=730 WHERE `entry`=458;
UPDATE `creature_template` SET `questItem1`=730 WHERE `entry`=515;
UPDATE `creature_template` SET `questItem1`=730 WHERE `entry`=517;
UPDATE `creature_template` SET `questItem2`=731 WHERE `entry`=157;
UPDATE `creature_template` SET `questItem2`=731 WHERE `entry`=454;
UPDATE `creature_template` SET `questItem1`=732 WHERE `entry`=36;
UPDATE `creature_template` SET `questItem1`=732 WHERE `entry`=114;
UPDATE `creature_template` SET `questItem1`=732 WHERE `entry`=115;
UPDATE `creature_template` SET `questItem1`=732 WHERE `entry`=480;
UPDATE `quest_template` SET `AddedInBuild`=11159 WHERE `Id`=14100;

UPDATE `creature_template` SET `DamageModifier`=2 WHERE `entry`=5809;

-- Creature Bleeding Hollow Riding Worg 19640 SAI
SET @ENTRY := 19640;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 7, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On evade - Self: Despawn in 1000 ms // ");

-- Creature Void Spawner - Quest - Warp Rifts 20143 SAI
SET @ENTRY := 20143;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 1, 0, 100, 0, 2000, 5000, 15000, 23000, 11, 34943, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When out of combat and timer at the begining between 2000 and 5000 ms (and later repeats every 15000 and 23000 ms) - Self: Cast spell Summon Unstable Voidwalker (34943) on Self // Void Spawner - Quest - Warp Rifts - Out of Combat - Cast 'Summon Unstable Voidwalker' (No Repeat)"),
(@ENTRY, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 23, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, " Linked - Self: Increment phase by 1 and decrement by 0 // "),
(@ENTRY, 0, 2, 0, 1, 4, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When out of combat and timer at the begining between 0 and 0 ms (and later repeats every 0 and 0 ms) - Self: Despawn in 1000 ms // ");

UPDATE `gameobject_template` SET `faction`=5 WHERE `entry`=20920;
UPDATE `gameobject_template` SET `Data1`=50 WHERE `entry`=20919;
UPDATE `gameobject_template` SET `displayId`=327 WHERE `entry`=20919;
UPDATE `creature_template` SET `speed_walk`=0.85, `speed_run`=0.95 WHERE `entry`=17077;