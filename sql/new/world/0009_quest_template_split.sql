ALTER TABLE `quest_template`
CHANGE `Id` `ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `Level` `QuestLevel` smallint(3) NOT NULL DEFAULT '1',
CHANGE `ZoneOrSort` `QuestSortID` smallint(6) NOT NULL DEFAULT '0',
CHANGE `Type` `QuestType` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `SuggestedPlayers` `SuggestedGroupNum` tinyint(3) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardTitleId` `RewardTitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardItemId1` `RewardItem1` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardItemId2` `RewardItem2` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardItemId3` `RewardItem3` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardItemId4` `RewardItem4` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardItemCount1` `RewardAmount1` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardItemCount2` `RewardAmount2` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardItemCount3` `RewardAmount3` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardItemCount4` `RewardAmount4` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardChoiceItemId1` `RewardChoiceItemID1` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardChoiceItemId2` `RewardChoiceItemID2` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardChoiceItemId3` `RewardChoiceItemID3` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardChoiceItemId4` `RewardChoiceItemID4` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardChoiceItemId5` `RewardChoiceItemID5` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardChoiceItemId6` `RewardChoiceItemID6` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardChoiceItemCount1` `RewardChoiceItemQuantity1` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardChoiceItemCount2` `RewardChoiceItemQuantity2` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardChoiceItemCount3` `RewardChoiceItemQuantity3` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardChoiceItemCount4` `RewardChoiceItemQuantity4` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardChoiceItemCount5` `RewardChoiceItemQuantity5` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardChoiceItemCount6` `RewardChoiceItemQuantity6` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `RewardFactionId1` `RewardFactionID1` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
CHANGE `RewardFactionId2` `RewardFactionID2` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
CHANGE `RewardFactionId3` `RewardFactionID3` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
CHANGE `RewardFactionId4` `RewardFactionID4` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
CHANGE `RewardFactionId5` `RewardFactionID5` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
CHANGE `RewardFactionValueId1` `RewardFactionValue1` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `RewardFactionValueId2` `RewardFactionValue2` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `RewardFactionValueId3` `RewardFactionValue3` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `RewardFactionValueId4` `RewardFactionValue4` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `RewardFactionValueId5` `RewardFactionValue5` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `RewardFactionValueIdOverride1` `RewardFactionOverride1` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `RewardFactionValueIdOverride2` `RewardFactionOverride2` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `RewardFactionValueIdOverride3` `RewardFactionOverride3` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `RewardFactionValueIdOverride4` `RewardFactionOverride4` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `RewardFactionValueIdOverride5` `RewardFactionOverride5` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `Title` `LogTitle` text,
CHANGE `Objectives` `LogDescription` text,
CHANGE `Details` `QuestDescription` text,
CHANGE `CompletedText` `QuestCompletionLog` text;

-- creating `quest_template_addon` table
DROP TABLE IF EXISTS        `quest_template_addon`;
CREATE TABLE IF NOT EXISTS  `quest_template_addon` (                  -- old names:
  `ID`                    mediumint(8) unsigned NOT NULL DEFAULT '0', -- ID
  `MaxLevel`              tinyint(3) unsigned NOT NULL DEFAULT '0',   -- MaxLevel
  `AllowableClasses`      int(10) unsigned NOT NULL DEFAULT '0',      -- RequiredClasses
  `SourceSpellID`         mediumint(8) unsigned NOT NULL DEFAULT '0', -- SourceSpellId
  `PrevQuestID`           mediumint(8) NOT NULL DEFAULT '0',          -- PrevQuestId
  `NextQuestID`           mediumint(8) NOT NULL DEFAULT '0',          -- NextQuestId
  `ExclusiveGroup`        mediumint(8) NOT NULL DEFAULT '0',          -- ExclusiveGroup
  `RewardMailTemplateID`  mediumint(8) unsigned NOT NULL DEFAULT '0', -- RewardMailTemplateId
  `RewardMailDelay`       int(10) unsigned NOT NULL DEFAULT '0',      -- RewardMailDelay
  `RequiredSkillID`       smallint(5) unsigned NOT NULL DEFAULT '0',  -- RequiredSkillId
  `RequiredSkillPoints`   smallint(5) unsigned NOT NULL DEFAULT '0',  -- RequiredSkillPoints
  `RequiredMinRepFaction` smallint(5) unsigned NOT NULL DEFAULT '0',  -- RequiredMinRepFaction
  `RequiredMaxRepFaction` smallint(5) unsigned NOT NULL DEFAULT '0',  -- RequiredMaxRepFaction
  `RequiredMinRepValue`   mediumint(8) NOT NULL DEFAULT '0',          -- RequiredMinRepValue
  `RequiredMaxRepValue`   mediumint(8) NOT NULL DEFAULT '0',          -- RequiredMaxRepValue
  `ProvidedItemCount`     tinyint(3) unsigned NOT NULL DEFAULT '0',   -- SourceItemCount
  `SpecialFlags`          tinyint(3) unsigned NOT NULL DEFAULT '0',   -- SpecialFlags
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- moving data from `quest_template` to `quest_template_addon`
INSERT INTO `quest_template_addon`
(`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`)
(SELECT `ID`, `MaxLevel`, `RequiredClasses`, `SourceSpellId`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `RewardMailTemplateId`, `RewardMailDelay`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `SourceItemCount`, `SpecialFlags` FROM `quest_template`);


-- drop `quest_template` fields
ALTER TABLE `quest_template`
DROP `MaxLevel`,
DROP `RequiredClasses`,
DROP `SourceSpellId`,
DROP `PrevQuestId`,
DROP `NextQuestId`,
DROP `ExclusiveGroup`,
DROP `RewardMailTemplateId`,
DROP `RewardMailDelay`,
DROP `RequiredSkillId`,
DROP `RequiredSkillPoints`,
DROP `RequiredMinRepFaction`,
DROP `RequiredMaxRepFaction`,
DROP `RequiredMinRepValue`,
DROP `RequiredMaxRepValue`,
DROP `SourceItemCount`,
DROP `SpecialFlags`;

-- RewardItem(s) and RewardAmount(s) [4x2 fields]
ALTER TABLE `quest_template`
  CHANGE COLUMN `RewardAmount1` `RewardAmount1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `RewardItem1`,
  CHANGE COLUMN `RewardAmount2` `RewardAmount2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `RewardItem2`,
  CHANGE COLUMN `RewardAmount3` `RewardAmount3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `RewardItem3`,
  CHANGE COLUMN `RewardAmount4` `RewardAmount4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `RewardItem4`;

-- RewardChoiceItemID(s) and RewardChoiceItemQuantity(s) [6x2 fields]
ALTER TABLE `quest_template`
  CHANGE COLUMN `RewardChoiceItemQuantity1` `RewardChoiceItemQuantity1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `RewardChoiceItemID1`,
  CHANGE COLUMN `RewardChoiceItemQuantity2` `RewardChoiceItemQuantity2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `RewardChoiceItemID2`,
  CHANGE COLUMN `RewardChoiceItemQuantity3` `RewardChoiceItemQuantity3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `RewardChoiceItemID3`,
  CHANGE COLUMN `RewardChoiceItemQuantity4` `RewardChoiceItemQuantity4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `RewardChoiceItemID4`,
  CHANGE COLUMN `RewardChoiceItemQuantity5` `RewardChoiceItemQuantity5` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `RewardChoiceItemID5`,
  CHANGE COLUMN `RewardChoiceItemQuantity6` `RewardChoiceItemQuantity6` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `RewardChoiceItemID6`;

-- RewardFactionID(s), RewardFactionValue(s) and RewardFactionOverride(s) [5x3 fields]
ALTER TABLE `quest_template`
  CHANGE COLUMN `RewardFactionValue1`     `RewardFactionValue1`     MEDIUMINT(8) NOT NULL DEFAULT '0' AFTER `RewardFactionID1`,
  CHANGE COLUMN `RewardFactionOverride1`  `RewardFactionOverride1`  MEDIUMINT(8) NOT NULL DEFAULT '0' AFTER `RewardFactionValue1`,
  CHANGE COLUMN `RewardFactionValue2`     `RewardFactionValue2`     MEDIUMINT(8) NOT NULL DEFAULT '0' AFTER `RewardFactionID2`,
  CHANGE COLUMN `RewardFactionOverride2`  `RewardFactionOverride2`  MEDIUMINT(8) NOT NULL DEFAULT '0' AFTER `RewardFactionValue2`,
  CHANGE COLUMN `RewardFactionValue3`     `RewardFactionValue3`     MEDIUMINT(8) NOT NULL DEFAULT '0' AFTER `RewardFactionID3`,
  CHANGE COLUMN `RewardFactionOverride3`  `RewardFactionOverride3`  MEDIUMINT(8) NOT NULL DEFAULT '0' AFTER `RewardFactionValue3`,
  CHANGE COLUMN `RewardFactionValue4`     `RewardFactionValue4`     MEDIUMINT(8) NOT NULL DEFAULT '0' AFTER `RewardFactionID4`,
  CHANGE COLUMN `RewardFactionOverride4`  `RewardFactionOverride4`  MEDIUMINT(8) NOT NULL DEFAULT '0' AFTER `RewardFactionValue4`,
  CHANGE COLUMN `RewardFactionValue5`     `RewardFactionValue5`     MEDIUMINT(8) NOT NULL DEFAULT '0' AFTER `RewardFactionID5`,
  CHANGE COLUMN `RewardFactionOverride5`  `RewardFactionOverride5`  MEDIUMINT(8) NOT NULL DEFAULT '0' AFTER `RewardFactionValue5`;

-- quest_details
DROP TABLE IF EXISTS `quest_details`;
CREATE TABLE `quest_details` (
    `ID` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `Emote1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
    `Emote2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
    `Emote3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
    `Emote4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
    `EmoteDelay1` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `EmoteDelay2` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `EmoteDelay3` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `EmoteDelay4` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `VerifiedBuild` SMALLINT(5) NOT NULL DEFAULT '0',
    PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`)
SELECT `ID`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `VerifiedBuild` FROM `quest_template`
WHERE `DetailsEmote1`!=0 OR `DetailsEmote2`!=0 OR `DetailsEmote3`!=0 OR `DetailsEmote4`!=0 OR `DetailsEmoteDelay1`!=0 OR `DetailsEmoteDelay2`!=0 OR `DetailsEmoteDelay3`!=0 OR `DetailsEmoteDelay4`!=0;


-- quest_request_items
DROP TABLE IF EXISTS `quest_request_items`;
CREATE TABLE `quest_request_items` (
    `ID` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `EmoteOnComplete` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
    `EmoteOnIncomplete` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
    `CompletionText` TEXT,
    `VerifiedBuild` SMALLINT(5) NOT NULL DEFAULT '0',
    PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`)
SELECT `ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `RequestItemsText`, `VerifiedBuild` FROM `quest_template`
WHERE `EmoteOnComplete`!=0 OR `EmoteOnIncomplete`!=0 OR `RequestItemsText`!='';


-- quest_offer_reward
DROP TABLE IF EXISTS `quest_offer_reward`;
CREATE TABLE `quest_offer_reward` (
    `ID` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
    `Emote1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
    `Emote2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
    `Emote3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
    `Emote4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
    `EmoteDelay1` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `EmoteDelay2` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `EmoteDelay3` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `EmoteDelay4` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `RewardText` TEXT,
    `VerifiedBuild` SMALLINT(5) NOT NULL DEFAULT '0',
    PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`)
SELECT `ID`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `OfferRewardText`, `VerifiedBuild` FROM `quest_template`
WHERE `OfferRewardEmote1`!=0 OR `OfferRewardEmote2`!=0 OR `OfferRewardEmote3`!=0 OR `OfferRewardEmote4`!=0 OR `OfferRewardEmoteDelay1`!=0 OR `OfferRewardEmoteDelay2`!=0 OR `OfferRewardEmoteDelay3`!=0 OR `OfferRewardEmoteDelay4`!=0 OR `OfferRewardText`!='';

-- delete old fields
ALTER TABLE `quest_template`
  DROP `DetailsEmote1`,
  DROP `DetailsEmote2`,
  DROP `DetailsEmote3`,
  DROP `DetailsEmote4`,
  DROP `DetailsEmoteDelay1`,
  DROP `DetailsEmoteDelay2`,
  DROP `DetailsEmoteDelay3`,
  DROP `DetailsEmoteDelay4`,
  DROP `EmoteOnIncomplete`,
  DROP `EmoteOnComplete`,
  DROP `RequestItemsText`,
  DROP `OfferRewardEmote1`,
  DROP `OfferRewardEmote2`,
  DROP `OfferRewardEmote3`,
  DROP `OfferRewardEmote4`,
  DROP `OfferRewardEmoteDelay1`,
  DROP `OfferRewardEmoteDelay2`,
  DROP `OfferRewardEmoteDelay3`,
  DROP `OfferRewardEmoteDelay4`,
  DROP `OfferRewardText`;

ALTER TABLE `quest_template`
  CHANGE COLUMN `Method`    `QuestType`   TINYINT(3)  UNSIGNED NOT NULL DEFAULT '2' AFTER `ID`,
  CHANGE COLUMN `QuestType` `QuestInfoID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `QuestSortID`;
