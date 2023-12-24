{
  "Id": 50331650,
  "Comment": "",
  "IsScript": false,
  "RunOnMapInit": false,
  "Script": "",
  "Events": [
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": "10.00"
          }
        ],
        "value": "TriggerRegisterTimerEventSingle"
      }
    }
  ],
  "LocalVariables": [],
  "Conditions": [],
  "Actions": [
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [],
        "value": "FlashQuestDialogButtonBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": "Change List"
          }
        ],
        "value": "CommentString"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "QuestTypeReqDiscovered"
          },
          {
            "ParamType": 5,
            "value": "Version 1.7"
          },
          {
            "ParamType": 5,
            "value": "[BUGFIX]\r\nWater Style : Navalas now has it's learn tooltip fixed.\r\n\r\n[GENERAL CHANGES]\r\nSerpent Ward renamed into Mass Serpent Ward\r\nSpawn Rush spawn is now at 13 and 20 seconds, changed from 14 and 30 seconds\r\nGeneral spawn is now 20 seconds\r\nSpawn Archer renamed to Warden\r\nSpawn Huntress renamed to Watcher\r\nSpawn Glaive Thrower renamed to Ballista\r\nSpawn Ghoul renamed to Infest\r\nSpawn Crypt Fiend renamed to Skeleton Archer\r\nSpawn Meat Wagon renamed to Plague Wagon\r\n\r\n[BALANCE CHANGES]\r\nMass Serpent Ward now spawns 2/4/6/8 changed from 4/4/4/8\r\nCreep Frenzy is given at 1st level down from 3rd level\r\nTower Hero Slayer is given at 8th level down from 10th level\r\nWatcher now has 225 range, up from 150"
          },
          {
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNArcane.blp"
          }
        ],
        "value": "CreateQuestBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "QuestTypeReqDiscovered"
          },
          {
            "ParamType": 5,
            "value": "Version 1.6"
          },
          {
            "ParamType": 5,
            "value": "[BUGFIXED] Affad's Essence triggers twice whenever attacked\r\nHamaria the Aeon can be learned despite has been learned before\r\nHamaria the Aeon not dealing Chaos damage\r\nBlade Fury tooltip for level 4 being missing\r\nHysteria using Vampiric Aura buff\r\n\r\n[NEW] \r\nHero: Joker\r\nItem: Assar's Essence\r\nItem: Directive's Essence\r\nShop: Hive Totem\r\nItem: Raidou's Essence\r\nGame Mode: Spawn Rush\r\n\r\n[BALANCE CHANGES]\r\nLegendzKing's Essence: Armor bonus reduced from 0.3 to 0.1\r\nAtika's Essence: HP and MP bonus increased from 5 to 15*level\r\nAffad's Essence: Only gains stat if damage is over 200 points. Now reduces damage taken if triggers.\r\nAffa's Essence: Reduces 7 stats instead of 10 stats. Minimum stat reduced from 30 to 20. Recovers with FULL mana and RESET all ability cooldowns.\r\nDemoniac: Increased armor reduction from 20 to 25 points.\r\nLoki Essence: Moved to a hidden shop\r\nGeneral Change: Daytime/Nighttime duration is doubled\r\nGeneral Change: Game now starts at Daytime\r\nKarmon's Gun: Reduced cast time from 20 seconds to 8 seconds\r\nGeneral Change: Chaos damage now deals 2x damage to all armor except Divine\r\nAffa's Essence: Now also prevents owner from giving bounty to enemies\r\nInnate Upgrade: No longer requires 3 levels of upgrade from other hero upgrading options, but requires hero to be alive\r\nArchmage: Water Elementals now influenced by Intelligence\r\nAI: Now resets every 15 seconds\r\nAI: Added 2 more hero to AI pool\r\nSpawn: Now travels at maximum speed when unhindered\r\nSadim's Essence: Now recovers 18 health for each level\r\nFallen: Shattering Presence now deals 10/20/30/40 damage per second, down from 50/100/150/200 per second. Tick instance reduced by 80%, lowering effectivity of damage-based essences effect from this spell.\r\nKeeper of the Grove: Health bonus for Nature's Force now changed to intelligence based from 250 constant.\r\nBlack Mask/Crow: Eiga(on) now deals 125/300/450/700, up from 100/250/400/550\r\nFallen: Animation now revives 2/4/6/8 and affects 1200 range, up from 1/2/3/4 and 900 range.\r\nDeath Knight: Death's Decree damage increased from 250 to 800.\r\nTauren Chieftain: Reincarnation cooldown reduced from 600/500/400/300 to 500/400/300/200.\r\nGeneral of Alariz Alliance: General's Sword mana combust reduced from 100 (50) to 60 (30).\r\nArchmage: Reduced Cold Nova mana cost from 100/75 to 50/50\r\nCrow: Kouga attack speed reduction increased from 50% to 75%\r\nDeath Knight: Undead General damage bonus reduced from 50%/60% to 35%/50%.\r\nWarden: Shadow Strike now only lasts 3 seconds with 1 second damage interval, but cooldown reduced to 5 seconds. This effectively change the ability from immobilization type to burst damage.\r\nAffad's Essence: Now provides 1 to all stats instead of 2 int per trigger.\r\nCrow: Tactical Spirit now recovers 100/250, up from 50/200.\r\nAffa's Essence: Now gives bounty to wearer when they die.\r\nAI: XP Rate increased from 80/100/150 to 120/150/200.\r\nX-Commander of Acceleration Squad: Eye of Darkness in active form now instantly refresh all abilities on cast.\r\nLord of the Dead: Increase health restored from 25%/50%/75%/100% to 50%/100%/150%/200%"
          },
          {
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNArcane.blp"
          }
        ],
        "value": "CreateQuestBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "QuestTypeReqDiscovered"
          },
          {
            "ParamType": 5,
            "value": "Version 1.5"
          },
          {
            "ParamType": 5,
            "value": "A new building now existed as the target building for both sides.\r\nMind Cooperation now increases XP rate by 3% per upgrade.\r\nAdded 2 additional gold mines to improve base AI flow.\r\nInnate Upgrade now requires 3 levels of upgrades from Mind Cooperation, Body Cooperation, Shield Upgrade, and Damage Empower.\r\nFixed an issue with Victory/Defeat conditions.\r\nAI no longer train troops from their Altars.\r\nNew Feature: Soul Essence\r\nChanged attribute relation to combat stat values, making heroes more powerful but fragile.\r\nGreatly increase experience required for next level to redistribute exp relation with the new Mind Cooperation bonus.\r\nFixed a major bug with some heroes' not getting armor from Shield Upgrade.\r\nIncreased Phoenix Assault (Magus Scepter) damage from 500 to 1000 and can now damage structures.\r\nIf AI somehow bugs, they will now resets every 30 seconds.\r\nPower Axe strength bonus reduced from 20 to 12.\r\nFixed a weird issue with Affad Aybe's Eye of Darkness passive not proc properly.\r\nLord of the Dead ultimate replaced with a new one.\r\nAdjusted price of several items in correlation to their power.\r\nImproved Horn of Magus stats.\r\nImproved Magic Scroll stats.\r\nImproved Maiev's Bracer stats.\r\nNew Item: Golem Fragment.\r\nChilling Aura now affects 900 range, down from 1000\r\nChanges Attribute Bonus to make it a viable choice in early game.\r\nPlayer now gains XP twice as fast. AI also adjusted for all difficulties.\r\nRepositioned the starting taverns.\r\nCreep Shield only triggers after tenth level of upgrade.\r\nAdditional abilities for spawns.\r\nA half map wide visibility is now given for both sides, allowing better control of the player's side situation.\r\nNew Shop: Shayra the Lorekeeper\r\nMagus Scepter's Phoenix Assault deals 1800 damage, up from 1000.\r\nSadim's General Sword now deals 100 (50) feedback, up from 30 (15). Multiplier against unit increased from 2 to 4.\r\nChanged some AI purchasing behaviors.\r\nReduces initial resources by 66%.\r\nAI now has less gold bonus.\r\nItems no longer dropped on death, with some exceptions.\r\nBlood Money now only takes 5 golds per hit, down from 25 golds.\r\nGreatly improves Magic Scroll's Cripple.\r\nAkechi's Debilitate now costs 120 mana, down from 150 mana, and afflict for twice as long.\r\nSpawns are no longer classified as summon.\r\nReduced main stat factor for damage from 3 to 1.25, effectively reducing base damage by more than 50% for heroes from their previous patch.\r\nTweaked cost of some items."
          },
          {
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNArcane.blp"
          }
        ],
        "value": "CreateQuestBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "QuestTypeReqDiscovered"
          },
          {
            "ParamType": 5,
            "value": "Version 1.4.1 [Private]"
          },
          {
            "ParamType": 5,
            "value": "Nerfed Far Seer's broken passive\r\nFixed Crypt Lord Devour bug\r\nCumulonimbus no longer invulnerable, but has Divine armor instead\r\nRemake the following items functions: Karmon's Gun, Anti-Magus Axe (now Slayer Axe), Hero Slayer (now Heaven Smasher)\r\nAtika's Necklace now gives a warning for consideration of it's potential unwanted side effects.\r\nRename some spell internal names\r\nChanged the SFX of Kouga(on)\r\nNerfed Lich Slow Aura movement reduction from 50(70)% to 20(50)%\r\nNerfed Crypt Lord Spiked Carapace return damage but increase armor bonus\r\nOur fellow Big Brewale now open shops at front lines too\r\nCreep Boost no longer increases health regen but gives armor bonus\r\nCall of Chaos now reduces 20 armor instead of 10 armor, also reduces damage bonus from 300(600)% to 200(400%)\r\nImproves AI lumber flow"
          },
          {
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNHeroFarseer.blp"
          }
        ],
        "value": "CreateQuestBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "QuestTypeReqDiscovered"
          },
          {
            "ParamType": 5,
            "value": "Version 1.4"
          },
          {
            "ParamType": 5,
            "value": "New:\r\nHero: Hamaria - Lord of the Dead\r\nHero: Akechi Goro - Crow\r\nHero: Black Mask - Loki\r\nItem: Corruption Orb [Karmon]\r\n\r\nChanges:\r\nReduces health of all tiers of town hall massively\r\nMana now regenerates rapidly near fountain\r\nMoved shops to avoid getting trapped during teleports\r\nChanged Assassin's Claw to Power Axe for AI Item Set\r\nFixed Mind Terror's hotkey\r\nIncreased Nature Bind's stun from 6 (3) to 10 (5)\r\nIncreased Peace's duration from 10 to 15\r\nDoubled Shadow Strike's initial damage on all levels\r\nFlash Out now has 150 seconds cooldown\r\nIncreased Elune's Arrow's damage from 150/225/300/500 to 200/400/600/800\r\nElune's Arrow range now reflects properly how long it will travels\r\nTriples Star Rain's starfall damage from 10/20/30/40 to 30/60/90/120\r\nEye of Darkness [Active] will not damage Affad Aybe anymore\r\nRelocation Magic cooldown severely increased to 120 seconds\r\nRelocation Magic now afflicts everyone in the radius\r\nReduced start time by 1 minute\r\nInnate Upgrade now has 1 second research, down from 1 minute\r\n-t now shows player's exp rate in percentage\r\n\r\nFixes:\r\nPlayer 11-16 will now get proper limiter for hero and get resources from the base gold gathering"
          },
          {
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNSkeletonWarrior.blp"
          }
        ],
        "value": "CreateQuestBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "QuestTypeReqDiscovered"
          },
          {
            "ParamType": 5,
            "value": "Version 1.3"
          },
          {
            "ParamType": 5,
            "value": "Fixed -b due to being main probable cause for desync\r\nSpeed of Light now gives 30%/60% evasion instead of temporal 15 minutes evasion\r\nHeaven's Bracer is now droppable\r\nRemoved passive part of Rage\r\nZann the Light renamed to Manadar the Light\r\nFixed Light Blast tooltip\r\nReduced Light Blast int factor from 11/4 to 9/4\r\nZan now has 300 initial hp, up from 100 to compensate for his loss of 100% evasion\r\nIncrease cooldown of Flash Out to 15 seconds, up from 1 second\r\nNew shop : Thorka the Axebearer\r\nFixes tower not regenerating properly\r\nReduces tower armor to 0 for all Reinforcement's towers\r\nHandicap Boost now boost Reinforcement's towers' armor\r\nFixed Silence cooldown being invinsible\r\nImproved Todi's Staff's silence ability by increasing duration by 4 (2) seconds and area by 275\r\nImproved High Corruption armor destroyed by 10 points\r\nHero Slayer is now dropped upon death\r\nReduced Hero Slayer price by 1000 golds\r\nChanged layout of both fountains slightly\r\nIncreased Fountain regeneration over shorter distance\r\nChanged Reinforcement's tower layout\r\nLevel II Towers now has Critical Strike\r\nHandicap Boost now improves Reinforcement Tower's damage\r\nFixed Karmon's Gun item\r\nAI now choose at the last 15 seconds instead of first 30 seconds\r\nLight Pulse cooldown increased from 8 to 45\r\nLight Blast cooldown increased from 15 to 30\r\nBounty now rises faster if you kill weaker heroes, as opposed to stronger heroes to encourage weaker players to kill the strongest player\r\nFixed Archmage's Water Elemental tooltip\r\nNew Heroes : Fallen the Fallen, Sadim Bright the General of Alariz Alliance\r\nUpgraded Hero Slayer\r\n[Wrap some of the magic numbers into constants for improvements in future balancing, lot more but I'm occupied at the moment...]"
          },
          {
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNEyeOfDarkness64.blp"
          }
        ],
        "value": "CreateQuestBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "QuestTypeReqDiscovered"
          },
          {
            "ParamType": 5,
            "value": "Version 1.2"
          },
          {
            "ParamType": 5,
            "value": "Changed Loading Screen\r\nReduced Lich's Frost Cage cooldown from 120 to 60\r\nBrig Brewale the Alchemist now sells new, different items!\r\nZark the Worldbender enters this world! Find him and purchase his exclusive item to help turn the tide!\r\nFixed NE Mercenary hero not gaining bonus bounty properly\r\nHeaven Bracer's damage reduction removed\r\nHeaven Bracer's EXP bonus increased from 10% to 30%\r\nCreeps are no longer under player's control\r\nAI and Player now starts at Fountain\r\nTier 1 Tower HP increased from 1500 to 2500\r\nTier 2 Tower HP increased from 3000 to 5000\r\nGold is now split into number of player in team instead of 3\r\nReduced select time from 5 to 3 minutes\r\nGame begins after selection ends\r\nAI select hero at 0:30\r\nGreatly increases tower armor, from 10 to 100/200 and upgrade bonus from 1 to 5/10 (Tier 1/Tier 2)\r\nKilling will creep/summon now gives your head more bounty than with hero\r\nCarrion Beetles now gains damage bonus from Empower\r\nDamage Empower bonus damage increased from 2 to 5\r\nDamage Empower now affects most summons\r\nRemoved items from Tombs of Relic and Ancient of Wonders\r\nAdded more AI heroes\r\nIncreases AI EXP Rate from 20/40/60% to 40/60/80%\r\nDoubled the bounty of spawns\r\nFixed Bounty bonus information not accessible for some players\r\nDramatically increase bounty rise to encourage hero killing\r\nChanged Fire Style : Phoenix Assault to Fire Style : Phoenix Charge\r\nAI no longer random heals\r\nLowered Spirit Link share of damage from 90% to 50%\r\nReduced Far Seer's Water Wave cooldown from 30/25/20/15 to 15\r\nEye of Seer now has 30% proc chance\r\nFixed Holy Blessing not upgraded by Innate Upgrade\r\nChanged hotkey of heroes\r\nChanged cost of heroes into 500G/250L\r\nIncreased Starting Gold and Lumber, adapts to player number\r\nMoved starting taverns to center\r\nCorrected Mind Cooperation tooltip\r\nNew Hero : Guardian of Light\r\nReinforcements now has 'summoned' classification\r\nChanged Mass Teleport to affect heroes only\r\nFixed an issue with handicap boost\r\nNew Item : Todi's Staff (Norandur)\r\nNew Item : Magic Scroll (Norandur)\r\n\r\nKNOWN ISSUE : Random desyncs in multiplayer"
          },
          {
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNEyeOfDarkness64.blp"
          }
        ],
        "value": "CreateQuestBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "QuestTypeReqDiscovered"
          },
          {
            "ParamType": 5,
            "value": "Version 1.1"
          },
          {
            "ParamType": 5,
            "value": "Fixes Anti-Magus Axe item\r\nFixes Item Healing text from AI heroes\r\nUndead champions now has green color text\r\nRaises Armor of Darkness level req from 1 to 2\r\nRaises Unholy Aura level req from 1 to 3\r\nRaises level skip req of all Far Seer hero abilities except Elementalist from default to 3\r\nReposition Elementalist X Button from 2 to 3\r\nRaises Thorns Aura level req from 1 to 3\r\nRaises Attribute Bonus level req from 1 to 7\r\nReduces Attribute Bonus skip level req from default to 1\r\nIncreases Hunt cooldown from 5 to 60 seconds\r\nReset Blood Mage to use the default Blood Mage materials\r\nHeroes can no longer be duplicate between players (AI still has chance to duplicate with player hero)\r\nReduces food used from heroes from 5 to 0\r\nReduces max food to 100 from 300\r\nBlood effect disappear on death\r\nCompleted X-Commander of Acceleration Squad\r\nImproves Sword of Judgement by adding 40 damage\r\nIncreases Mantle of Imelda cost from 500 to 1000\r\nIncreases Talisman of Stars int bonus from 3 to 6\r\nGrand Phoenix now benefits from Damage Empower\r\nChanged Relocation Magic to work on all units, not only Magic Marked ones\r\nIncreases Relocation Magic mana cost from 75/50 to 125\r\nChanged Relocation Magic to have 1 second delay\r\nChanged Relocation Magic cooldown to 7 from 10/5\r\nAdded Tauren Chieftain and Far Seer to AI roster\r\nAI pick now shows picked hero for 60 seconds\r\nAI now renamed with name of hero to help identification"
          },
          {
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNArcane.blp"
          }
        ],
        "value": "CreateQuestBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "QuestTypeReqDiscovered"
          },
          {
            "ParamType": 5,
            "value": "Version 1.0"
          },
          {
            "ParamType": 5,
            "value": "Reset Slow Poison for Dryads\r\nCompleted Lich hero\r\nCompleted TC hero\r\nTotem of Might now benefits from Damage Empower and Shield Boost\r\nIncrease Star Rain base damage from 60 to 100\r\nDecrease Starfall cooldown from 150/140/130/120 to 120 seconds\r\nAll players properly gain extra bounty over time\r\nCompleted Shadow Hunter hero\r\n'Blood Effect' on low health\r\nReduce Hunter (Night) Bash chance from 75% to 60%\r\nChanged UD Mercenary hero name\r\nUpdate Carrion Swarm (Dreadlord) tooltip\r\nCompleted Far Seer hero\r\n-lvl command now gives level 20\r\nElune's Arrow now has 25% chance for fast cooldown and free mana for next cast\r\nChanged Shadow Meld of PotM with Unseen Watcher\r\nFixed a bug that causes some AI to not revive\r\nIncreases damage bonus from Frozen Sword/Frostmoure from 1.25/2 to 2/3\r\nReduces chance for Frozen Sword/Frostmoure from 50/100 to 33/66\r\nCompleted Death Knight hero\r\nTeleportation items now has 150 seconds initial cooldown\r\nGem of True Seeing now has 300 seconds cooldown and initial cooldown\r\nArtifacts now has 600 seconds initial cooldown and 300 seconds cooldown\r\nFixed Sentinel heroes might get stuck after teleport to near fountain\r\nCompleted Keeper of the Grove hero\r\nReduces Searing Arrow's damage from 30/60/120/240 to 30/60/90/120\r\nAbility texts!"
          },
          {
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNHeroWarden.blp"
          }
        ],
        "value": "CreateQuestBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "QuestTypeReqDiscovered"
          },
          {
            "ParamType": 5,
            "value": "Version 0.9 Beta"
          },
          {
            "ParamType": 5,
            "value": "Fixed a leak with Exorcism\r\nCompleted Blood Mage hero\r\nIncrease Blink (Warden) cooldown from 10/7/10/4 to 10/10/10/10\r\nSet all player's color to Coal from Maroon\r\nProperly place hero icons in the tavern\r\nDecrease Exorcism damage by 100\r\nIncrease number of player to 12\r\nDecrease level of research to"
          },
          {
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNHeroWarden.blp"
          }
        ],
        "value": "CreateQuestBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "QuestTypeReqDiscovered"
          },
          {
            "ParamType": 5,
            "value": "Version 0.8 Beta"
          },
          {
            "ParamType": 5,
            "value": "More model and icon changes (credits will be added by 1.0)\r\nItems now have proper 120 second cooldown for permanent items\r\nRebalances some item cost\r\nLevel cap increased to 20\r\nExpanded Hero non-ultimate ability by 1 level\r\nAdded Attribute Bonus\r\nRebalances ability to reflect the additional level\r\nFixed some spell tooltips\r\nFixed Paid Mercenary doesn't grant bonus gold\r\nIncreases AI revival time\r\nNew victory/defeat condition\r\nIncreased main building health\r\nCreep Boost now affects summons\r\nPaladin's Holy Light now heals self\r\nNow bounty rises slowly as the hero survives\r\nImproved Paladin's Exorcism damage from 75 to 150 + 2x(Strength+Intelligence)\r\nChanges bounty mechanic : killing powerful heroes significantly increase your bounty, killing weak heroes rises bounty decently, killing with units devoid bounty rise"
          },
          {
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNHeroWarden.blp"
          }
        ],
        "value": "CreateQuestBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "QuestTypeReqDiscovered"
          },
          {
            "ParamType": 5,
            "value": "Version 0.7 Beta"
          },
          {
            "ParamType": 5,
            "value": "Changed some models and icons\r\nDisabled damage bonus due to crash issues\r\nCreated a new kit for Mountain King\r\nLowered Demon's Fury mana cost\r\nAdded lumber cost to upgrade and AI now generate lumbers for themselves as well\r\nAdded Gold Coins and Bundle of Lumber to Karmon the Dragon Hunter (new name for Dwarf Miner)\r\nAll shop now doesn't show any minimap icon unless approached\r\nRemoved Dragon Roost from random troop shop\r\nImproved gold bonus per second\r\nLowered Blood Money duration, but increased gold lost and cooldown\r\nNew items\r\nImproved AI slightly\r\nImproved Blademaster Wind Walk and Critical Strike\r\nShuffled Blood Mage and Shadow Hunter\r\nFixed Kodo Beast selling\r\nCreated a new kit for Crypt Lord\r\nImproved Dreadlord's Inferno\r\nReduced Starfall's mana cost from 150/148/147 to 100\r\nIncreased Master Vampire (Day) reduction effect\r\nReduced Master Vampire (Night) bonus effect\r\nChanged Summon Water Elemental mana cost distribution\r\nImproved Rage effect\r\nImproved Eye of Seer effect\r\nReduced Shuriken mana cost\r\nImproved Inferno mana cost, effect and summon\r\nReduced Frostmoure's percentage for level 1\r\nIncreased Elune's Arrow distance\r\nImproved some Human heroes spells"
          },
          {
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNHeroWarden.blp"
          }
        ],
        "value": "CreateQuestBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "QuestTypeReqDiscovered"
          },
          {
            "ParamType": 5,
            "value": "Version 0.6 Alpha"
          },
          {
            "ParamType": 5,
            "value": "Major overhaul"
          },
          {
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNHeroWarden.blp"
          }
        ],
        "value": "CreateQuestBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "QuestTypeReqDiscovered"
          },
          {
            "ParamType": 5,
            "value": "Version 0.5 Alpha"
          },
          {
            "ParamType": 5,
            "value": "Human Players no longer can train units (only buy from shops)\r\nFixed randomization of shops\r\nCreeps can be buffed now\r\nImproved Innate Upgrade\r\nAbility rebalances\r\nFixed tooltips\r\nHoly Aura mana bonus doubled"
          },
          {
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNHeroWarden.blp"
          }
        ],
        "value": "CreateQuestBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "QuestTypeReqDiscovered"
          },
          {
            "ParamType": 5,
            "value": "Version 0.4 Alpha"
          },
          {
            "ParamType": 5,
            "value": "PoTM Star Rain 3 first waves deals 60 damage per wave, up from 25 and now sent 20 shards per wave, up from 10.\r\nAll heroes can now attack air without any orb.\r\nAI Experience gain lowered from 75/100/150% to 20/40/60%\r\nChange stats spawning soldiers, they're now trainable at player altars as well\r\nAI now has special healing and bonus health added to their hero, this is to boost AI performance (less retreats and tougher resistance)\r\nPoTM Searing Arrows now deals 30/60/120 damage, up from 25/40/55 and can be autocasted but now has cooldown of 10/10/5, up from 10/5/0 and has mana cost of 25/30/35, up from 25/25/25.\r\nDemon Hunter's Demonic Leak now has 1000 range, up from 900.\r\nDemon Hunter's Mana Burn mana combust also applies to nearby units in 300 range of target at level 3 but mana combust reduced to 100 from 140.\r\nDreadlord's Fear of Nathrezim range reduced from 450 to 300.\r\nDreadlord's Carrion Swarm max damage increased to 1500/3000/4500 from 1000/2000/3000 and wave damage increased to 100/200/400 from 100/150/275.\r\nDemon Hunter's Immolation activation cost reduced from 25/25/25 to 25/20/15.\r\nChanges AI retreat behaviour.\r\nHeroes can now be upgraded using Altar.\r\nPlayers no longer lost on Altar's death, but when all buildings are destroyed.\r\nMountain King's Thunder Clap replaced with Ground Smash.\r\nProduction building no longer able to hire units.\r\nInnate abilities now has 2 levels, where they can be upgraded using research.\r\nPlayer can now check bounty bonus by typing -b\r\nWarden's Fatal Blow now deals 3/4.5/6 times damage, up from 1.6/1.9/2.2 but it's chance reduced to 10% from 12.5/16.3/21.1%\r\nNew -t command to see player's tech level.\r\nAltars now heal by 3 hp/sec.\r\nPaid Mercenary now grants 30% extra bounty.\r\nShuffled Demon Hunter and Tauren Chieftain.\r\nFood increased to 300."
          },
          {
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNHeroWarden.blp"
          }
        ],
        "value": "CreateQuestBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "QuestTypeReqDiscovered"
          },
          {
            "ParamType": 5,
            "value": "Version 0.3 Alpha"
          },
          {
            "ParamType": 5,
            "value": "Selection Circle is removed and now use an overhead effect to show selected units\r\nSpecial Towers now deals more damage and has more armor\r\nRemake the Kill System, now the Base AI can get golds as well\r\nFixed some issue with spawning\r\nMoved the shops and the fountain toward each team's base\r\nNow Hero is bought from taverns\r\nHeroes no longer gets initial free SoTP\r\nDefeated Players troops now instantly removed from the game\r\nAdded Fulbolg as buyable troops for NE\r\nAdded Fel Beast as buyable troops for Undead\r\nArchers and Crypt Fiends now moves at 255 movement speed from 270\r\nAdded Meat Wagons and Glaive Throwers\r\nElven Reinforcement color changed from Gray to Teal\r\nHuntress damage increased from 15 to 20\r\nIncrease towers range from 900 to 100\r\nEmpowered Blade [Q] gold cost increased from 700 to 2500\r\nAdded Many New Items\r\nFixed a glitch with item purchasing, giving AI full ability to purchase certain items at 0 gold cost\r\nFixed a bug which causes Base AI to accidentally affected by AOS AI\r\nFixed AI not attacking base properly\r\nAI now gains 2/4/10 golds per second\r\nAI now revives 10 second slower\r\nFan of Knives removed and replaced with Fatal Blow and become 3rd skill, uses C hotkey to learn\r\nShadow Strike cooldown, movement speed reduction and mana cost has been increased, also damage has been decreased, and changed into 1st skill, uses Z hotkey for learn and use\r\nVengeance mana cost has been increased from 150 to 200\r\nArcane Aura replaced with Holy Blessing\r\nHoly Dodge now has 2 variants, day and night version, which grants 20% and 10% evasion respectively\r\nBladestorm -> Blade Fury, changed into 2nd skill\r\nWind Walk cooldown increased from 5/5/5 to 60/60/60 seconds and damage decreased from 40/70/100 into 25/60/95 damage\r\nCritical Strike chance changed from 15% to 10/12/14%\r\nTotem of Might mana cost reduced from 200 to 175, but health reduced from 500 to 300\r\nBlood Money now grants gold per attack with 5 gold each instead of grants 200 golds on deathblow, the gold is also lost by the owner of the victim\r\nSleep is replaced by Mind Terror\r\nModified Carrion Swarm stats\r\nVampiric Aura is replaced by Fear of Nathrezim\r\nModified Inferno stats\r\nStarfall becomes third skill and stat changed\r\nStar Rain added as Ultimate\r\nSearing Arrows stat changed, autocast disabled\r\nReplaced Evasion with Demonic Leak\r\nChanged Metamorphosis stats, as well as now grants Spell Immunity\r\nMana Burn hotkey changed into Z\r\nImmolation stats modified"
          },
          {
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNHeroWarden.blp"
          }
        ],
        "value": "CreateQuestBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "QuestTypeReqDiscovered"
          },
          {
            "ParamType": 5,
            "value": "Version 0.2 Alpha"
          },
          {
            "ParamType": 5,
            "value": "Blink (Warden) cooldown increased from 5 to 10 seconds and mana cost increased from 50/25/0 to 50/37/28 and hotkey changed from B to X\r\nPaid Mercenary (Mercenary) proc chance reduced from 75% to 60%\r\nArcane Aura (Many Heroes) regen bonus reduced from 100% to 75%\r\nHoly Light Night (Paladin) heal (damage) increased from 100/180/324 (50/90/162) to 100/200/400 (50/100/200)\r\nFountain of Life now has Mana Regeneration\r\nChanged Night Elves Spawn color from Dark Green to Gray\r\nSlow Poison (Dyard) duration reduced from 5 to 3 seconds\r\nReduces overall revive gold cost and time to revive (due to Warcraft's mechanic, it's difficult to explain)\r\nNew towers with high resistance for early game control, avoiding quick wipe\r\nIncrease EXP rate from 25% to 50%\r\nArcane Aura replaced by Water Wave (Archmage)\r\nArchmage attack SFX changed\r\nDelete Deny System\r\nFixed Killing System glitch\r\nScout (PotM) replaced with Elune's Arrow\r\nVoodoo Cloud (Shadow Hunter) replaced with Shuriken\r\nVoodoo Shell (Shadow Hunter) hotkey changed from T to W\r\nSpawning altered\r\nChanged Warden Soundset to Maiev\r\nChanged Shop Soundsets\r\nSerpent Ward (Shadow Hunter) now summons 2/2/3 wards from 1/1/1 wards, changed hotkey to C, and cooldown increased from 6.5/6.5/6.5 to 10/11/12 seconds\r\nReduces Berserk (Demon Hunter and Blademaster) damage taken increment from 30% to 5%\r\nHoly Light (Paladin) tooltip changed and now uses Z hotkey\r\nHunter (Warden) uses a new icon\r\nFixed many tooltip errors\r\nSome aethistical changes\r\nBerserk (Blademaster) renamed into Rage and now cost 75 mana but has no damage increment\r\nBerserk (Demon Hunter) renamed into Demon's Fury and retains it's latest statistic\r\nMore new names for Mercenary\r\nAI Added\r\nPotM Soundset changed into Tyrande\r\nTotem of Might (Tauren Chieftain) now plays stand animation when summoned\r\nDevotion Aura (Paladin) replaced with Holy Aura, which has same effect except now it increases Paladin's mana pool.\r\nBrilliance Aura (Archmage) improved from 0.75/1.5/2.25 to 0.85/1.80/2.75 mana increase and hotkey changed from R to C\r\nBlizzard (Archmage) damage and mana cost increased, hotkey changed from B to Z\r\nWater Elemental and Mass Teleport (Archmage) hotkey changed into X and V respecitvely\r\nMass Teleport (Archmage) casting delay decreased and amount of teleported troops increased"
          },
          {
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNHeroWarden.blp"
          }
        ],
        "value": "CreateQuestBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "QuestTypeReqDiscovered"
          },
          {
            "ParamType": 5,
            "value": "Version 0.1 Alpha"
          },
          {
            "ParamType": 5,
            "value": "Increase Hunter Day (Warden) proc from 10% to 25% but lowered damage from 20 to 15\r\nLowered Hunter Night (Warden) proc from 100% to 70% and damage from 50 to 35\r\nLowered Master Vampire Day (Dreadlord) attack speed reduction from 10% to 5%\r\nIncrease Undead General (Death Knight) AOE from 875 to 950\r\nLowered Frostmoure (Death Knight) proc from 100% to 80%\r\nIncrease Chilling Aura (Lich) AOE from 900 to 950\r\nIncrease Holy Dodge (Paladin) proc from 25% to 30% and fix it's tooltip\r\nLowered Web (Crypt Lord) cooldown from 5 to 3 seconds\r\nIncrease Voodoo Shell (Shadow Hunter) duration from 100 to 110 seconds\r\nAltered Holy Light (Paladin) healing (damage) from 200/400/600 (100/200/300) to 225/450/675 (112/225/337) on day and 100/180/324 (50/90/152) on night, and has twice cooldown on night\r\nLowered experience gain from 100% to 25%\r\nWarden Agility gain increased from 1.60 to 2.40 per level\r\nHuntress and Abomination (Creep Spawns) now has 500/500 vision, reduced from 1400/800\r\nBase AI now uses default heroes instead of modified ones\r\nBerserk (Blademaster and Demon Hunter) damage taken increment reduced from 60% to 30%\r\nMercenary Spells now uses ZXCV instead of QWER\r\nReposition some buildings\r\nRemove all Neutral Hostile from the map, along with Gold Mines and Neutral Buildings\r\nAdded Item Shops and 2 Fountains for both sides\r\nRenamed All Shops except Alchemist\r\nIntroduces new reward method in killing heroes, base AI heroes no longer counts and now heroes have a new mechanic of gold received upon killing heroes\r\nReworked Divine Shield (Paladin), no longer provide real invulnerability but instead still attackable but takes no damage and use hotkey W instead of D, reduced cooldown from 35/50/65 to 30/45/60 seconds\r\nWarden now use Maiev model and icon\r\nFixed Deny System\r\nChange colors of players, now all player heroes are undistinguisable to allow sneaky pass, All Players except AIs and Neutral uses Black Colors\r\nRemove trees on upper and below of the middle path, giving more versilatility\r\nAvatar of Vengeance (Warden) now summon weaker spirit (425 health instead of 500 health), has longer cooldown to summon spirit (increased from 2 to 5 seconds) and less duration for the summoned spirits (45 seconds from 50 seconds)"
          },
          {
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNHeroWarden.blp"
          }
        ],
        "value": "CreateQuestBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "QuestTypeReqDiscovered"
          },
          {
            "ParamType": 5,
            "value": "First Release"
          },
          {
            "ParamType": 5,
            "value": "First Release of Slalom Wars"
          },
          {
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNUndeadShrine.blp"
          }
        ],
        "value": "CreateQuestBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 5,
            "value": "Credits"
          }
        ],
        "value": "CommentString"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "QuestTypeOptDiscovered"
          },
          {
            "ParamType": 5,
            "value": "Special Thanks"
          },
          {
            "ParamType": 5,
            "value": "Ardenian : a motivator to continue this map\r\nBlizzard Entertainment : base map, World Editor, most of the content basis"
          },
          {
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNAvengingWatcher.blp"
          }
        ],
        "value": "CreateQuestBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "QuestTypeOptDiscovered"
          },
          {
            "ParamType": 5,
            "value": "Old Alpha Tester"
          },
          {
            "ParamType": 5,
            "value": "Ardenian\r\nLegendzKing"
          },
          {
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNWarden2.blp"
          }
        ],
        "value": "CreateQuestBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "QuestTypeOptDiscovered"
          },
          {
            "ParamType": 5,
            "value": "Models"
          },
          {
            "ParamType": 5,
            "value": "Blood Mage : Ujimasa Hojo\r\nArchangel : Arch Angel, General Frank"
          },
          {
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNTaurenTotem.blp"
          }
        ],
        "value": "CreateQuestBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "QuestTypeOptDiscovered"
          },
          {
            "ParamType": 5,
            "value": "Skins"
          },
          {
            "ParamType": 5,
            "value": "Glitzage : Glaive Thrower\r\nHammerFist123 : Cooldown UI\r\nAvatars Lord : Arrow Health Bar\r\nAvatars Lord : Barcode Health Bar"
          },
          {
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNTaurenTotem.blp"
          }
        ],
        "value": "CreateQuestBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "QuestTypeOptDiscovered"
          },
          {
            "ParamType": 5,
            "value": "Systems"
          },
          {
            "ParamType": 5,
            "value": "Legal_Ease : Selection Circle\r\nBribe : Item Cleanup 1.2, Spell System"
          },
          {
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNSpiritOfVengeance.blp"
          }
        ],
        "value": "CreateQuestBJ"
      }
    },
    {
      "isEnabled": true,
      "function": {
        "ParamType": 1,
        "parameters": [
          {
            "ParamType": 2,
            "value": "QuestTypeOptDiscovered"
          },
          {
            "ParamType": 5,
            "value": "Icons"
          },
          {
            "ParamType": 5,
            "value": "HammerFist132 : Cooldown Indicator\r\nKelThuzad : BTNArcane + BTNExorcism\r\nPalaslayer : BTNLight\r\n-Berz- : BTNWardenGlaive\r\nPeeKay : BTNCloakofshadows\r\nWalle : BTNIcysword\r\nUjimasa Hojo : BTNHallsOfTheDead + BTNBlackCitadel\r\nBlizzard Entertainment : BTNTaurenTotemBETA\r\nMarcos DAB : BTNGolemCarapace\r\nMuoteck : BTNDrainLife\r\nZephyrius2412 : Blood Mage"
          },
          {
            "ParamType": 5,
            "value": "ReplaceableTextures\\CommandButtons\\BTNArcane.blp"
          }
        ],
        "value": "CreateQuestBJ"
      }
    }
  ]
}