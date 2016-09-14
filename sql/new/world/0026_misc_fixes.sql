/* Quest adding injury to insult, fix mob speed run, from 2.2 to 1.0 */
UPDATE `creature_template` SET `speed_run` = 1 WHERE `entry` = 24238;

DELETE FROM spell_script_names WHERE spell_id = 38776;
INSERT INTO spell_script_names VALUES (38776,'spell_q9718_crow_transform'); 

DELETE FROM areatrigger_scripts WHERE entry = 4156;
INSERT INTO areatrigger_scripts VALUES (4156, 'at_naxxramas_frostwyrm_wing');

UPDATE `creature_template` SET `DamageModifier`=19.4 WHERE  `entry`=32313;

UPDATE `quest_template` SET `AddedInBuild`=12340 WHERE  `Id`=26012;
