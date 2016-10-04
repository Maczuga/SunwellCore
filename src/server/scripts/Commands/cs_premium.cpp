/*
 * Copyright (C) 
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "ScriptMgr.h"
#include "Chat.h"
#include "Language.h"
#include "LFGMgr.h"
#include "Group.h"
#include "Player.h"

#define TEXT_LEVEL_TOO_LOW      "You have too low level to teleport there!"
#define TEXT_NOT_ALLOWED_PLACE  "Invaild teleport location!"

class premium_commandscript : public CommandScript
{
public:
    premium_commandscript() : CommandScript("premium_commandscript") { }

    std::vector<ChatCommand> GetCommands() const
    {
        static std::vector<ChatCommand> premiumCommandTable =
        {
            { "teleport",       SEC_PLAYER,         false, &HandlePremiumTeleportCommand,     "" }
        };
        static std::vector<ChatCommand> commandTable =
        {
            { "premium",        SEC_PLAYER,         false, NULL,                              "", premiumCommandTable }
        };
        return commandTable;
    }

    static bool HandlePremiumTeleportCommand(ChatHandler* handler, char const* args)
    {
        std::list<std::string> errors;
        if (!handler->GetSession()->IsPremiumServiceActive(PREMIUM_TELEPORT))
        {
            handler->SendSysMessage("You don't have this VIP service enabled");
            handler->SetSentErrorMessage(true);
            return false;
        }

        if (!*args)
            return false;

        Player* player = handler->GetSession()->GetPlayer();
        std::string loc = std::string(args);

        #pragma region Error handling
        if (player->IsBeingTeleported() || !player->IsInWorld())
            errors.push_back("Can't use while being teleported.");
        if (!player->FindMap() || player->FindMap()->Instanceable())
            errors.push_back("Can't use while in instance, bg or arena.");
        if (player->GetVehicle())
            errors.push_back("Can't be on a vehicle.");
        if (player->IsInCombat())
            errors.push_back("Can't be in combat.");
        if (player->isUsingLfg())
            errors.push_back("Can't spectate while using LFG system.");
        if (player->InBattlegroundQueue())
            errors.push_back("Can't be queued for arena or bg.");
        if (player->GetMap()->IsBattlegroundOrArena())
            errors.push_back("Can't be inside arena or bg.");
        if (player->GetGroup())
            errors.push_back("Can't be in a group.");
        if (player->HasUnitState(UNIT_STATE_ISOLATED))
            errors.push_back("Can't be isolated.");
        if (player->m_mover != player)
            errors.push_back("You must control yourself.");
        if (player->IsInFlight())
            errors.push_back("Can't be in flight.");
        if (player->IsMounted())
            errors.push_back("Dismount before spectating.");
        if (!player->IsAlive())
            errors.push_back("Must be alive.");

        if (!errors.empty())
        {
            handler->PSendSysMessage("To teleport, please fix the following:");
            for (std::list<std::string>::const_iterator itr = errors.begin(); itr != errors.end(); ++itr)
                handler->PSendSysMessage("- %s", (*itr).c_str());

            handler->SetSentErrorMessage(true);
            return false;
        }
        #pragma endregion

        if (std::string("gadgetzan").compare(0, loc.length(), loc) == 0)
        {
            if (player->getLevel() < 40)
            {
                handler->SendSysMessage(TEXT_LEVEL_TOO_LOW);
                handler->SetSentErrorMessage(true);
                return false;
            }
            player->TeleportTo(1, -7177.15f, -3785.35f, 8.37f, 6.10f);
        }
        else if (std::string("bootybay").compare(0, loc.length(), loc) == 0)
        {
            if (player->getLevel() < 35)
            {
                handler->SendSysMessage(TEXT_LEVEL_TOO_LOW);
                handler->SetSentErrorMessage(true);
                return false;
            }
            player->TeleportTo(0, -14297.2f, 531.0f, 8.78f, 4.00f);
        }
        else if (std::string("shattrath").compare(0, loc.length(), loc) == 0)
        {
            if (player->getLevel() < 60)
            {
                handler->SendSysMessage(TEXT_LEVEL_TOO_LOW);
                handler->SetSentErrorMessage(true);
                return false;
            }
            player->TeleportTo(530, -1911.5f, 5285.63f, 1.715f, 1.25f);
        }
        else if (std::string("dalaran").compare(0, loc.length(), loc) == 0)
        {
            if (player->getLevel() < 75)
            {
                handler->SendSysMessage(TEXT_LEVEL_TOO_LOW);
                handler->SetSentErrorMessage(true);
                return false;
            }
            player->TeleportTo(571, 5803.9f, 628.26f, 647.18f, 1.64f);
        }
        else
        {
            switch (player->GetTeamId())
            {
                case TEAM_ALLIANCE:
                    if (std::string("stormwind").compare(0, loc.length(), loc) == 0)
                    {
                        player->TeleportTo(0, -8890.0f, 572.34f, 92.55f, 0.7f);
                    } 
                    else if (std::string("ironforge").compare(0, loc.length(), loc) == 0)
                    {
                        player->TeleportTo(0, -4922.89f, -951.81f, 501.54f, 2.25f);
                    }
                    else if (std::string("darnassus").compare(0, loc.length(), loc) == 0)
                    {
                        player->TeleportTo(1, 9955.0f, 2205.1f, 1328.67f, 1.6f);
                    }
                    else if (std::string("exodar").compare(0, loc.length(), loc) == 0)
                    {
                        player->TeleportTo(530, -3894.5f, -11621.5f, -137.84f, 3.18f);
                    }
                    else
                    {
                        handler->SendSysMessage(TEXT_NOT_ALLOWED_PLACE);
                        handler->SetSentErrorMessage(true);
                        return false;
                    }
                    break;
                case TEAM_HORDE:
                    if (std::string("orgrimmar").compare(0, loc.length(), loc) == 0)
                    {
                        player->TeleportTo(1, 1550.0f, -4429.0f, 10.155f, 0.25f);
                    }
                    else if (std::string("thunderbluff").compare(0, loc.length(), loc) == 0)
                    {
                        player->TeleportTo(1, -1277.37f, 124.81f, 131.29f, 5.22f);
                    }
                    else if (std::string("undercity").compare(0, loc.length(), loc) == 0)
                    {
                        player->TeleportTo(0, 1561.6f, 241.27f, -43.125f, 6.26f);
                    }
                    else if (std::string("silvermoon").compare(0, loc.length(), loc) == 0)
                    {
                        player->TeleportTo(530, 9386.5f, -7277.98f, 14.242f, 0.00f);
                    }
                    else
                    {
                        handler->SendSysMessage(TEXT_NOT_ALLOWED_PLACE);
                        handler->SetSentErrorMessage(true);
                        return false;
                    }
                    break;
                case TEAM_NEUTRAL:
                default:
                    return false;
            }
        }

        return true;
    }
};

void AddSC_premium_commandscript()
{
    new premium_commandscript();
}
