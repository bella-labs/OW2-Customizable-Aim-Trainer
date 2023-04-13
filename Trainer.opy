settings {
    "main": {
        "description": "A very cool CAT.\n\n  ∧,,,∧\n ( •‿• )\n /つ   づ♡\n\nFind tutorials/help at workshop.codes/VXEAT\nReport bugs on my discord:discord.gg/YPQ5ETNT45\n\nFeatures:\n* Projectile Guide - Learn to lead projectiles\n* Pressure Mode - Bots shoot back!\n* Custom Spawn Location - Train on any map\n* Reactive Bots - Input Reading, just like Morgott!\n* And More... Check out the workshop settings page\n\nNote: There are hundereds of different interactions in this mode, if something feels unrealistic or unfun, let me know in my discord :)",
        "modeName": "Customizable Aim Trainer - VXEAT"
    },
    "lobby": {
        "allowPlayersInQueue": true,
        "mapRotation": "paused",
        "team1Slots": 4,
        "team2Slots": 0,
        "returnToLobby": "never"
    },
    "gamemodes": {
        "skirmish": {
            "enabledMaps": [
                "workshopChamber"
            ]
        },
        "general": {
            "gamemodeStartTrigger": "immediately",
            "heroLimit": "off",
            "tankPassiveHealthBonus": "alwaysEnabled"
        }
    },
    "heroes": {
        "team2": {
            "pharah": {
                "secondaryFireMaximumTime%": 500,
                "secondaryFireRechargeRate%": 500,
                "ability1Cooldown%": 0,
                "enableInfiniteAmmo": true
            }
        },
        "allTeams": {
            "doomfist": {
                "ability2Cooldown%": 10
            },
            "echo": {
                "ability1Cooldown%": 10,
            },
            "general": {
                "abilityCooldown%": 0,
                "enableSpawningWithUlt": true,
                "ultGen%": 500,
                "combatUltGen%": 500,
                "passiveUltGen%": 500
            }
        }
    }
}

# Global Bariables
## Control Flow Variables
globalvar Index
## Movement Variables
globalvar MoveMinWait
globalvar MoveMaxWait
globalvar RandomJumping
globalvar JumpMinWait
globalvar JumpMaxWait
globalvar RandomCrouching
globalvar CrouchMaxWait
globalvar MvmtRad1
globalvar MvmtRad2
globalvar DefaultRandJump
globalvar DefaultRandCrouch
globalvar DefaultJumpMin
globalvar DefaultJumpMax
globalvar DefaultMinWait
globalvar DefaultMaxWait
globalvar DefaultCrouchMax
globalvar BotUncrouchMin
globalvar BotUncrouchMax
globalvar RandomStrafes
globalvar DefaultRandomStrafes
globalvar DefaultTurnRate
globalvar DefaultMvmtType
globalvar MvmtType3MinDist
globalvar MvmtType3MaxDist

## Bot Hero Lists 
globalvar HeroList
globalvar DefaultHeroList
globalvar ActiveHeroList
globalvar HeroStatus
globalvar EnabledHeroCount

## Bot Settings Variables
globalvar BotsUseAbilities
globalvar BotsReact
globalvar EnableAllAbilities

## Pressure Mode Variables
globalvar PressureBot
globalvar PressureDiff

## Bot Behavior Settings
globalvar BotBehavior
globalvar BotReactivity
globalvar UltFrequency

## Bot Spawn Variables
globalvar BotSlot
globalvar SpawnPt
globalvar SpawnSize
globalvar NumberOfBots
globalvar LeastHeroInPlay
globalvar NextHero

## Player Setting Variables
globalvar DamageNumbers
globalvar Playerlist
globalvar ElimRefresh
globalvar HealAfterNoDmg
globalvar DeathPunishment
globalvar ShowDebugInfo
globalvar ShowStartMessage

## Global Menu Variables
globalvar MenuSizeHost
globalvar MenuSizePlayer
globalvar MenuToggleBotSpawn
globalvar MenuTogglePressureType
globalvar MenuTogglePressureDiff
globalvar MenuToggleBotDiff
globalvar MenuToggleBotSpeed
globalvar MenuToggleSpeedMode

## Flavor Text
globalvar SplashText

## Speed Mode Variables
globalvar SpeedTimer
globalvar SpeedMulti
globalvar SpeedModeBase
globalvar SpeedModeIncrement
globalvar SpeedModeDecrement
globalvar SpeedModeMaxTime

#Player variables
## Player Stat Tracking Variables
playervar Timer
playervar Kills
playervar Deaths
playervar DmgDealt
playervar DmgTaken
playervar PlayerHeroList
playervar RecentDamageDealtToSlot

## Bot Pathing Variables
playervar PathLoc
playervar PathIndex
playervar PathDirection
playervar PathOldDirection
playervar BotMvmtRandomizer
playervar MvmtVar
playervar MvmtType
playervar MvmtTypeLock
playervar DisableJump
playervar DisableCrouch

## Bot Ability Variables
playervar Randomizer
playervar ApplyPressure
playervar LookOffset
playervar AbilityAcc
playervar OldLookTarget
playervar BotAbilityLock
playervar BotAbilitySignal
playervar BotAbilityVar

## Bot Facing Variables
playervar LookTarget
playervar HealingFacing
playervar LtTime

## Player Modifiers
playervar DefaultAmmo
playervar BuffEffects

## Player Ability Tracker

playervar PlayerEatCDMatrix
playervar PlayerBlockCDMatrix
playervar PlayerDodgeCDMatrix
playervar PlayerStunCDMatrix
playervar PlayerReactMatrix
playervar PlayerUsedEatCD
playervar PlayerUsedBlockCD
playervar PlayerUsedDodgeCD
playervar PlayerUsedStunCD
playervar PlayerReactTime
playervar PlayerAbilityLock
playervar AbilityReactChance

## Projectile Leading Variables
playervar AimSpot
playervar ProjSpeed
playervar ProjVarT
playervar ProjVarA
playervar ProjVarB
playervar ProjVarC
playervar DeltaXZ
playervar ProjVarD
playervar ProjVarE
playervar ProjVarT1
playervar ProjVarT2
playervar ProjEffects
playervar CurrHero
playervar ProjType
playervar ProjGrav
playervar ProjDelta

## Menu Variables
playervar Menu_On
playervar MenuIndex
playervar BotMenuIndex
playervar BotSettingsChanged
playervar MenuToggleMercy
playervar MenuToggleAna
playervar MenuToggleKiriko
playervar MenuToggleSelfSpeed
playervar MenuToggleProjectile
playervar MenuToggleInfAmmo

#Subroutine Names
subroutine AssignNewHero
subroutine CreateAllBots
subroutine DestroyAllBots
subroutine CreateBot
subroutine DestroyBot
subroutine ResetBotPathing
subroutine MenuChangeHeroes
subroutine MenuMercyToggle
subroutine MenuAnaToggle
subroutine MenuKirikoToggle
subroutine MenuPlayerSpeed
subroutine MenuProjGuide 
subroutine MenuInfAmmo 
subroutine MenuBotSpeed 
subroutine MenuBotDiff
subroutine MenuMvmtType
subroutine MenuCustSpawn
subroutine MenuCustRadius
subroutine MenuNumBots
subroutine MenuHeroSelect
subroutine MenuPressureMode
subroutine MenuSpeedMode
subroutine SetMapSpawnPt
subroutine ChangePathing
subroutine MenuHud
subroutine GlobalHud
subroutine SetDefaultFacing
subroutine SetProjectileFacing
subroutine SetHealingFacing
subroutine SetFloorFacing
subroutine CalculateProjectileLead
subroutine CalculateArcProjectileLead
subroutine PopulateAbilityMatrix
subroutine AllowInput
subroutine InitializeBotHero
subroutine WinstonUltimate
subroutine DvaUltimate
subroutine DoomfistUltimate
subroutine BrigBashCombo
subroutine BrigWhipShot
subroutine ResetPlayerResources
subroutine SpeedModeAction



#Activated extensions

#!extension spawnMoreDummyBots
#!extension buffStatusEffects

# Workshop Initialization Rules
def SetMapSpawnPt():
    @Name "SUB: SetMapSpawnPt"

    if getCurrentMap() == Map.ANTARCTIC_PENINSULA:
        ## Labs
        if getCurrentObjective() == 0:
            SpawnPt = vect(270,45,156)
        ## Icebreaker
        elif getCurrentObjective() == 1:
            SpawnPt = vect(284,-12,-219)
        ## Sublevel
        elif getCurrentObjective() == 2:
            SpawnPt = vect(-78,-153,60)
    elif getCurrentMap() == Map.BLIZZ_WORLD:
        SpawnPt = vect(2.71,1.90,72.68)
    elif getCurrentMap() == Map.BLIZZ_WORLD_WINTER:
        SpawnPt = vect(2.71,1.90,72.68)
    elif getCurrentMap() == Map.BUSAN:
        ## Downtown
        if getCurrentObjective() == 0:
            SpawnPt = vect(51.19, 11.00, -111.20)
        ## Sanctuary
        elif getCurrentObjective() == 1:
            SpawnPt = vect(-328.56, 12, 131)
        ## MEKA Base
        elif getCurrentObjective() == 2:
            SpawnPt = vect(217.81, 17.09, 230.12)
    elif getCurrentMap() == Map.CIRCUIT_ROYAL:
        SpawnPt = vect(-21.80,6,-32.25)
    elif getCurrentMap() == Map.COLOSSEO:
        SpawnPt = vect(0,2,-12)
    elif getCurrentMap() == Map.DORADO:
        SpawnPt = vect(20,1,5)
    elif getCurrentMap() == Map.EICHENWALDE:
        SpawnPt = vect(12,9,-72)
    elif getCurrentMap() == Map.EICHENWALDE_HALLOWEEN:
        SpawnPt = vect(12,9,-72)
    elif getCurrentMap() == Map.ESPERANCA:
        SpawnPt = vect(0,1,-30)
    elif getCurrentMap() == Map.HANAMURA:
        SpawnPt = vect(0,0,0)
    elif getCurrentMap() == Map.HANAMURA_WINTER:
        SpawnPt = vect(0,0,0)
    elif getCurrentMap() == Map.HAVANA:
        SpawnPt = vect(-15,5,-80)
    elif getCurrentMap() == Map.HOLLYWOOD:
        SpawnPt = vect(-21,8,10)
    elif getCurrentMap() == Map.HOLLYWOOD_HALLOWEEN:
        SpawnPt = vect(-21,8,10)
    elif getCurrentMap() == Map.HORIZON_LUNAR_COLONY:
        SpawnPt = vect(53.25,15,-74)
    elif getCurrentMap() == Map.ILIOS:
        ## Lighthouse
        if getCurrentObjective() == 0:
            SpawnPt = vect(336,-22,-42)
        ## Well
        elif getCurrentObjective() == 1:
            SpawnPt = vect(-203.95,1,-12)
        ## Ruins
        elif getCurrentObjective() == 2:
            SpawnPt = vect(28.50, 70, -157)
    elif getCurrentMap() == Map.JUNKERTOWN:
        SpawnPt = vect(20, 10, -77)
    elif getCurrentMap() == Map.KINGS_ROW:
        SpawnPt = vect(-4.50, 5, -26)
    elif getCurrentMap() == Map.KINGS_ROW_WINTER:
        SpawnPt = vect(-4.50, 5, -26)
    elif getCurrentMap() == Map.LIJIANG_TOWER:
        ## Night Market
        if getCurrentObjective() == 0:
            SpawnPt = vect(1.06, 1, -29.88)
        ## Gardens
        elif getCurrentObjective() == 1:
            SpawnPt = vect(0, 96, 140)
        ## Control Center
        elif getCurrentObjective() == 2:
    elif getCurrentMap() == Map.LIJIANG_TOWER_LNY:
        ## Night Market
        if getCurrentObjective() == 0:
            SpawnPt = vect(1.06, 1, -29.88)
        ## Gardens
        elif getCurrentObjective() == 1:
            SpawnPt = vect(0, 96, 140)
        ## Control Center
        elif getCurrentObjective() == 2:    
            SpawnPt = vect(0, 273, 280)
    elif getCurrentMap() == Map.NEPAL:
        ## Village
        if getCurrentObjective() == 0:
            SpawnPt = vect(-180, -86, 0)
        ## Shrine
        elif getCurrentObjective() == 1:
            SpawnPt = vect(-43.50, 13, 0)
        ## Sanctum
        elif getCurrentObjective() == 2:
            SpawnPt = vect(83, 130, 0)
    elif getCurrentMap() == Map.NEW_QUEEN_STREET:
        SpawnPt = vect(0, 7, 4)
    # Numbani not supported by overpy yet.
    #elif getCurrentMap() == Map.NUMBANI:
    #    SpawnPt = vect(82, 1, 2)
    elif getCurrentMap() == Map.OASIS:
        ## City Center
        if getCurrentObjective() == 0:
            SpawnPt = vect(-180, -86, 0)
        ## Gardens
        elif getCurrentObjective() == 1:
            SpawnPt = vect(123.45, 12, -230)
        ## University
        elif getCurrentObjective() == 2:
            SpawnPt = vect(147.50, 10, 251)
    elif getCurrentMap() == Map.PARAISO:
        SpawnPt = vect(-14, 10, -7)
    elif getCurrentMap() == Map.PARIS:
        SpawnPt = vect(-95.65, 14, -83.75)
    elif getCurrentMap() == Map.RIALTO:
        SpawnPt = vect(56, 7, -56)
    elif getCurrentMap() == Map.ROUTE66:
        SpawnPt = vect(60, 10, 14)
    elif getCurrentMap() == Map.SHAMBALI_MONASTERY:
        SpawnPt = vect(-42, 32, 182)
    elif getCurrentMap() == Map.TEMPLE_OF_ANUBIS:
        SpawnPt = vect(-10, 12, 14)
    elif getCurrentMap() == Map.VOLSKAYA:
        SpawnPt = vect(-12, 2, 80)
    elif getCurrentMap() == Map.WATCHPOINT_GIBRALTAR:
        SpawnPt = vect(41, 4, -130)
    else:
        SpawnPt = vect(0,0,0)


rule "Initialize: Workshop Settings":

    ## UI Settings
    DamageNumbers = createWorkshopSetting(bool, "0. UI Settings", "Show Damage Numbers", false, 0)
    ShowDebugInfo = createWorkshopSetting(bool, "0. UI Settings", "Show Server Load and Coordinates", false, 1)
    ShowStartMessage = createWorkshopSetting(bool, "0. UI Settings", "Show Startup Message", true, 2)
    ## Number of Bots
    NumberOfBots = createWorkshopSetting(int[1:12], "1. Number of Bots (Overridden by in-game changes to settings)", "Number of Bots", 6, 4)

    ## Bot Ability Settings
    BotsUseAbilities = createWorkshopSetting(bool, "2. Bot Ability Settings (Overridden by in-game changes to settings)", "Bots use abilities", true, 0)
    BotsReact  = createWorkshopSetting(bool, "2. Bot Ability Settings (Overridden by in-game changes to settings)", "Bots react (to player input, health, etc.)", true, 1)
    BotReactivity = createWorkshopSetting(float[0.1:5], "2. Bot Ability Settings (Overridden by in-game changes to settings)", "Multiplier for how often bots respond to the player input (2 = 2x often, etc.)", 1, 2)
    UltFrequency = createWorkshopSetting(float[0.1:5], "2. Bot Ability Settings (Overridden by in-game changes to settings)", "Multiplier for how often bots use ultimates (2 = 2x often, etc.)", 1, 3)

    ## Bot Movement Settings
    DefaultMvmtType = createWorkshopSetting(enum["Seita Pathing", "Seita w/ Random Long Strafes", "AD Strafes", "8 Directional Strafes", "No Movement", "Forward AD Strafes (Not Recommended)", "Forward (Not Recommended)"], "3. Bot Movement (Overridden by in-game changes to movement)", "Strafe Pattern", 0, 0)
    MenuToggleBotDiff = createWorkshopSetting(enum["custom", "very easy", "easy", "medium", "hard", "very hard", "extreme"], "3. Bot Movement (Overridden by in-game changes to movement)", "Difficulty", 4, 1)
    MenuToggleBotSpeed = createWorkshopSetting(enum["Normal", "lucio speed", "kitsune / shout", "lucio amp"],   "3. Bot Movement (Overridden by in-game changes to movement)", "Bot Movement Speed", 0, 2)
    DefaultRandomStrafes = createWorkshopSetting(bool, "3. Bot Movement (Overridden by in-game changes to movement)", "Randomly swap to alternative strafe patterns", false, 3)

    ## Bot Movement Modifiers
    DefaultMinWait = createWorkshopSetting(float[0.1:5], "3.1. Bot Movement Modifiers", "Custom Strafe Pattern - Minimum Wait", 5, 4)
    DefaultMaxWait = createWorkshopSetting(float[0.2:8], "3.1. Bot Movement Modifiers", "Custom Strafe Pattern - Maximum Wait", 8, 5)
    DefaultRandJump = createWorkshopSetting(bool, "3.1. Bot Movement Modifiers", "Bot Jumping", true, 6)
    DefaultJumpMin = createWorkshopSetting(float[1:10], "3.1. Bot Movement Modifiers", "Bot Jumping - Minimum wait", 3.5, 7)
    DefaultJumpMax = createWorkshopSetting(float[1.5:20], "3.1. Bot Movement Modifiers", "Bot Jumping - Maximum wait", 10, 8)
    DefaultRandCrouch = createWorkshopSetting(bool, "3.1. Bot Movement Modifiers", "Bot Crouching", true, 9)
    DefaultCrouchMax = createWorkshopSetting(float[0.25:10], "3.1. Bot Movement Modifiers", "Bot Crouching - Maximum wait", 3, 10)
    MvmtType3MinDist = createWorkshopSetting(int[0:500], "3.1. Bot Movement Modifiers", "8 Directional Strafe Pattern Minimum Distance", 0, 11)
    MvmtType3MaxDist = createWorkshopSetting(int[0:500], "3.1. Bot Movement Modifiers", "8 Directional Strafe Pattern Maximum Distance", 500, 12)
    # Pressure Mode
    MenuTogglePressureType = createWorkshopSetting(enum["off", "killable", "unkillable"], "4. Bot Pressure (Overridden by in-game changes to pressure)", "Bots Apply Pressure", 0, 0)
    MenuTogglePressureDiff = createWorkshopSetting(enum["easy", "medium", "hard", "aimbot"],  "4. Bot Pressure (Overridden by in-game changes to pressure)", "Bots Pressure Difficulty", 0, 1)
    # Pressure Mode Modifiers
    ElimRefresh = createWorkshopSetting(bool, "4.1. Bot Pressure Modifiers (killable mode only)", "Eliminations / Deaths reset cooldowns", true, 0)
    HealAfterNoDmg = createWorkshopSetting(bool, "4.1. Bot Pressure Modifiers (killable mode only)", "Restore health after not taking damage", true, 1)
    DeathPunishment = createWorkshopSetting(bool, "4.1. Bot Pressure Modifiers (killable mode only)", "Punish player deaths (player is stunned and attacker recovers health)", true, 2)

    # Speed Mode
    MenuToggleSpeedMode = createWorkshopSetting(bool, "5. Bot Speed Mode (Overridden by in-game changes to Speed Mode)", "Increase Bots Movement Speed Every Elimination (JPYHG)", false, 0)
    SpeedModeMaxTime = createWorkshopSetting(int[1:100], "5. Bot Speed Mode (Overridden by in-game changes to Speed Mode)", "Speed Mode Timer", 10, 1)
    SpeedModeBase = createWorkshopSetting(int[0:1000], "5. Bot Speed Mode (Overridden by in-game changes to Speed Mode)", "Speed Mode Base Speed", 100, 2)
    SpeedModeIncrement = createWorkshopSetting(int[0:100], "5. Bot Speed Mode (Overridden by in-game changes to Speed Mode)", "Speed Mode Increment Percent Amount", 10, 3)
    SpeedModeDecrement = createWorkshopSetting(int[0:100], "5. Bot Speed Mode (Overridden by in-game changes to Speed Mode)", "Speed Mode Decrement Percent Amount (0 = same as increment)", 0, 4)

    # Bot Spawn
    MenuToggleBotSpawn = createWorkshopSetting(bool, "6. Custom Bot Spawn (Overridden by in-game changes to spawn)", "Use Custom Spawn Point", false, 0)
    SpawnSize = createWorkshopSetting(int[0:100], "6. Custom Bot Spawn (Overridden by in-game changes to spawn)", "Spawn Size", 10, 1)
    SpawnPt = vect(createWorkshopSetting(float[-999:999], "6. Custom Bot Spawn (Overridden by in-game changes to spawn)", "Spawn x coord", 0, 2),
    createWorkshopSetting(float[-999:999], "6. Custom Bot Spawn (Overridden by in-game changes to spawn)", "Spawn y coord", 0, 2),
    createWorkshopSetting(float[-999:999], "6. Custom Bot Spawn (Overridden by in-game changes to spawn)", "Spawn z coord", 0, 3))

    ## Bot Tank Heroes Enabled
    DefaultHeroList = createWorkshopSetting(bool, "7.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "D.va", false, 0)
    DefaultHeroList.append(createWorkshopSetting(bool, "7.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Doomfist", false, 1))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Junker Queen", false, 2))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Orisa", false, 3))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Ramattra", false, 4))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Reinhardt", false, 5))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Roadhog", false, 6))
	DefaultHeroList.append(createWorkshopSetting(bool, "7.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Sigma", false, 7))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Winston", false, 8))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Wrecking Ball", false, 9))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Zarya", false, 10))
    
    ## Bot Damage Heroes Enabled
    DefaultHeroList.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Ashe", true, 0))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Bastion", false, 1))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Cassidy", true, 2))
	DefaultHeroList.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Echo", true, 3))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Genji", true, 4))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Hanzo", true, 5))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Junkrat", true, 6))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Mei", true, 7))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Pharah", true, 8))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Reaper", true, 9))
	DefaultHeroList.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Sojourn", true, 10))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Soldier 76", true, 11))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Sombra", true, 12))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Symmetra", true, 13))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Torbjörn", true, 14))
	DefaultHeroList.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Tracer", true, 15))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Widowmaker", true, 16))
    
    ## Bot Support Heroes Enabled
    DefaultHeroList.append(createWorkshopSetting(bool, "7.3. Bot Support Heroes (Overridden by in-game changes to bot heroes)", "Ana", true, 0))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.3. Bot Support Heroes (Overridden by in-game changes to bot heroes)", "Baptiste", true, 1))
	DefaultHeroList.append(createWorkshopSetting(bool, "7.3. Bot Support Heroes (Overridden by in-game changes to bot heroes)", "Brigitte", true, 2))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.3. Bot Support Heroes (Overridden by in-game changes to bot heroes)", "Kiriko", true, 3))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.3. Bot Support Heroes (Overridden by in-game changes to bot heroes)", "Lifeweaver", true, 4))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.3. Bot Support Heroes (Overridden by in-game changes to bot heroes)", "Lúcio", true, 4))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.3. Bot Support Heroes (Overridden by in-game changes to bot heroes)", "Mercy", true, 5))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.3. Bot Support Heroes (Overridden by in-game changes to bot heroes)", "Moira", true, 6))
    DefaultHeroList.append(createWorkshopSetting(bool, "7.3. Bot Support Heroes (Overridden by in-game changes to bot heroes)", "Zenyatta", true, 7))
    
    ## Bot Behavior
    EnableAllAbilities = createWorkshopSetting(bool, "8. Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Enable All Bot Abilities", false, 0)
    ## Bot tank Behavior (index 0 - 10)
    BotBehavior = createWorkshopSetting(enum["Boosters, Missiles, Remech", "Boosters, Missiles, Remech, D. Matrix", "Boosters, Missiles, Remech, D. Matrix, Bomb"], "8.1. Tank Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Dva Bot Behavior", 0, 0)
    BotBehavior.append(createWorkshopSetting(enum["Slam, Punch", "Slam, Punch, Block", "Slam, Punch, Block, Meteor Strike"], "8.1. Tank Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Doomfist Bot Behavior", 0, 1))
    BotBehavior.append(createWorkshopSetting(enum["Jagged Blade, Carnage", "Jagged Blade, Carnage, Shout", "Jagged Blade, Carnage, Shout, Rampage"], "8.1. Tank Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Junker Queen Bot Behavior", 1, 2))
    BotBehavior.append(createWorkshopSetting(enum["Javlin", "Javlin, Fortify, Spin", "Javlin, Fortify, Spin, Terra Surge"], "8.1. Tank Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Orisa Bot Behavior", 0, 3))
    BotBehavior.append(createWorkshopSetting(enum["Omnic Form", "Omnic Form, Nemesis Form", "Omnic Form, Nemesis Form, Vortex, Shield, Block", "Omnic Form, Nemesis Form, Vortex, Shield, Block, Annihilation"], "8.1. Tank Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Ramattra Bot Behavior", 1, 4))
    BotBehavior.append(createWorkshopSetting(enum["Fire Strike", "Fire Strike, Pin, Shatter", "Fire Strike,Pin, Shatter, Shield"], "8.1. Tank Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Reinhardt Bot Behavior", 1, 5))
    BotBehavior.append(createWorkshopSetting(enum["Hook", "Hook, Heal",  "Hook, Heal, Whole Hog"], "8.1. Tank Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Roadhog Bot Behavior", 0, 6))
	BotBehavior.append(createWorkshopSetting(enum["Rock", "Rock, Flux", "Rock, Flux, Shield, Grasp"], "8.1. Tank Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Sigma Bot Behavior", 1, 7))
    BotBehavior.append(createWorkshopSetting(enum["Leap", "Leap, Primal", "Leap, Primal, Bubble"], "8.1. Tank Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Winston Bot Behavior", 1, 8))
    BotBehavior.append(createWorkshopSetting(enum["Roll", "Roll, Slam", "Roll, Slam, Shield", "Roll, Slam, Shields, Mines"], "8.1. Tank Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Wrecking Ball Bot Behavior", 1, 9))
    BotBehavior.append(createWorkshopSetting(enum["Rocket Jump", "Rocket Jump, Self Bubble", "Rocket Jump, Self Bubble, Grav"], "8.1. Tank Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Zarya Bot Behavior", 0, 10))
    
    ## Damage Bot Behavior (index 11 - 27)
    BotBehavior.append(createWorkshopSetting(enum["Coach Gun", "Coach Gun, Dynamite", "Coach GUn, Dynamite, B.O.B"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Ashe Bot Behavior", 1, 0))
    BotBehavior.append(createWorkshopSetting(enum["Recon Form", "Recon Form, Assault Form", "Recon Form, Assault Form, Grenade", "Recon, Assault, Grenade, Artillery Form"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Bastion Bot Behavior", 2, 1))
    BotBehavior.append(createWorkshopSetting(enum["Roll", "Roll, Mag Nade", "Roll, Mag Nade, High Noon"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Cassidy Bot Behavior", 1, 2))
	BotBehavior.append(createWorkshopSetting(enum["Flight", "Flight, Stickies", "Flight, Stickies, Beam"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Echo Bot Behavior", 2, 3))
    BotBehavior.append(createWorkshopSetting(enum["Dash", "Dash, Deflect", "Dash, Deflect, Dragonblade"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Genji Bot Behavior", 1, 4))
    BotBehavior.append(createWorkshopSetting(enum["Lunge", "Lunge, Storm", "Lunge, Storm, Dragonstrike"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Hanzo Bot Behavior", 1, 5))
    BotBehavior.append(createWorkshopSetting(enum["Conc", "Conc, Trap", "Conc, Trap, Rip Tire"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Junkrat Bot Behavior", 0, 6))
    BotBehavior.append(createWorkshopSetting(enum["Ice Block", "Ice Block, Wall", "Ice Block, Wall, Blizzard"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Mei Bot Behavior", 0, 7))
    BotBehavior.append(createWorkshopSetting(enum["Hover, Jump Jet", "Hover, Jump Jet, Conc", "Hover, Jump Jet, Conc, Rocket Barrage"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Pharah Bot Behavior", 0, 8))
    BotBehavior.append(createWorkshopSetting(enum["Wraith", "Wraith, Teleport", "Wraith, Teleport, Blossom"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Reaper Bot Behavior", 1, 9))
    BotBehavior.append(createWorkshopSetting(enum["Slide, Rail", "Slide, Rail, Orb", "Slide, Rail, Orb, Overclock"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Sojourn Bot Behavior", 1, 10))
	BotBehavior.append(createWorkshopSetting(enum["Rocket", "Rocket, Sprint", "Rocket, Sprint, Heal", "Rocket, Sprint, Heal, Tac Visor"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Soldier 76 Bot Behavior", 1, 11))
    BotBehavior.append(createWorkshopSetting(enum["Translocate", "Translocate, Invisibility", "Translocate, Invisibility, Hack", "Translocate, Invisibility, Hack, EMP"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Sombra Bot Behavior", 1, 12))
    BotBehavior.append(createWorkshopSetting(enum["Teleporter", "Teleporter, Photon Barrier"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Symmetra Bot Behavior ", 0, 13))
    BotBehavior.append(createWorkshopSetting(enum["Overload", "Overload, Molten Core"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Torbjörn Bot Behavior", 0, 14))
    BotBehavior.append(createWorkshopSetting(enum["Blink", "Blink, Recall", "Blink, Recall, Pulse Bomb"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Tracer Bot Behavior", 1, 15))
	BotBehavior.append(createWorkshopSetting(enum["None", "Venom Mine"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Widowmaker Bot Behavior", 0, 16))
    
    ## Bot Support Heroes (index 28 - 35)
    BotBehavior.append(createWorkshopSetting(enum["Sleep", "Sleep, Damage Nade", "Sleep, Damage + Self Nade"], "8.3. Support Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Ana Bot Behavior", 1, 0))
    BotBehavior.append(createWorkshopSetting(enum["Exo Boots", "Exo Boots, Regen", "Exo Boots, Regen, Immo", "Exo Boots, Regen, Immo, Amp. Matrix"], "8.3. Support Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Baptiste Bot Behavior", 0, 1))
	BotBehavior.append(createWorkshopSetting(enum["Whip Shot, Bash", "Whip Shot, Bash, Shield", "Whip Shot, Bash, Shield, Rally"], "8.3. Support Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Brigitte Bot Behavior", 0, 2))
    BotBehavior.append(createWorkshopSetting(enum["Swift Step", "Swift Step, Suzu", "Swift Step, Suzu, Kitsune Rush"], "8.3. Support Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Kiriko Bot Behavior", 1, 3))
    BotBehavior.append(createWorkshopSetting(enum["Dash", "Dash, Platform", "Dash, Platform, Life Grip", "Dash, Platform, Life Grip, Tree"], "8.3. Support Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Lifeweaver Bot Behavior", 1, 4))
    BotBehavior.append(createWorkshopSetting(enum["Speed Aura", "Speed Aura, Amp", "Speed Aura, Amp, Boop", "Speed + Healing Aura, Amp, Boop", "Speed + Healing Aura, Amp, Boop, Beat"], "8.3. Support Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Lúcio Bot Behavior", 1, 4))
    BotBehavior.append(createWorkshopSetting(enum["GA, Damage Boost", "GA, Damage + Healing Boost", "GA, Damage + Healing Boost, Valkyrie"], "8.3. Support Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Mercy Bot Behavior", 0, 5))
    BotBehavior.append(createWorkshopSetting(enum["Fade", "Fade, Damage Orb", "Fade, Damage + Heal Orb", "Fade, Damage + Heal Orb, Coalescence"], "8.3. Support Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Moira Bot Behavior", 1, 6))
    BotBehavior.append(createWorkshopSetting(enum["Volley", "Volley, Discord", "Volley, Discord, Transcendence"], "8.3. Support Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Zenyatta Bot Behavior", 1, 7))

rule "Initialize: Global Variables":

    ## Reassign Workshop Variables
    if MenuTogglePressureType == 0:
        MenuTogglePressureType = "off"
    elif MenuTogglePressureType == 1:
        MenuTogglePressureType = "killable"
    elif MenuTogglePressureType == 2:
        MenuTogglePressureType = "unkillable"

    if MenuTogglePressureDiff == 0:
        MenuTogglePressureDiff = "easy"
        PressureDiff = 1.75
    elif MenuTogglePressureDiff == 1:
        MenuTogglePressureDiff = "medium"
        PressureDiff = 1.25
    elif MenuTogglePressureDiff == 2:
        MenuTogglePressureDiff = "hard"
        PressureDiff = 0.50
    elif MenuTogglePressureDiff == 3:
        MenuTogglePressureDiff = "aimbot"
        PressureDiff = 0.00

    if MenuToggleBotSpawn == false:
        MenuToggleBotSpawn = "default"
        MvmtRad1 = 19
        MvmtRad2 = 8.5
    else:
        MenuToggleBotSpawn = "custom"
        MvmtRad1 = SpawnSize
        MvmtRad2 = SpawnSize/2

    if MenuToggleBotSpeed == 0:
        MenuToggleBotSpeed = 100
    elif MenuToggleBotSpeed == 1:
        MenuToggleBotSpeed = 125
    elif MenuToggleBotSpeed == 2:
        MenuToggleBotSpeed = 130
    elif MenuToggleBotSpeed == 3:
        MenuToggleBotSpeed = 160

    ## Map Default Spawns
    if MenuToggleBotSpawn == "default":
        SetMapSpawnPt()

    if EnableAllAbilities == true:
        Index = 0
        while Index <= 35:
            BotBehavior[Index] = 9999
            Index += 1

    ## Default Variables
    MenuSizeHost = 14
    MenuSizePlayer = 6
    Playerlist = []
    NextHero = null
    BotUncrouchMin = 0.25
    BotUncrouchMax = 0.65
    DefaultTurnRate = 600

    ## Hero List Initialization
    HeroList = Hero.DVA
    HeroList.append(Hero.DOOMFIST)
    HeroList.append(Hero.JUNKER_QUEEN)
    HeroList.append(Hero.ORISA)
    HeroList.append(Hero.RAMATTRA)
    HeroList.append(Hero.REINHARDT)
    HeroList.append(Hero.ROADHOG)
    HeroList.append(Hero.SIGMA)
    HeroList.append(Hero.WINSTON)
    HeroList.append(Hero.HAMMOND)
    HeroList.append(Hero.ZARYA)
    HeroList.append(Hero.ASHE)
    HeroList.append(Hero.BASTION)
    HeroList.append(Hero.MCCREE)
    HeroList.append(Hero.ECHO)
    HeroList.append(Hero.GENJI)
    HeroList.append(Hero.HANZO)
    HeroList.append(Hero.JUNKRAT)
    HeroList.append(Hero.MEI)
    HeroList.append(Hero.PHARAH)
    HeroList.append(Hero.REAPER)
    HeroList.append(Hero.SOJOURN)
    HeroList.append(Hero.SOLDIER)
    HeroList.append(Hero.SOMBRA)
    HeroList.append(Hero.SYMMETRA)
    HeroList.append(Hero.TORBJORN)
    HeroList.append(Hero.TRACER)
    HeroList.append(Hero.WIDOWMAKER)
    HeroList.append(Hero.ANA)
    HeroList.append(Hero.BAPTISTE)
    HeroList.append(Hero.BRIGITTE)
    HeroList.append(Hero.KIRIKO)
    HeroList.append(Hero.LIFEWEAVER)
    HeroList.append(Hero.LUCIO)
    HeroList.append(Hero.MERCY)
    HeroList.append(Hero.MOIRA)
    HeroList.append(Hero.ZENYATTA)


    SplashText = [
        "Meow", 
        "Taxi your mercy!", 
        "Good Luck, Have Fun everyone!",
        "Try Out Pressure Mode!", 
        "You're Swagging Out!",
        "Taxi your kiriko!",
        "Also Try TF2!",
        "Drink Water to Make Your Tracking Slaughter!",
        "They have a shield generator!", 
        "You can do it!", 
        "Congratulations!", 
        "Is that a Pro Genji?!", 
        "9% bug free!", 
        "Boop!", 
        "A group of penguins is a waddle!", 
        "Believe.", 
        "Un croissant, s'il vous plaît!", 
        "Nervous? Me? Never!",
        "_A__ __FF",
        "I Like Seaweed!",
        "Plentiful Sleep Make Your Flicks So Sleek!",
        "Greetings!",
        "Do you do posion?",
        "Can we get a nano going?",
        "5 Man Rez!",
        "double rainbow all the way across the sky!",
        "I'm back, baby!",
        "Remember To Thank Your Tank!",
        "Also Try Kovaaks!",
        "Your gun is so cute!",
        ]
        
rule "Initialize: Bot Hero Variables":

    # Wait to help reduce init load
    wait(2)
    # Build init bot hero pool
    for Index in range(len(HeroList)):
        if DefaultHeroList[Index] ==  true:
            ActiveHeroList.append(HeroList[Index])
            HeroStatus[Index] = "on"
            EnabledHeroCount += 1
        else:
            HeroStatus[Index] = "off"

    del ActiveHeroList[0]
    ActiveHeroList = random.shuffle(ActiveHeroList)
    # Set Movement Settings
    MenuBotDiff()
    # Starts generating all the bots
    CreateAllBots()


# Lobby Rules
rule "Player Joined: Team 1 Defaults":
    @Event playerJoined
    @Team 1
    
    # Default settings and hud generation
    eventPlayer.disableGamemodeHud()
    eventPlayer.BotSettingsChanged = false
    MenuHud()
    GlobalHud()
    wait(16)
    if ShowStartMessage == true:
        destroyHudText(eventPlayer.BotAbilityVar)

rule "Player Joined: Team 2 Defaults":
    @Event playerJoined
    @Team 2

    # Set default mvmt speed
    eventPlayer.BotAbilitySignal = [false, false, false, false, false]
    eventPlayer.BotAbilityLock  = [false, false, false, false, false]
    eventPlayer.BotAbilityVar = false


rule "Player Spawned":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    
    # Add new player to list
    Playerlist.append(eventPlayer)
    # Store max ammo for inf ammo setting
    eventPlayer.DefaultAmmo = eventPlayer.getMaxAmmo(0)
    # Move player to spawn point
    eventPlayer.teleport(SpawnPt)
    # Turn off menu
    eventPlayer.Menu_On = false
    # Allow player to use inputs
    AllowInput()
    # Make player unkillable by default. Deaths are done in-code to reduce waiting time vs via the death mechanic.
    eventPlayer.setStatusEffect(eventPlayer, Status.UNKILLABLE, 9999)
    # Defaults Stats
    eventPlayer.DmgDealt = 0
    eventPlayer.DmgTaken = 0
    # Variables to track player inputs and the sensitivities of each of their abilities
    eventPlayer.PlayerAbilityLock = 0
    if BotsReact == true:
        PopulateAbilityMatrix()

rule "Player Left":
    @Event playerLeft
    @Condition eventPlayer.isDummy() == false
    
    destroyDummy(Team.1, eventPlayer.getSlot() + 8)
    destroyDummy(Team.1, eventPlayer.getSlot() + 6)
    destroyDummy(Team.1, eventPlayer.getSlot() + 4)
    Playerlist.remove(eventPlayer)


rule "Player Set LookTarget":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.isAlive()

    eventPlayer.LookTarget = eventPlayer.getPlayerClosestToReticle(Team.2)
    wait(0.1)
    if RULE_CONDITION:
        goto RULE_START


# UI Elements
def GlobalHud():

    @Name "SUB: GlobalHUD"
    # Settings Notice
    if ShowStartMessage == true:
        hudHeader(eventPlayer, "Bots will not use defensive abilities and ultimates unless you enable them!\nGo to settings-> workshop settings-> 8.x. Bot Behavior                     \nFor each bot hero select the list of abilities you would like to see used. ", HudPosition.TOP, -2, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        eventPlayer.BotAbilityVar = getLastCreatedText()
    # Stats that are always displayed
    hudSubheader(eventPlayer, " \n", HudPosition.LEFT, -1, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(eventPlayer, "Elims:  {0}".format(ceil(eventPlayer.Kills)), HudPosition.LEFT, 0.1, Color.RED, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(eventPlayer, "Elims/min:  {0}".format(ceil(eventPlayer.Kills / (eventPlayer.Timer / 60))), HudPosition.LEFT, 0.2, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(eventPlayer, "Accuracy:  {0}  %".format(ceil(100 * eventPlayer.getHeroStatistic(eventPlayer.getCurrentHero(), HeroStat.WEAPON_ACCURACY))), HudPosition.LEFT, 0.3, Color.LIME_GREEN, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(eventPlayer, "Crit Accuracy:  {0}  %".format(ceil(100 * eventPlayer.getHeroStatistic(eventPlayer.getCurrentHero(), HeroStat.CRITICAL_HIT_ACCURACY))), HudPosition.LEFT, 0.4, Color.TURQUOISE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(eventPlayer, "Target Distance:  {0} m".format(round(distance(eventPlayer.LookTarget.getEyePosition(), eventPlayer.getEyePosition()))), HudPosition.LEFT, 0.5, Color.BLUE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    # Code advertisement 
    hudSubheader(eventPlayer, "CODE: VXEAT", HudPosition.RIGHT, -1, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    # Debug info toggled via workshop settings menu
    if ShowDebugInfo:
        hudSubheader(hostPlayer, "Load (Curr/Avg/Peak):  {0}  /  {1}  /  {2}".format(getServerLoad(),getAverageServerLoad(),getPeakServerLoad()), HudPosition.RIGHT, -0.9, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        hudSubheader(eventPlayer, "Coord: ({0},{1},{2})".format(eventPlayer.getPosition().x,eventPlayer.getPosition().y,eventPlayer.getPosition().z), HudPosition.RIGHT, -0.8, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        #hudSubheader(eventPlayer, "Ability Profile: ({0}%  E:{1}  B:{2}  D:{3}  S:{4})".format(hostPlayer.AbilityReactChance, hostPlayer.PlayerUsedEatCD, hostPlayer.PlayerUsedBlockCD, hostPlayer.PlayerUsedDodgeCD, hostPlayer.PlayerUsedStunCD), HudPosition.RIGHT, -0.7, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        #hudSubheader(eventPlayer, "Response Times: {0}/{1}/{2}/{3}/{4})".format(hostPlayer.PlayerReactMatrix[0], hostPlayer.PlayerReactMatrix[1], hostPlayer.PlayerReactMatrix[2], hostPlayer.PlayerReactMatrix[3], hostPlayer.PlayerReactMatrix[4]), HudPosition.RIGHT, -0.6, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        
def MenuHud():
    @Name "SUB: MenuHUD"
    # Default MenuHUD variables on init
    eventPlayer.MenuIndex = 0
    eventPlayer.BotMenuIndex = 0
    eventPlayer.MenuToggleMercy = "off"
    eventPlayer.MenuToggleAna = "off"
    eventPlayer.MenuToggleKiriko = "off"
    eventPlayer.MenuToggleSelfSpeed = 100
    eventPlayer.MenuToggleProjectile = "off"
    eventPlayer.MenuToggleInfAmmo = false
    
    eventPlayer.ProjType = "off"
    eventPlayer.ProjEffects = [null, null]
    eventPlayer.BuffEffects = [null, null]

    # Pressure Damage Data
    hudSubtext([i for i in eventPlayer if MenuTogglePressureType != "off"], 
    "KDR:  {0}".format(eventPlayer.Kills / eventPlayer.Deaths), HudPosition.LEFT, -0.01, Color.ROSE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext([i for i in eventPlayer if MenuTogglePressureType != "off"], 
    "Deaths:  {0}".format(eventPlayer.Deaths), HudPosition.LEFT, 0.11, Color.ORANGE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext([i for i in eventPlayer if MenuTogglePressureType != "off"], 
    "Net Damage:  {0}".format(eventPlayer.DmgDealt - eventPlayer.DmgTaken), HudPosition.LEFT, 0.51, Color.PURPLE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    #Speed Mode Data
    hudSubtext([i for i in eventPlayer if MenuToggleSpeedMode == true], 
    "Speed Timer:  {0}".format(SpeedTimer), HudPosition.TOP, -0.2, Color.BLACK, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext([i for i in eventPlayer if MenuToggleSpeedMode == true], 
    "Speed Force:  {0}".format(SpeedMulti), HudPosition.TOP, -0.1, Color.GREEN, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    # Settings Headers
    hudSubheader([i for i in eventPlayer if not eventPlayer.Menu_On], 
    "Press  {0}  to change settings".format(buttonString(Button.INTERACT)), HudPosition.LEFT, 0.6, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On], 
    "Press  {0}  to close menu".format(buttonString(Button.INTERACT)), HudPosition.LEFT, 0.6, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On], 
    "—  Controls  —", HudPosition.LEFT, 0.7, Color.BLACK, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On], 
    "Navigation: Movement Keys", HudPosition.LEFT, 0.8, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On], 
    "Toggle Selection:  {0}/{1}".format(buttonString(Button.PRIMARY_FIRE),buttonString(Button.ABILITY_2)), HudPosition.LEFT, 0.9, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    # Help Text
    hudSubtext([i for i in eventPlayer if eventPlayer.Menu_On], 
    "\n   For more info on settings \n Go to Workshop.codes/VXEAT", HudPosition.TOP, 1002, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    # Kitty! + Splash text
    hudSubtext([i for i in eventPlayer if eventPlayer.Menu_On], 
    "  ∧,,,∧\n ( •‿• )\n /つ   づ♡  ~ {0} ~\n/      /".format(SplashText[random.randint(0,29)]), HudPosition.RIGHT, 1000, Color.ROSE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    # Player Settings Header
    hudHeader([i for i in eventPlayer if eventPlayer.Menu_On], 
    "Player Settings", HudPosition.TOP, 0.1, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    # 0th Option - Change Hero
        ## Case: index off / option off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex != 0], 
    "Change Hero",HudPosition.TOP, 1, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 0],
    "■  Change Hero", HudPosition.TOP, 1, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)

    # 1st Option - Mercy Damage Boost
        ## Case: index off / option off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex != 1], 
    "Mercy Damage Boost", HudPosition.TOP, 2, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 1 and eventPlayer.MenuToggleMercy == "off"],
    "■  Mercy Damage Boost:  off", HudPosition.TOP, 2, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option on
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 1 and eventPlayer.MenuToggleMercy == "on "], 
    "■  Mercy Damage Boost:  on", HudPosition.TOP, 2, Color.GREEN, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    
    # 2nd Option - Ana Nano Boost
        ## Case: index off / option off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex != 2],
    "Nano Boost", HudPosition.TOP, 3, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 2 and eventPlayer.MenuToggleAna == "off"],
    "■  Nano Boost:  off", HudPosition.TOP, 3, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option on
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 2 and eventPlayer.MenuToggleAna == "on "],
    "■  Nano Boost:  on", HudPosition.TOP, 3, Color.GREEN, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    
    # 3rd Option - Kiriko Kitsune Rush
        ## Case: index off / option off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex != 3], 
    "Kitsune Rush", HudPosition.TOP, 4, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 3 and eventPlayer.MenuToggleKiriko == "off"], 
    "■  Kitsune Rush:  off", HudPosition.TOP, 4, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option on
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 3 and eventPlayer.MenuToggleKiriko == "on "], 
    "■  Kitsune Rush:  on", HudPosition.TOP, 4, Color.GREEN, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    
    # 4th Option - Friendly Speed
        ## Case: index off / option off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex != 4], 
    "Player Movement Speed", HudPosition.TOP, 5, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option =100
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 4 and eventPlayer.MenuToggleSelfSpeed == 100], 
    "■  Default Movement Speed".format(eventPlayer.MenuToggleSelfSpeed), HudPosition.TOP, 5, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option >100
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 4 and eventPlayer.MenuToggleSelfSpeed == 125], 
    "■  ←  Lucio Passive Speed  →".format(eventPlayer.MenuToggleSelfSpeed), HudPosition.TOP, 5, Color.LIME_GREEN, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option >100
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 4 and eventPlayer.MenuToggleSelfSpeed == 160], 
    "■  ←  Lucio Amp Speed  →".format(eventPlayer.MenuToggleSelfSpeed), HudPosition.TOP, 5, Color.GREEN, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)

    # 5th Option - Projectile Leading Guide
        ## Case: Index Off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex != 5], 
    "Projectile Guide", HudPosition.TOP, 6, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: Index On, setting off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 5 and eventPlayer.MenuToggleProjectile == "off"], 
    "■  Projectile Guide: Off", HudPosition.TOP, 6, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: Index On, setting on, projectile
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 5 and eventPlayer.MenuToggleProjectile != "off" and eventPlayer.ProjSpeed > 0], 
    "■  ←  {0}  →  {1}m/s".format(eventPlayer.ProjType, eventPlayer.ProjSpeed), HudPosition.TOP, 6, Color.GREEN, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: Index On, setting on, projectile
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 5 and eventPlayer.MenuToggleProjectile != "off" and eventPlayer.ProjSpeed == 0], 
    "■  ←  {0}  → N/A".format(eventPlayer.ProjType), HudPosition.TOP, 6, Color.RED, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)

    # 6th Option - Infinite Ammo
    ## Case: Index Off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex != 6], 
    "Infinite Ammo", HudPosition.TOP, 7, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: Index On, setting off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 6 and eventPlayer.MenuToggleInfAmmo == false], 
    "■  Infinite Ammo: off", HudPosition.TOP, 7, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: Index On, setting on
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 6 and eventPlayer.MenuToggleInfAmmo == true], 
    "■  Infinite Ammo: on", HudPosition.TOP, 7, Color.GREEN, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    
    # Bot Settings
    hudHeader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer == hostPlayer], 
    "Bot Settings".format(buttonString(Button.ABILITY_2)), HudPosition.TOP, 8, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)

    # 7th Option - Increment Bot Count
    ## Case: index off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex != 7 and eventPlayer == hostPlayer], 
    "Change Bot Count", HudPosition.TOP, 9, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    ## Case: index on / default
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 7], 
    "■  Bot Count: ←  {0}  →".format(NumberOfBots), HudPosition.TOP, 9, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)

    # 8th Option - Bot Movement Pattern
        ## Case: index off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex != 8 and eventPlayer == hostPlayer], 
    "Bot Movement Pattern", HudPosition.TOP, 10, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / seita
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 8 and DefaultMvmtType == 0], 
    "■  ←  Seita  → ", HudPosition.TOP, 10, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / seita long
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 8 and DefaultMvmtType == 1], 
    "■  ←  Seita /w Long Strafes  → ", HudPosition.TOP, 10, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / ad
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 8 and DefaultMvmtType == 2], 
    "■  ←  AD strafes  → ", HudPosition.TOP, 10, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / 8 dir
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 8 and DefaultMvmtType == 3], 
    "■  ←  8-Directional Strafes  → ", HudPosition.TOP, 10, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / none
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 8 and DefaultMvmtType == 4], 
    "■  ←  No Movement  → ", HudPosition.TOP, 10, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / wad
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 8 and DefaultMvmtType == 5], 
    "■  ←  Forward AD strafes (not recommended)  → ", HudPosition.TOP, 10, Color.BLACK, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / w
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 8 and DefaultMvmtType == 6], 
    "■  ←  Forward Movement (not recommended) → ", HudPosition.TOP, 10, Color.BLACK, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)

    # 9th Option - Bot Difficulty
        ## Case: index off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex != 9 and eventPlayer == hostPlayer], 
    "Bot Movement Difficulty", HudPosition.TOP, 11, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option custom
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 9 and MenuToggleBotDiff == 0], 
    "■  ←  custom  → ".format(BotsUseAbilities), HudPosition.TOP, 11, Color.SKY_BLUE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option very easy
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 9 and MenuToggleBotDiff == 1], 
    "■  ←  very easy  → ".format(BotsUseAbilities), HudPosition.TOP, 11, Color.GREEN, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option easy
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 9 and MenuToggleBotDiff == 2], 
    "■  ←  easy  → ".format(BotsUseAbilities), HudPosition.TOP, 11, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option medium
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 9 and MenuToggleBotDiff == 3], 
    "■  ←  medium  → ".format(BotsUseAbilities), HudPosition.TOP, 11, Color.ORANGE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option hard
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 9 and MenuToggleBotDiff == 4], 
    "■  ←  hard  → ".format(BotsUseAbilities), HudPosition.TOP, 11, Color.ROSE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option very hard
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 9 and MenuToggleBotDiff == 5], 
    "■  ←  very hard  → ".format(BotsUseAbilities), HudPosition.TOP, 11, Color.RED, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option extreme
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 9 and MenuToggleBotDiff == 6], 
    "■  ←  extreme  → ".format(BotsUseAbilities), HudPosition.TOP, 11, Color.BLACK, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)

    # 10th Option - Bot Speed
        ## Case: index off / option off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex != 10 and eventPlayer == hostPlayer], 
    "Bot Movement Speed", HudPosition.TOP, 12, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option 100
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and  eventPlayer.MenuIndex == 10 and MenuToggleBotSpeed == 100], 
    "■  Default Movement Speed".format(MenuToggleBotSpeed), HudPosition.TOP, 12, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option 125
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 10 and MenuToggleBotSpeed == 125], 
    "■  ←  Lucio Passive Speed  →".format(MenuToggleBotSpeed), HudPosition.TOP, 12, Color.LIME_GREEN, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option 130
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 10 and MenuToggleBotSpeed == 130], 
    "■  ←  Kitsune / Shout Speed  →".format(MenuToggleBotSpeed), HudPosition.TOP, 12, Color.ROSE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option 125
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 10 and MenuToggleBotSpeed == 160], 
    "■  ←  Lucio Amp Speed  →".format(MenuToggleBotSpeed), HudPosition.TOP, 12, Color.GREEN, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)

    # 1th Option - Bot Spawn Point
        ## Case: index off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex != 11 and eventPlayer == hostPlayer], 
    "Set Custom Spawn Point", HudPosition.TOP, 13, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    ## Case: index on / default
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 11 and MenuToggleBotSpawn == "default"], 
    "■ Custom Spawn Disabled", HudPosition.TOP, 13, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / default
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 11 and MenuToggleBotSpawn == "custom"], 
    "■  Custom Spawn Radius: ←  {0}  →".format(SpawnSize), HudPosition.TOP, 13, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)

    # 12th Option - Bot Heros
        ## Case: index off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex != 12 and eventPlayer == hostPlayer], 
    "Select Bot Heroes", HudPosition.TOP, 14, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 12], 
    "■  {0}  {1}".format(HeroList[eventPlayer.BotMenuIndex],HeroStatus[eventPlayer.BotMenuIndex]), HudPosition.TOP, 14, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Submenu Hero Select Off
    hudHeader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 12 and HeroStatus[eventPlayer.BotMenuIndex] == "off"], 
    "←  {0}  →".format(heroIcon(HeroList[eventPlayer.BotMenuIndex])), HudPosition.TOP, 15, Color.RED, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Submenu Hero Select On
    hudHeader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 12 and HeroStatus[eventPlayer.BotMenuIndex] == "on"], 
    "←  {0}  →".format(heroIcon(HeroList[eventPlayer.BotMenuIndex])), HudPosition.TOP, 15, Color.GREEN, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)

    # Header
    hudHeader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer == hostPlayer], 
    "Game Modes".format(buttonString(Button.ABILITY_2)), HudPosition.TOP, 16, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    # 13th Option - Pressure Mode
    ## Case: index off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex != 13 and eventPlayer == hostPlayer], 
    "Pressure mode", HudPosition.TOP, 17, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    ## Case: index on / mode off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 13 and MenuTogglePressureType == "off"], 
    "■  Pressure Mode: Off", HudPosition.TOP, 16, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    ## Case: index on / mode on
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 13 and MenuTogglePressureType != "off" and MenuTogglePressureDiff == "easy"], 
    "■  Bots  {0}  : ←  {1}  →".format(MenuTogglePressureType, MenuTogglePressureDiff), HudPosition.TOP, 17, Color.GREEN, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    ## Case: index on / mode on
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 13 and MenuTogglePressureType != "off" and MenuTogglePressureDiff == "medium"], 
    "■  Bots  {0}  : ←  {1}  →".format(MenuTogglePressureType, MenuTogglePressureDiff), HudPosition.TOP, 17, Color.ORANGE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    ## Case: index on / mode on
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 13 and MenuTogglePressureType != "off" and MenuTogglePressureDiff == "hard"], 
    "■  Bots  {0}  : ←  {1}  →".format(MenuTogglePressureType, MenuTogglePressureDiff), HudPosition.TOP, 17, Color.RED, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    ## Case: index on / mode on
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 13 and MenuTogglePressureType != "off" and MenuTogglePressureDiff == "aimbot"], 
    "■  Bots  {0}  : ←  {1}  →".format(MenuTogglePressureType, MenuTogglePressureDiff), HudPosition.TOP, 17, Color.BLACK, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    # 14th Option - Speed Mode
    ## Case: index off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex != 14 and eventPlayer == hostPlayer], 
    "Speed Mode", HudPosition.TOP, 18, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    ## Case: index on / mode off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 14 and MenuToggleSpeedMode == false], 
    "■  Speed Mode: Off", HudPosition.TOP, 18, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    ## Case: index on / mode on
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 14 and MenuToggleSpeedMode == true], 
    "■  Speed Increment: ←  {0}  →".format(SpeedModeIncrement), HudPosition.TOP, 18, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)

# Player Menu
def AllowInput():
    @Name "SUB: Allow Input"
    eventPlayer.allowButton(Button.PRIMARY_FIRE)
    eventPlayer.allowButton(Button.SECONDARY_FIRE)
    eventPlayer.allowButton(Button.JUMP)
    eventPlayer.allowButton(Button.ABILITY_1)
    eventPlayer.allowButton(Button.ABILITY_2)
    eventPlayer.allowButton(Button.ULTIMATE)
    eventPlayer.setMoveSpeed(eventPlayer.MenuToggleSelfSpeed)


rule "Menu Controls: Toggle Menu":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    
    if eventPlayer.Menu_On:
        # Set menu off and grant player access to controls. Done twice for some reason, I think because of a bug fix.
        eventPlayer.Menu_On = false
        AllowInput()
    else:
        eventPlayer.Menu_On = true


rule "Menu Controls: Toggle On Setup":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.Menu_On == true

    # Disable player inputs
    eventPlayer.disallowButton(Button.PRIMARY_FIRE)
    eventPlayer.disallowButton(Button.SECONDARY_FIRE)
    eventPlayer.disallowButton(Button.JUMP)
    eventPlayer.disallowButton(Button.ABILITY_1)
    eventPlayer.disallowButton(Button.ABILITY_2)
    eventPlayer.disallowButton(Button.ULTIMATE)
    eventPlayer.setMoveSpeed(0)


rule "Menu Controls: Toggle Off Setup":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.Menu_On == false

    # Enable Player inputs
    AllowInput()
    if eventPlayer.BotSettingsChanged == true:
        smallMessage(getAllPlayers(), "    Destroying Old Bots...")
        DestroyAllBots()
        wait(1)
        smallMessage(getAllPlayers(), "    Creating New Bots...")
        ActiveHeroList = random.shuffle(ActiveHeroList)
        CreateAllBots()
        eventPlayer.BotSettingsChanged = false


rule "Menu Controls: Up":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.Menu_On == true
    @Condition eventPlayer.getThrottle() == Vector.FORWARD
    
    if eventPlayer == hostPlayer:
        if eventPlayer.MenuIndex == 0:
            eventPlayer.MenuIndex = MenuSizeHost
        else:
            eventPlayer.MenuIndex -= 1
    else:
        if eventPlayer.MenuIndex == 0:
            eventPlayer.MenuIndex = MenuSizePlayer
        else:
            eventPlayer.MenuIndex -= 1


rule "Menu Controls: Down":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.Menu_On == true
    @Condition eventPlayer.getThrottle() == Vector.BACKWARD
    
    if eventPlayer == hostPlayer:
        if eventPlayer.MenuIndex == MenuSizeHost:
            eventPlayer.MenuIndex = 0
        else:
            eventPlayer.MenuIndex += 1
    else:
        if eventPlayer.MenuIndex == MenuSizePlayer:
            eventPlayer.MenuIndex = 0
        else:
            eventPlayer.MenuIndex += 1


rule "Menu Controls: Right":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.Menu_On == true
    @Condition eventPlayer.getThrottle() == Vector.RIGHT
    @Condition eventPlayer == hostPlayer
    
    if eventPlayer.MenuIndex == 4 and eventPlayer.MenuToggleSelfSpeed != 100:
        if eventPlayer.MenuToggleSelfSpeed == 125:
            eventPlayer.MenuToggleSelfSpeed = 160
        else:
            eventPlayer.MenuToggleSelfSpeed = 125
        MenuPlayerSpeed()
    elif eventPlayer.MenuIndex == 5 and eventPlayer.MenuToggleProjectile == "on":
        if eventPlayer.ProjType == "primary":
            eventPlayer.ProjType = "secondary"
        elif eventPlayer.ProjType == "secondary":
            eventPlayer.ProjType = "ability 1"
        elif eventPlayer.ProjType == "ability 1":
            eventPlayer.ProjType = "ability 2"
        elif eventPlayer.ProjType == "ability 2":
            eventPlayer.ProjType = "ultimate"
        elif eventPlayer.ProjType == "ultimate":
            eventPlayer.ProjType = "primary"
    elif eventPlayer.MenuIndex == 7:
        if NumberOfBots == 12:
            NumberOfBots = 1
        else:
            NumberOfBots += 1 
        MenuNumBots()
    elif eventPlayer.MenuIndex == 8:
        if DefaultMvmtType == 6:
            DefaultMvmtType = 0
        else:
            DefaultMvmtType += 1 
        MenuMvmtType()
    elif eventPlayer.MenuIndex == 9:
        if MenuToggleBotDiff == 6:
            MenuToggleBotDiff = 0
        else:
            MenuToggleBotDiff += 1
        MenuBotDiff()
    elif eventPlayer.MenuIndex == 10 and MenuToggleBotSpeed != 100:
        if MenuToggleBotSpeed == 125:
            MenuToggleBotSpeed = 130
        elif MenuToggleBotSpeed == 130:
            MenuToggleBotSpeed = 160
        elif MenuToggleBotSpeed == 160:
            MenuToggleBotSpeed = 125
        MenuBotSpeed()
    elif eventPlayer.MenuIndex == 11 and MenuToggleBotSpawn == "custom":
        SpawnSize += 1
        MenuCustRadius()
    elif eventPlayer.MenuIndex == 12:
        if eventPlayer.BotMenuIndex == 36:
            eventPlayer.BotMenuIndex = 0
        else:
            eventPlayer.BotMenuIndex += 1 
    elif eventPlayer.MenuIndex == 13 and MenuTogglePressureType != "off":
        if MenuTogglePressureDiff == "easy":
            MenuTogglePressureDiff = "medium"
            PressureDiff = 1.25
        elif MenuTogglePressureDiff == "medium":
            MenuTogglePressureDiff = "hard"
            PressureDiff = 0.50
        elif MenuTogglePressureDiff == "hard":
            MenuTogglePressureDiff = "aimbot"
            PressureDiff = 0.00
        elif MenuTogglePressureDiff == "aimbot":
            MenuTogglePressureDiff = "easy"
            PressureDiff = 1.75
    elif eventPlayer.MenuIndex == 14 and MenuToggleSpeedMode == true:
        if SpeedModeIncrement < 100:
            SpeedModeIncrement += 1


rule "Menu Controls: Left":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.Menu_On == true
    @Condition eventPlayer.getThrottle() == Vector.LEFT
    @Condition eventPlayer == hostPlayer

    if eventPlayer.MenuIndex == 4 and eventPlayer.MenuToggleSelfSpeed != 100:
        if eventPlayer.MenuToggleSelfSpeed == 125:
            eventPlayer.MenuToggleSelfSpeed = 160
        else:
            eventPlayer.MenuToggleSelfSpeed = 125
        MenuPlayerSpeed()
    elif eventPlayer.MenuIndex == 5 and eventPlayer.MenuToggleProjectile == "on":
        if eventPlayer.ProjType == "ultimate":
            eventPlayer.ProjType = "ability 2"
        elif eventPlayer.ProjType == "ability 2":
            eventPlayer.ProjType = "ability 1"
        elif eventPlayer.ProjType == "ability 1":
            eventPlayer.ProjType = "secondary"
        elif eventPlayer.ProjType == "secondary":
            eventPlayer.ProjType = "primary"
        elif eventPlayer.ProjType == "primary":
            eventPlayer.ProjType = "ultimate"
    elif eventPlayer.MenuIndex == 7:
        if NumberOfBots == 1:
            NumberOfBots = 12
        else:
            NumberOfBots -= 1
        MenuNumBots()
    elif eventPlayer.MenuIndex == 8:
        if DefaultMvmtType == 0:
            DefaultMvmtType = 6
        else:
            DefaultMvmtType -= 1
        MenuMvmtType()
    elif eventPlayer.MenuIndex == 9:
        if MenuToggleBotDiff == 0:
            MenuToggleBotDiff = 6
        else:
            MenuToggleBotDiff -= 1
        MenuBotDiff()
    elif eventPlayer.MenuIndex == 10 and MenuToggleBotSpeed != 100:
        if MenuToggleBotSpeed == 160:
            MenuToggleBotSpeed = 130
        elif MenuToggleBotSpeed == 130:
            MenuToggleBotSpeed = 125
        elif MenuToggleBotSpeed == 125:
            MenuToggleBotSpeed = 160
        MenuBotSpeed()
    elif eventPlayer.MenuIndex == 11 and MenuToggleBotSpawn == "custom" and SpawnSize > 0:
        SpawnSize -= 1
        MenuCustRadius()
    elif eventPlayer.MenuIndex == 12:
        if eventPlayer.BotMenuIndex == 0:
            eventPlayer.BotMenuIndex = 36
        else:
            eventPlayer.BotMenuIndex -= 1
    elif eventPlayer.MenuIndex == 13 and MenuTogglePressureType != "off":
        if MenuTogglePressureDiff == "aimbot":
            MenuTogglePressureDiff = "hard"
            PressureDiff = 0.50
        elif MenuTogglePressureDiff == "hard":
            MenuTogglePressureDiff = "medium"
            PressureDiff = 1.25
        elif MenuTogglePressureDiff == "medium":
            MenuTogglePressureDiff = "easy"
            PressureDiff = 1.75
        elif MenuTogglePressureDiff == "easy":
            MenuTogglePressureDiff = "aimbot"
            PressureDiff = 0.00
    elif eventPlayer.MenuIndex == 14 and MenuToggleSpeedMode == true:
        if SpeedModeIncrement > 0:
            SpeedModeIncrement -= 1

rule "Menu Control: Ability 2 / Primary Toggle":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.Menu_On == true
    @Condition (eventPlayer.isHoldingButton(Button.ABILITY_2) == true or eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) == true) == true
    
    if eventPlayer.MenuIndex == 0:
        MenuChangeHeroes()
    elif eventPlayer.MenuIndex == 1:
        MenuMercyToggle()
    elif eventPlayer.MenuIndex == 2:
        MenuAnaToggle()
    elif eventPlayer.MenuIndex == 3:
        MenuKirikoToggle()
    elif eventPlayer.MenuIndex == 4:
        if eventPlayer.MenuToggleSelfSpeed == 100:
            eventPlayer.MenuToggleSelfSpeed = 125
        else:
            eventPlayer.MenuToggleSelfSpeed = 100
        MenuPlayerSpeed()
    elif eventPlayer.MenuIndex == 5:
        if eventPlayer.MenuToggleProjectile == "off":
            eventPlayer.MenuToggleProjectile = "on"
            eventPlayer.ProjType = "primary"
        else:
            eventPlayer.MenuToggleProjectile = "off"
            eventPlayer.ProjType = "off"
        MenuProjGuide()
    elif eventPlayer.MenuIndex == 6:
        MenuInfAmmo()
    elif eventPlayer.MenuIndex == 7:
        if NumberOfBots < 12:
            NumberOfBots += 1
        else:
            NumberOfBots = 1
        MenuNumBots()
    elif eventPlayer.MenuIndex == 10:
        if MenuToggleBotSpeed == 100:
            MenuToggleBotSpeed = 125
        else:
            MenuToggleBotSpeed = 100
        MenuBotSpeed()
    elif eventPlayer.MenuIndex == 11:
        MenuCustSpawn()
    elif eventPlayer.MenuIndex == 12:
        MenuHeroSelect()
    elif eventPlayer.MenuIndex == 13:
        MenuPressureMode()
    elif eventPlayer.MenuIndex == 14:
        MenuSpeedMode()
    

def MenuChangeHeroes():
    @Name "SUB: MenuChangeHeroes"
    
    #reset menu variables
    eventPlayer.MenuToggleProjectile = "off"
    eventPlayer.ProjType = "off"
    destroyEffect(eventPlayer.ProjEffects[0])
    destroyEffect(eventPlayer.ProjEffects[1])
    destroyEffect(eventPlayer.BuffEffects[0])
    destroyEffect(eventPlayer.BuffEffects[1])
    eventPlayer.Menu_On = false
    eventPlayer.MenuToggleInfAmmo = false
    eventPlayer.setDamageDealt(100)
    eventPlayer.setDamageReceived(100)

    #Allow Player inputs
    AllowInput()

    # Reset Stats
    stopChasingVariable(eventPlayer.Timer)
    eventPlayer.Timer = 0
    eventPlayer.Kills = 0
    eventPlayer.Deaths = 0
    eventPlayer.DmgDealt = 0
    eventPlayer.DmgTaken = 0

    # Allow Player to select hero
    eventPlayer.PlayerHeroList = getAllHeroes()
    eventPlayer.PlayerHeroList.remove(eventPlayer.getCurrentHero())
    eventPlayer.setAllowedHeroes(eventPlayer.PlayerHeroList)
    Playerlist.remove(eventPlayer)
    wait(0.1)
    eventPlayer.setAllowedHeroes(getAllHeroes())     


def MenuMercyToggle():
    @Name "SUB: MenuMercyToggle"
    
    if eventPlayer.MenuToggleMercy == "on ":
        eventPlayer.MenuToggleMercy = "off"
        smallMessage(eventPlayer, "    Deactivating Mercy Damage Boost")
        destroyEffect(eventPlayer.BuffEffects[0])
        eventPlayer.BuffEffects[0] = null
        if eventPlayer.BuffEffects[1] == null:
            eventPlayer.setDamageDealt(100)
        else:
            eventPlayer.setDamageDealt(150)
    else:
        eventPlayer.MenuToggleMercy = "on "
        smallMessage(eventPlayer, "    Activating Mercy Damage Boost")
        createEffect(eventPlayer, Effect.MERCY_DAMAGE_BOOSTED, Color.TEAM_1, eventPlayer, 1, EffectReeval.VISIBILITY)
        eventPlayer.BuffEffects[0] = getLastCreatedEntity()
        if eventPlayer.BuffEffects[1] == null:
            eventPlayer.setDamageDealt(130)
        else:
            eventPlayer.setDamageDealt(180)


def MenuAnaToggle():
    @Name "SUB: MenuAnaToggle"

    if eventPlayer.MenuToggleAna == "on ":
        eventPlayer.MenuToggleAna = "off"
        smallMessage(eventPlayer, "    Deactivating Nano Boost")
        destroyEffect(eventPlayer.BuffEffects[1])
        eventPlayer.BuffEffects[1] = null
        if eventPlayer.BuffEffects[0] == null:
            eventPlayer.setDamageDealt(100)
        else:
            eventPlayer.setDamageDealt(130)
        eventPlayer.setDamageReceived(100)
    else:
        eventPlayer.MenuToggleAna = "on "
        smallMessage(eventPlayer, "    Activating Nano Boost. Damage Reduction may exceed cap if using DR abilities.")
        createEffect(eventPlayer, Effect.ANA_NANO_BOOSTED, Color.TEAM_1, eventPlayer, 1, EffectReeval.VISIBILITY)
        eventPlayer.BuffEffects[1] = getLastCreatedEntity()
        if eventPlayer.BuffEffects[0] == null:
            eventPlayer.setDamageDealt(150)
        else:
            eventPlayer.setDamageDealt(180)
        eventPlayer.setDamageReceived(50)


def MenuKirikoToggle():
    @Name "SUB: MenuKirikoToggle - Kiriko Toggle"
    
    if eventPlayer.MenuToggleKiriko == "on ":
        eventPlayer.MenuToggleKiriko = "off"
        smallMessage(eventPlayer, "    Deactivating Kitsune Rush")
        destroyDummy(Team.1, eventPlayer.getSlot() + 6)
    else:
        eventPlayer.MenuToggleKiriko = "on "
        smallMessage(eventPlayer, "    Activating Kitsune Rush")
        createDummy(Hero.KIRIKO, Team.1, eventPlayer.getSlot() + 6, vect(0, 1000, 0), vect(0, 0, 0))


rule "Assist Bot: Kiriko Kitsune Rush":
    @Event eachPlayer
    @Team 1
    @Hero kiriko
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isDummy() == true
    @Condition (getPlayersInSlot(eventPlayer.getSlot() - 6, Team.1)).isAlive() == true
    
    
    eventPlayer.setStatusEffect(null, Status.PHASED_OUT, 9999)
    eventPlayer.setInvisibility(Invis.ALL)
    eventPlayer.startFacing(directionTowards( eventPlayer.getEyePosition(), (getPlayersInSlot(eventPlayer.getSlot() - 6, Team.1)).getEyePosition()), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    eventPlayer.attachTo(getPlayersInSlot(eventPlayer.getSlot() - 6, Team.1), vect(0, 0, -2))
    eventPlayer.setUltCharge(100)
    wait(0.25)
    eventPlayer.forceButtonPress(Button.ULTIMATE)
    wait(12, Wait.ABORT_WHEN_FALSE)
    goto RULE_START


def MenuPlayerSpeed():
    @Name "SUB: MenuPlayerSpeed - Player Speed Toggle"
    
    smallMessage(eventPlayer, "    Activating {0}% Player Speed boost".format(eventPlayer.MenuToggleSelfSpeed))
    


def MenuProjGuide():
    @Name "SUB: MenuProjGuide (KJRR5P)"
    destroyEffect(eventPlayer.ProjEffects[0])
    destroyEffect(eventPlayer.ProjEffects[1])
    if eventPlayer.MenuToggleProjectile == "on":
        createBeam(eventPlayer, Beam.GRAPPLE, eventPlayer.AimSpot, eventPlayer.AimSpot + directionTowards(eventPlayer.AimSpot, eventPlayer.getEyePosition()) * (distance(eventPlayer.getEyePosition(), eventPlayer.AimSpot) / 2), Color.WHITE, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
        eventPlayer.ProjEffects[0] = getLastCreatedEntity()
        createEffect(eventPlayer, Effect.SPHERE, Color.YELLOW, eventPlayer.AimSpot, 0.15, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
        eventPlayer.ProjEffects[1] = getLastCreatedEntity()
        smallMessage(eventPlayer, "    Note: The projectile guide targets a heroes camera height, which is not necessarily their critbox.")
        if eventPlayer.CurrHero == Hero.SIGMA or eventPlayer.CurrHero == Hero.ZARYA or eventPlayer.CurrHero == Hero.ASHE or eventPlayer.CurrHero == Hero.JUNKRAT or eventPlayer.CurrHero == Hero.HANZO or eventPlayer.CurrHero == Hero.TORBJORN or eventPlayer.CurrHero == Hero.ANA or eventPlayer.CurrHero == Hero.BAPTISTE:
            smallMessage(eventPlayer, "    Bug: For arcing projectiles, the guide will underestimate aim height.")
            smallMessage(eventPlayer, "    Degree of error correlates directly with target distance and inversely with projectile speed.")
  
    
def MenuInfAmmo():
    @Name "SUB: MenuInfAmmo - Infinite Ammo Toggle"
    if eventPlayer.MenuToggleInfAmmo == true:
        eventPlayer.MenuToggleInfAmmo = false
        eventPlayer.setAmmo(0, eventPlayer.DefaultAmmo)
        eventPlayer.setMaxAmmo(0, eventPlayer.DefaultAmmo)
        eventPlayer.setAmmo(1, eventPlayer.DefaultAmmo)
        eventPlayer.setMaxAmmo(1, eventPlayer.DefaultAmmo)
        smallMessage(eventPlayer, "    Infinite ammo disabled.")
    else:
        eventPlayer.MenuToggleInfAmmo = true
        eventPlayer.setAmmo(0, 100000)
        eventPlayer.setMaxAmmo(0, 100000)
        eventPlayer.setAmmo(1, 100000)
        eventPlayer.setMaxAmmo(1, 100000)
        smallMessage(eventPlayer, "    Infinite ammo enabled.")


rule "Infinite Ammo: Ammo Refresh":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.MenuToggleInfAmmo == true
    @Condition eventPlayer.getAmmo(0) < 100

    eventPlayer.setAmmo(0, 100000)
    eventPlayer.setMaxAmmo(0, 100000)
    eventPlayer.setAmmo(1, 100000)
    eventPlayer.setMaxAmmo(1, 100000)


def MenuNumBots():
    @Name "SUB: MenuNumBots"

    eventPlayer.BotSettingsChanged = true
    smallMessage(eventPlayer, "    Bot count updated. Exit menu to refresh bots.".format(NumberOfBots))
        

def MenuMvmtType():
    @Name "SUB: MenuMvmtType"

    eventPlayer.BotSettingsChanged = true
    smallMessage(eventPlayer, "    Bot movement pattern changed. Exit menu to refresh bots.".format(SpawnSize))


def MenuBotDiff():
    @Name "SUB: MenuBotDiff"
    RandomJumping = DefaultRandJump
    RandomCrouching = DefaultRandCrouch
    CrouchMaxWait = DefaultCrouchMax
    JumpMinWait = DefaultJumpMin
    JumpMaxWait = DefaultJumpMax
    BotUncrouchMin = 0.25
    BotUncrouchMax = 0.65
    RandomStrafes = DefaultRandomStrafes
    if MenuToggleBotDiff == 0:
        smallMessage(getAllPlayers(), "    Long strafe / custom pattern: Bots change direction {0} - {1}s".format(DefaultMinWait, DefaultMaxWait))
        MoveMinWait = DefaultMinWait
        MoveMaxWait = DefaultMaxWait
    elif MenuToggleBotDiff == 1:
        smallMessage(getAllPlayers(), "    Very easy movement pattern: Bots change direction 1.5 - 3.5s")
        MoveMinWait = 1.5
        MoveMaxWait = 3.5
    elif MenuToggleBotDiff == 2:
        smallMessage(getAllPlayers(), "    Easy movement pattern: Bots change direction 0.75 - 1.75s")
        MoveMinWait = 0.75
        MoveMaxWait = 1.75
    elif MenuToggleBotDiff == 3:
        smallMessage(getAllPlayers(), "    Normal movement pattern: Bots change direction 0.4 - 0.8s")
        MoveMinWait = 0.4
        MoveMaxWait = 0.8
    elif MenuToggleBotDiff == 4:
        smallMessage(getAllPlayers(), "    Hard movement pattern: Bots change direction 0.25 - 0.45s")
        MoveMinWait = 0.25
        MoveMaxWait = 0.45
    elif MenuToggleBotDiff == 5:
        smallMessage(getAllPlayers(), "    Very Hard movement pattern: Bots change direction 0.1 - 0.2s")
        MoveMinWait = 0.10
        MoveMaxWait = 0.35
    elif MenuToggleBotDiff == 6:
        smallMessage(getAllPlayers(), "    Extreme movement pattern: 0.05 - 0.35s + random strafes + crouch spam")
        MoveMinWait = 0.05
        MoveMaxWait = 0.35
        CrouchMaxWait = 1
        BotUncrouchMin = 0.05
        BotUncrouchMax = 0.1
        JumpMinWait = 5
        JumpMaxWait = 15
        RandomStrafes = true


def MenuBotSpeed():
    @Name "SUB: MenuBotSpeed"
    
    wait(0.1)
    smallMessage(eventPlayer, "    {0}% bot speed".format(MenuToggleBotSpeed))
    getPlayers(Team.2).setMoveSpeed(MenuToggleBotSpeed)


def MenuCustSpawn():
    @Name "SUB: MenuCustSpawn"

    eventPlayer.BotSettingsChanged = true
    if MenuToggleBotSpawn == "default":
        MenuToggleBotSpawn = "custom"
        SpawnPt = eventPlayer.getPosition()
        MvmtRad1 = SpawnSize
        MvmtRad2 = SpawnSize/2
        smallMessage(eventPlayer, "    Spawn point set to {0}. Exit menu to refresh bots.".format(eventPlayer.getPosition()))
    else:
        MenuToggleBotSpawn = "default"
        MvmtRad1 = 19
        MvmtRad2 = 8.5
        SetMapSpawnPt()
        smallMessage(eventPlayer, "    Spawn set to default. Exit menu to refresh bots.")


def MenuCustRadius():
    @Name "SUB: MenuCustRadius"

    MvmtRad1 = SpawnSize
    MvmtRad2 = SpawnSize/2
    eventPlayer.BotSettingsChanged = true
    smallMessage(eventPlayer, "    Bot movement radius Set to {0}. Exit menu to refresh bots.".format(SpawnSize))


def MenuHeroSelect():
    @Name "SUB: MenuHeroSelect Bot Hero Pool Selection + Toggle"

    if HeroStatus[eventPlayer.BotMenuIndex] == "on":
        if EnabledHeroCount > 1:
            HeroStatus[eventPlayer.BotMenuIndex] = "off"
            ActiveHeroList.remove(HeroList[eventPlayer.BotMenuIndex])
            EnabledHeroCount -= 1
            eventPlayer.BotSettingsChanged = true
            smallMessage(eventPlayer, "    {0}  removed from the spawn pool. Exit menu to refresh bots.".format(HeroList[eventPlayer.BotMenuIndex]))
        else:
            smallMessage(eventPlayer, "    At least 1 bot hero must be enabled.")                
    else:
        HeroStatus[eventPlayer.BotMenuIndex] = "on"
        ActiveHeroList.append(HeroList[eventPlayer.BotMenuIndex])
        EnabledHeroCount += 1
        eventPlayer.BotSettingsChanged = true
        smallMessage(eventPlayer, "    {0}  added to the spawn pool. Exit menu to refresh bots.".format(HeroList[eventPlayer.BotMenuIndex]))

    
def MenuPressureMode():
    @Name "SUB: MenuPressureMode Pressure Mode Toggle"

    eventPlayer.Timer = 0
    eventPlayer.Kills = 0
    eventPlayer.Deaths = 0
    eventPlayer.DmgDealt = 0
    eventPlayer.DmgTaken = 0
    if MenuTogglePressureType == "off":
        MenuTogglePressureType = "killable"
    elif MenuTogglePressureType == "killable":
        MenuTogglePressureType = "unkillable"
    else:
        MenuTogglePressureType = "off"


def MenuSpeedMode():
    @Name "SUB: MenuSpeedMode Speed Mode Toggle"

    if MenuToggleSpeedMode == true:
        MenuToggleSpeedMode = false
        getPlayers(Team.2).setMoveSpeed(eventPlayer.MenuToggleSelfSpeed)
        smallMessage(eventPlayer, "    Speed Mode disabled")
    else:
        SpeedMulti = SpeedModeBase
        SpeedTimer = SpeedModeMaxTime
        getPlayers(Team.2).setMoveSpeed(SpeedModeBase)
        MenuToggleSpeedMode = true
        smallMessage(eventPlayer, "    Speed Mode enabled")
# Player Abiltity Modifiers
rule "Player Ability: Ultimate Refresh 1":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.isUsingUltimate() == true
    
    wait(0.1)
    eventPlayer.setUltCharge(100)

    
rule "Player Ability: Ultimate Refresh 2":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.isUsingUltimate() == false
    
    eventPlayer.setUltCharge(100)


rule "Player Ability: Heal if no damage in killable":
    @Event playerTookDamage
    @Team 1
    @Condition MenuTogglePressureType == "killable"
    @Condition HealAfterNoDmg == true
    
    wait(4, Wait.RESTART_WHEN_TRUE)
    eventPlayer.setHealth(eventPlayer.getMaxHealth())


rule "Player Ability: Heal if no damage default":
    @Event playerTookDamage
    @Team 1
    @Condition MenuTogglePressureType != "killable"
    
    wait(0.25)
    eventPlayer.setHealth(eventPlayer.getMaxHealth())


rule "Player Ability: Elimination refresh CDs":
    @Event playerDealtFinalBlow
    @Team 1
    @Condition ElimRefresh == true

    ResetPlayerResources()


rule "Player Ability: Punishment for Death":
    @Event playerTookDamage
    @Team 1
    @Condition MenuTogglePressureType == "killable"
    @Condition eventPlayer.getHealth() <= 1
    @Condition DeathPunishment == true
    
    eventPlayer.setStatusEffect(eventPlayer, Status.STUNNED, 0.5)
    if attacker.isAlive():
        attacker.setHealth(attacker.getMaxHealth())


rule "Player Ability: Elimination refresh CDs":
    @Event playerTookDamage
    @Team 1
    @Condition MenuTogglePressureType == "killable"
    @Condition eventPlayer.getHealth() <= 1
    @Condition ElimRefresh == true

    ResetPlayerResources()


rule "Player Ability: Grant Zarya Charge outside of pressure":
    @Event eachPlayer
    @Team 1
    @Hero zarya
    @Condition eventPlayer.isUsingAbility1() == true
    @Condition MenuTogglePressureType == "off"
    
    damage(eventPlayer, null, 200)
    eventPlayer.setHealth(eventPlayer.getMaxHealth())


rule "Player Ability: Grant Doom Power Punch outside of pressure":
    @Event eachPlayer
    @Team 1
    @Hero doomfist
    @Condition eventPlayer.isUsingAbility2() == true
    @Condition MenuTogglePressureType == "off"
    
    wait(0.75, Wait.ABORT_WHEN_FALSE)
    eventPlayer.startDoT(eventPlayer.LookTarget, 0.25, 800)
    wait(0.25, Wait.ABORT_WHEN_FALSE)
    eventPlayer.stopAllDoT()
    eventPlayer.setHealth(eventPlayer.getMaxHealth())


rule "Player Status Cleanse: Shatter":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.hasStatusEffect(Status.KNOCKED_DOWN)

    eventPlayer.clearStatusEffect(Status.KNOCKED_DOWN)


rule "Player Status Cleanse: Sleep":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.hasStatusEffect(Status.ASLEEP)

    eventPlayer.startDoT(eventPlayer,5,1)


def ResetPlayerResources():
    @Name "SUB: ResetPlayerResources"
    wait(0.1)
    eventPlayer.setHealth(eventPlayer.getMaxHealth())
    eventPlayer.setStatusEffect(eventPlayer, Status.INVINCIBLE,1)
    #eventPlayer.setAmmo(0,eventPlayer.getMaxAmmo(0))
    wait(1)
    eventPlayer.setAbilityCooldown(Button.PRIMARY_FIRE,0)
    eventPlayer.setAbilityCooldown(Button.SECONDARY_FIRE,0)
    eventPlayer.setAbilityCooldown(Button.ABILITY_1,0)
    eventPlayer.setAbilityCooldown(Button.ABILITY_2,0)
    

# Stat Trackers
rule "Stats: Timer Start":
    @Event playerDealtDamage
    @Team 1
    @Condition eventPlayer.Timer == 0
    
    chase(eventPlayer.Timer, 9999, rate=1, ChaseReeval.DESTINATION_AND_RATE)


rule "Stats: Elimination":
    @Event playerDealtFinalBlow
    @Team 1
    
    eventPlayer.Kills += 1


rule "Stats: Pressure Mode Damage Dealt":
    @Event playerDealtDamage
    @Team 1
    @Condition MenuTogglePressureType != "off"
    
    eventPlayer.DmgDealt += eventDamage


rule "Stats: Pressure Mode killable track deaths":
    @Event playerTookDamage
    @Team 1
    @Condition MenuTogglePressureType == "killable"
    @Condition eventPlayer.getHealth() <= 1
    
    eventPlayer.Deaths += 1
    if DeathPunishment == true:
        eventPlayer.setStatusEffect(eventPlayer, Status.STUNNED, 0.5)
        attacker.setHealth(attacker.getMaxHealth())
    bigMessage(eventPlayer, "you died.")
    eventPlayer.setHealth(eventPlayer.getMaxHealth())
    eventPlayer.setStatusEffect(eventPlayer, Status.INVINCIBLE, 1)


rule "Stats: Pressure Mode Damage Recieved":
    @Event playerTookDamage
    @Team 1
    @Condition MenuTogglePressureType!= "off"
    
    eventPlayer.DmgTaken += eventDamage


rule "Show Player Damage by BluJay (https://workshop.codes/7CZFC)":
    @Event eachPlayer
    @Team 2
    @Condition DamageNumbers == true
    
    createInWorldText(null if localPlayer.RecentDamageDealtToSlot[eventPlayer.getSlot()] == 0 or localPlayer == eventPlayer else localPlayer, round(localPlayer.RecentDamageDealtToSlot[eventPlayer.getSlot()]), updateEveryTick(vect(eventPlayer.getEyePosition().x, eventPlayer.getEyePosition().y + 1.4, eventPlayer.getEyePosition().z)), 2, Clip.NONE, WorldTextReeval.VISIBILITY_POSITION_AND_STRING, Color.WHITE, SpecVisibility.DEFAULT)


rule "Player Took Damage by BluJay (https://workshop.codes/7CZFC)":
    @Event playerTookDamage
    @Team 2
    @Condition DamageNumbers == true
    
    attacker.RecentDamageDealtToSlot[victim.getSlot()] += eventDamage
    wait(1.5, Wait.RESTART_WHEN_TRUE)
    attacker.RecentDamageDealtToSlot[victim.getSlot()] = 0


# Bot Creation / Deletion 
def CreateBot():
    @Name "SUB: BotGen: CreateBot"
    AssignNewHero()
    createDummy(ActiveHeroList[NextHero], Team.2, BotSlot, vect(0, 0, 0), vect(0, 0, 0))
    eventPlayer.LookOffset = vect(0,0,0)
    eventPlayer.AbilityAcc = 0


def DestroyBot():
    @Name "SUB: BotGen: DestroyBot"
    destroyDummy(Team.2, BotSlot)


def AssignNewHero():
    @Name "SUB: BotGen: AssignNewHero"

    LeastHeroInPlay = 99
    for Index in range(len(ActiveHeroList)):
        if LeastHeroInPlay >= getNumberOfHeroes(ActiveHeroList[Index], Team.2):
            LeastHeroInPlay = getNumberOfHeroes(ActiveHeroList[Index], Team.2)
            NextHero = Index


def CreateAllBots():
    @Name "SUB: BotGen: CreateAllBots"
    if NumberOfBots >= 1:
        BotSlot = 0
        CreateBot()
        wait(1)
    if NumberOfBots >= 2:
        BotSlot = 1
        CreateBot()
        wait(1)
    if NumberOfBots >= 3:
        BotSlot = 2
        CreateBot()
        wait(1)
    if NumberOfBots >= 4:
        BotSlot = 3
        CreateBot()
        wait(1)
    if NumberOfBots >= 5:
        BotSlot = 4
        CreateBot()
        wait(1)
    if NumberOfBots >= 6:
        BotSlot = 5
        CreateBot()
        wait(1)
    if NumberOfBots >= 7:
        BotSlot = 6
        CreateBot()
        wait(1)
    if NumberOfBots >= 8:
        BotSlot = 7
        CreateBot()
        wait(1)
    if NumberOfBots >= 9:
        BotSlot = 8
        CreateBot()
        wait(1)
    if NumberOfBots >= 10:
        BotSlot = 9
        CreateBot()
        wait(1)
    if NumberOfBots >= 11:
        BotSlot = 10
        CreateBot()
        wait(1)
    if NumberOfBots >= 12:
        BotSlot = 11
        CreateBot()
        wait(1)
    getPlayers(Team.2).setMoveSpeed(MenuToggleBotSpeed)


def DestroyAllBots():
    @Name "SUB: BotGen: DestroyAllBots"
    
    for Index in range(0,12,1):
        BotSlot = Index
        DestroyBot()


# Bot Lifecycle
def InitializeBotHero():
    @Name "SUB: InitalizeBotHero"

    eventPlayer.MvmtTypeLock = false
    eventPlayer.MvmtType = DefaultMvmtType
    eventPlayer.BotAbilitySignal = [false, false, false, false, false]
    eventPlayer.BotAbilityLock  = [false, false, false, false, false]
    eventPlayer.DisableJump = false
    eventPlayer.DisableCrouch = false
    eventPlayer.LtTime = 1
    eventPlayer.HealingFacing = false
    SetDefaultFacing()

    eventPlayer.CurrHero = eventPlayer.getCurrentHero()
    if eventPlayer.CurrHero == Hero.DVA:
        eventPlayer.startForcingName("ChoiHyoBin")
    elif eventPlayer.CurrHero == Hero.DOOMFIST:
        eventPlayer.startForcingName("Danteh")
    elif eventPlayer.CurrHero == Hero.JUNKER_QUEEN:
        eventPlayer.startForcingName("Hanbin")
    elif eventPlayer.CurrHero == Hero.ORISA:
        eventPlayer.startForcingName("Gator")
    elif eventPlayer.CurrHero == Hero.RAMATTRA:
        eventPlayer.startForcingName("Hawk")
    elif eventPlayer.CurrHero == Hero.REINHARDT:
        eventPlayer.startForcingName("Super")
    elif eventPlayer.CurrHero == Hero.ROADHOG:
        eventPlayer.startForcingName("Gesture")
    elif eventPlayer.CurrHero == Hero.SIGMA:
        eventPlayer.startForcingName("Void")
    elif eventPlayer.CurrHero == Hero.HAMMOND:
        eventPlayer.startForcingName("Ga9a")
    elif eventPlayer.CurrHero == Hero.WINSTON:
        eventPlayer.startForcingName("Fearless")
    elif eventPlayer.CurrHero == Hero.ZARYA:
        eventPlayer.startForcingName("Hotba")
        eventPlayer.BotAbilityLock[2] = 2
    elif eventPlayer.CurrHero == Hero.ASHE:
        eventPlayer.startForcingName("Shy")
    elif eventPlayer.CurrHero == Hero.BASTION:
        eventPlayer.startForcingName("Architect")
    elif eventPlayer.CurrHero == Hero.MCCREE:
        eventPlayer.startForcingName("Carpe")
    elif eventPlayer.CurrHero == Hero.ECHO:
        eventPlayer.startForcingName("Speedily")
        eventPlayer.DisableJump = true
        eventPlayer.DisableCrouch = true
    elif eventPlayer.CurrHero == Hero.GENJI:
        eventPlayer.startForcingName("Sp9rk1e")
        eventPlayer.DisableJump = true
    elif eventPlayer.CurrHero == Hero.HANZO:
        eventPlayer.startForcingName("Profit")
        eventPlayer.DisableJump = true
    elif eventPlayer.CurrHero == Hero.JUNKRAT:
        eventPlayer.startForcingName("Jake")
        eventPlayer.BotAbilityLock[2] = 2
    elif eventPlayer.CurrHero == Hero.MEI:
        eventPlayer.startForcingName("Pelican")
    elif eventPlayer.CurrHero == Hero.PHARAH:
        eventPlayer.startForcingName("Jinmu")
        eventPlayer.DisableCrouch = true
    elif eventPlayer.CurrHero == Hero.REAPER:
        eventPlayer.startForcingName("Doha")
    elif eventPlayer.CurrHero == Hero.SOJOURN:
        eventPlayer.startForcingName("Edison")
    elif eventPlayer.CurrHero == Hero.SOLDIER:
        eventPlayer.startForcingName("Fleta")
    elif eventPlayer.CurrHero == Hero.SOMBRA:
        eventPlayer.startForcingName("Lip")
    elif eventPlayer.CurrHero == Hero.SOMBRA: 
        eventPlayer.startForcingName("Happy")
    elif eventPlayer.CurrHero == Hero.TORBJORN:
        eventPlayer.startForcingName("Nero")
    elif eventPlayer.CurrHero == Hero.TRACER:
        eventPlayer.startForcingName("Proper")
        eventPlayer.BotAbilityLock[2] = 3
    elif eventPlayer.CurrHero == Hero.WIDOWMAKER:
        eventPlayer.startForcingName("ANS")
    elif eventPlayer.CurrHero == Hero.ANA:
        eventPlayer.startForcingName("Shu")
    elif eventPlayer.CurrHero == Hero.BAPTISTE:
        eventPlayer.startForcingName("Alarm")
        eventPlayer.DisableJump = true
        eventPlayer.DisableCrouch = true
    elif eventPlayer.CurrHero == Hero.BRIGITTE:
        eventPlayer.startForcingName("Skewed")
    elif eventPlayer.CurrHero == Hero.KIRIKO:
        eventPlayer.startForcingName("Fielder")
    elif eventPlayer.CurrHero == Hero.LIFEWEAVER:
        eventPlayer.startForcingName("Guxue")
    elif eventPlayer.CurrHero == Hero.LUCIO:
        eventPlayer.startForcingName("FunnyAstro")
    elif eventPlayer.CurrHero == Hero.MERCY:
        eventPlayer.startForcingName("Moth")
        eventPlayer.DisableJump = true
        eventPlayer.DisableCrouch = true
        eventPlayer.LtTime = 3
        SetHealingFacing()
    if eventPlayer.CurrHero == Hero.MOIRA:
        eventPlayer.startForcingName("Viol2t")
    if eventPlayer.CurrHero == Hero.ZENYATTA:
        eventPlayer.startForcingName("Jjonak")


rule "Bot Spawn: Setup":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true

    InitializeBotHero()
    wait()
    if DefaultMvmtType <= 1:
        eventPlayer.teleport(nearestWalkablePosition(eventPlayer.PathLoc[random.randint(0,7)]))
    else:
        eventPlayer.teleport(nearestWalkablePosition(vect(SpawnPt.X + random.uniform(-MvmtRad1,MvmtRad1), SpawnPt.Y, SpawnPt.Z + random.uniform(-MvmtRad1,MvmtRad1))))

rule "Bot Died: Swap Hero":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isDead() == true
    
    # Reset Movements and inputs
    ResetBotPathing()
    eventPlayer.stopForcingButton(Button.ABILITY_1)
    eventPlayer.stopForcingButton(Button.ABILITY_2)
    eventPlayer.stopForcingButton(Button.CROUCH)
    eventPlayer.stopForcingButton(Button.JUMP)
    eventPlayer.stopForcingButton(Button.MELEE)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.stopForcingButton(Button.RELOAD)
    eventPlayer.stopForcingButton(Button.ULTIMATE)
    wait(2)
    if getNumberOfLivingPlayers(Team.2) > 1:
        wait(2)
    # Select new hero
    if EnabledHeroCount != NumberOfBots:
        AssignNewHero()
        eventPlayer.startForcingHero(ActiveHeroList[NextHero])
        ActiveHeroList = random.shuffle(ActiveHeroList)
    # res player
    eventPlayer.resurrect()
    eventPlayer.setHealth(eventPlayer.getMaxHealth())
    # Fix for Dva spawning outisde of mech with the unintended side effect of giving players a way to practice canceling remech.
    if eventPlayer.getCurrentHero() == Hero.DVA and eventPlayer.getMaxHealth() == 150:
        wait(2)
        eventPlayer.forceButtonPress(Button.ULTIMATE)


# Bot Movement
rule "Bot Pathing: Initialization":
    @Event eachPlayer
    @Team 2

    eventPlayer.PathLoc = vect(0,0,0)
    eventPlayer.PathLoc.append(vect(0,0,0))
    eventPlayer.PathLoc.append(vect(0,0,0))
    eventPlayer.PathLoc.append(vect(0,0,0))
    eventPlayer.PathLoc.append(vect(0,0,0))
    eventPlayer.PathLoc.append(vect(0,0,0))
    eventPlayer.PathLoc.append(vect(0,0,0))
    eventPlayer.PathLoc.append(vect(0,0,0))
    eventPlayer.PathIndex = 0
    eventPlayer.PathIndex.append(1)
    eventPlayer.PathIndex.append(2)
    eventPlayer.PathIndex.append(3)
    eventPlayer.PathIndex.append(4)
    eventPlayer.PathIndex.append(5)
    eventPlayer.PathIndex.append(6)
    eventPlayer.PathIndex.append(7)
    ResetBotPathing()

    
rule "Bot Pathing: Movement Handler: Movement Type 0 Seita Pathing":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.MvmtType == 0

    ChangePathing()
    wait(random.uniform(MoveMinWait, MoveMaxWait), Wait.ABORT_WHEN_FALSE)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pathing: Movement Handler: Movement Type 1 Seita Pathing + rand long strafe":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.MvmtType == 1
    
    eventPlayer.BotMvmtRandomizer = random.randint(0, 9)
    if eventPlayer.BotMvmtRandomizer < 3:
        ChangePathing()
        wait(random.uniform(MoveMinWait + eventPlayer.BotMvmtRandomizer * 0.25, MoveMaxWait + eventPlayer.BotMvmtRandomizer * 0.5), Wait.ABORT_WHEN_FALSE)
    else:            
        ChangePathing()
        wait(random.uniform(MoveMinWait, MoveMaxWait), Wait.ABORT_WHEN_FALSE)

    if RULE_CONDITION:
        goto RULE_START



rule "Bot Pathing: Seita pathing - Too close to path destination":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getPosition(), eventPlayer.PathLoc[eventPlayer.PathDirection]) <= 1.5
    @Condition eventPlayer.MvmtType <= 1
    
    eventPlayer.PathIndex.remove(eventPlayer.PathDirection)
    eventPlayer.PathOldDirection = eventPlayer.PathDirection
    eventPlayer.PathDirection = random.choice(eventPlayer.PathIndex)
    eventPlayer.PathIndex.append(eventPlayer.PathOldDirection)
    eventPlayer.startThrottleInDirection(localVector(eventPlayer.PathLoc[eventPlayer.PathDirection], eventPlayer, Transform.ROTATION_AND_TRANSLATION), 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
    wait(1, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pathing: Movement Handler - MvmtType 2 AD Strafes":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.MvmtType == 2
    
    eventPlayer.BotMvmtRandomizer = random.randint(0, 1)
    if eventPlayer.BotMvmtRandomizer == 0:
        eventPlayer.startThrottleInDirection(Vector.LEFT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
    else:
        eventPlayer.startThrottleInDirection(Vector.RIGHT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
    wait(random.uniform(MoveMinWait, MoveMaxWait), Wait.ABORT_WHEN_FALSE)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pathing: Movement Handler - MvmtType 3 8-direction Strafes":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.MvmtType == 3

    eventPlayer.MvmtVar = distance(eventPlayer.LookTarget.getPosition(), eventPlayer.getPosition())
    if eventPlayer.MvmtVar < MvmtType3MinDist:
        eventPlayer.BotMvmtRandomizer = random.randint(0, 2)
        if eventPlayer.BotMvmtRandomizer == 0:
            eventPlayer.startThrottleInDirection(Vector.BACKWARD + Vector.LEFT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
        elif eventPlayer.BotMvmtRandomizer == 1:
            eventPlayer.startThrottleInDirection(Vector.BACKWARD + Vector.RIGHT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
        else:
            eventPlayer.startThrottleInDirection(Vector.BACKWARD, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.NONE)
    elif eventPlayer.MvmtVar > MvmtType3MaxDist:
        eventPlayer.BotMvmtRandomizer = random.randint(0, 2)
        if eventPlayer.BotMvmtRandomizer == 0:
            eventPlayer.startThrottleInDirection(Vector.FORWARD + Vector.LEFT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
        elif eventPlayer.BotMvmtRandomizer == 1:
            eventPlayer.startThrottleInDirection(Vector.FORWARD + Vector.RIGHT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
        else:
            eventPlayer.startThrottleInDirection(Vector.FORWARD, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.NONE)
    else:
        eventPlayer.BotMvmtRandomizer = random.randint(0, 7)
        if eventPlayer.BotMvmtRandomizer == 0:
            eventPlayer.startThrottleInDirection(Vector.LEFT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
        elif eventPlayer.BotMvmtRandomizer == 1:
            eventPlayer.startThrottleInDirection(Vector.RIGHT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
        elif eventPlayer.BotMvmtRandomizer == 2:
            eventPlayer.startThrottleInDirection(Vector.FORWARD + Vector.LEFT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
        elif eventPlayer.BotMvmtRandomizer == 3:
            eventPlayer.startThrottleInDirection(Vector.FORWARD + Vector.RIGHT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
        elif eventPlayer.BotMvmtRandomizer == 4:
            eventPlayer.startThrottleInDirection(Vector.FORWARD, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.NONE)
        elif eventPlayer.BotMvmtRandomizer == 5:
            eventPlayer.startThrottleInDirection(Vector.BACKWARD + Vector.LEFT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
        elif eventPlayer.BotMvmtRandomizer == 6:
            eventPlayer.startThrottleInDirection(Vector.BACKWARD + Vector.RIGHT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
        else:
            eventPlayer.startThrottleInDirection(Vector.BACKWARD, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.NONE)

    wait(random.uniform(MoveMinWait, MoveMaxWait), Wait.ABORT_WHEN_FALSE)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pathing: Movement Handler - MvmtType 4 no movement":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.MvmtType == 4

    eventPlayer.stopThrottleInDirection()
    wait(random.uniform(MoveMinWait, MoveMaxWait), Wait.ABORT_WHEN_FALSE)

    if RULE_CONDITION:
        goto RULE_START
        

rule "Bot Pathing: Movement Handler - MvmtType 5 Forward AD Strafes":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.MvmtType == 5

    eventPlayer.BotMvmtRandomizer = random.randint(0, 7)
    if eventPlayer.BotMvmtRandomizer > 5:
        eventPlayer.startThrottleInDirection(Vector.FORWARD, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.NONE)
    elif eventPlayer.BotMvmtRandomizer > 3:
        eventPlayer.startThrottleInDirection(Vector.FORWARD + Vector.LEFT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
    elif eventPlayer.BotMvmtRandomizer > 1:
        eventPlayer.startThrottleInDirection(Vector.FORWARD + Vector.RIGHT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
    elif eventPlayer.BotMvmtRandomizer == 1:
        eventPlayer.startThrottleInDirection(Vector.LEFT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
    else:
        eventPlayer.startThrottleInDirection(Vector.RIGHT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
    wait(random.uniform(MoveMinWait, MoveMaxWait), Wait.ABORT_WHEN_FALSE)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pathing: Movement Handler - MvmtType 6 Forward Only":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.MvmtType == 6

    eventPlayer.startThrottleInDirection(Vector.FORWARD, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.NONE)


rule "Bot Pathing: Randomized Strafes":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true
    @Condition RandomStrafes == true
    @Condition eventPlayer.MvmtTypeLock == false
    
    eventPlayer.MvmtType = DefaultMvmtType
    # 50% chance to switch strafe pattern every 5 seconds.
    eventPlayer.Randomizer = random.randint(0, 9)
    if eventPlayer.Randomizer < 5:
        eventPlayer.MvmtType = random.randint(0,3)
    wait(5, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Default Movement: Bot jumping":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true
    @Condition RandomJumping == true
    @Condition eventPlayer.DisableJump == false
    
    wait(random.uniform(JumpMinWait, JumpMaxWait), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.JUMP)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Default Movement: Bot crouching":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true
    @Condition RandomCrouching == true
    @Condition eventPlayer.DisableCrouch == false

    
    wait(random.uniform(0, CrouchMaxWait), Wait.ABORT_WHEN_FALSE)
    eventPlayer.startForcingButton(Button.CROUCH)
    wait(random.uniform(BotUncrouchMin, BotUncrouchMax))
    eventPlayer.stopForcingButton(Button.CROUCH)
    wait(0.35, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START

def ChangePathing():
    @Name "SUB: ChangePathing (Seita Pathing)"

    eventPlayer.PathIndex.remove(eventPlayer.PathDirection)
    eventPlayer.PathOldDirection = eventPlayer.PathDirection
    eventPlayer.PathDirection = random.choice(eventPlayer.PathIndex)
    eventPlayer.PathIndex.append(eventPlayer.PathOldDirection)
    eventPlayer.startThrottleInDirection(localVector(eventPlayer.PathLoc[eventPlayer.PathDirection], eventPlayer, Transform.ROTATION_AND_TRANSLATION), 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)


def ResetBotPathing():
    @Name "SUB: ResetBotPathing (Seita Pathing)"

    if eventPlayer.getSlot() == 3 or eventPlayer.getSlot() == 8:
        eventPlayer.PathLoc[0] = vect(-MvmtRad1 + SpawnPt.x, SpawnPt.y, -MvmtRad1 + SpawnPt.z)
        eventPlayer.PathLoc[1] = vect(-MvmtRad1 + SpawnPt.x, SpawnPt.y, -MvmtRad2 + SpawnPt.z)
        eventPlayer.PathLoc[2] = vect(-MvmtRad1 + SpawnPt.x, SpawnPt.y, 0 + SpawnPt.z)
        eventPlayer.PathLoc[3] = vect(-MvmtRad2 + SpawnPt.x, SpawnPt.y, 0 + SpawnPt.z)
        eventPlayer.PathLoc[4] = vect(0 + SpawnPt.x, SpawnPt.y, 0 + SpawnPt.z)
        eventPlayer.PathLoc[5] = vect(0 + SpawnPt.x, SpawnPt.y, -MvmtRad2 + SpawnPt.z)
        eventPlayer.PathLoc[6] = vect(0 + SpawnPt.x, SpawnPt.y, -MvmtRad1 + SpawnPt.z)
        eventPlayer.PathLoc[7] = vect(-MvmtRad2 + SpawnPt.x, SpawnPt.y, -MvmtRad1 + SpawnPt.z)
    elif eventPlayer.getSlot() == 4 or eventPlayer.getSlot() == 9:
        eventPlayer.PathLoc[0] = vect(MvmtRad1 + SpawnPt.x, SpawnPt.y, MvmtRad1 + SpawnPt.z)
        eventPlayer.PathLoc[1] = vect(MvmtRad1 + SpawnPt.x, SpawnPt.y, MvmtRad2 + SpawnPt.z)
        eventPlayer.PathLoc[2] = vect(MvmtRad1 + SpawnPt.x, SpawnPt.y, 0 + SpawnPt.z)
        eventPlayer.PathLoc[3] = vect(MvmtRad2 + SpawnPt.x, SpawnPt.y, 0 + SpawnPt.z)
        eventPlayer.PathLoc[4] = vect(0 + SpawnPt.x, SpawnPt.y, 0 + SpawnPt.z)
        eventPlayer.PathLoc[5] = vect(0 + SpawnPt.x, SpawnPt.y, MvmtRad2 + SpawnPt.z)
        eventPlayer.PathLoc[6] = vect(0 + SpawnPt.x, SpawnPt.y, MvmtRad1 + SpawnPt.z)
        eventPlayer.PathLoc[7] = vect(MvmtRad2 + SpawnPt.x, SpawnPt.y, MvmtRad1 + SpawnPt.z)
    elif eventPlayer.getSlot() == 5 or eventPlayer.getSlot() == 10:
        eventPlayer.PathLoc[0] = vect(-MvmtRad1 + SpawnPt.x, SpawnPt.y, MvmtRad1 + SpawnPt.z)
        eventPlayer.PathLoc[1] = vect(-MvmtRad1 + SpawnPt.x, SpawnPt.y, MvmtRad2 + SpawnPt.z)
        eventPlayer.PathLoc[2] = vect(-MvmtRad1 + SpawnPt.x, SpawnPt.y, 0 + SpawnPt.z)
        eventPlayer.PathLoc[3] = vect(-MvmtRad2 + SpawnPt.x, SpawnPt.y, 0 + SpawnPt.z)
        eventPlayer.PathLoc[4] = vect(0 + SpawnPt.x, SpawnPt.y, 0 + SpawnPt.z)
        eventPlayer.PathLoc[5] = vect(0 + SpawnPt.x, SpawnPt.y, MvmtRad2 + SpawnPt.z)
        eventPlayer.PathLoc[6] = vect(0 + SpawnPt.x, SpawnPt.y, MvmtRad1 + SpawnPt.z)
        eventPlayer.PathLoc[7] = vect(-MvmtRad2 + SpawnPt.x, SpawnPt.y, MvmtRad1 + SpawnPt.z)
    elif eventPlayer.getSlot() == 6 or eventPlayer.getSlot() == 11:
        eventPlayer.PathLoc[0] = vect(MvmtRad1 + SpawnPt.x, SpawnPt.y, -MvmtRad1 + SpawnPt.z)
        eventPlayer.PathLoc[1] = vect(MvmtRad1 + SpawnPt.x, SpawnPt.y, -MvmtRad2 + SpawnPt.z)
        eventPlayer.PathLoc[2] = vect(MvmtRad1 + SpawnPt.x, SpawnPt.y, 0 + SpawnPt.z)
        eventPlayer.PathLoc[3] = vect(MvmtRad2 + SpawnPt.x, SpawnPt.y, 0 + SpawnPt.z)
        eventPlayer.PathLoc[4] = vect(0 + SpawnPt.x, SpawnPt.y, 0 + SpawnPt.z)
        eventPlayer.PathLoc[5] = vect(0 + SpawnPt.x, SpawnPt.y, -MvmtRad2 + SpawnPt.z)
        eventPlayer.PathLoc[6] = vect(0 + SpawnPt.x, SpawnPt.y, -MvmtRad1 + SpawnPt.z)
        eventPlayer.PathLoc[7] = vect(MvmtRad2 + SpawnPt.x, SpawnPt.y, -MvmtRad1 + SpawnPt.z)
    else:
        eventPlayer.PathLoc[0] = vect(-MvmtRad1 + SpawnPt.x , 1, -MvmtRad1 + SpawnPt.z)
        eventPlayer.PathLoc[1] = vect(0 + SpawnPt.x, SpawnPt.y, -MvmtRad1 + SpawnPt.z)
        eventPlayer.PathLoc[2] = vect(MvmtRad1 + SpawnPt.x, SpawnPt.y, -MvmtRad1 + SpawnPt.z)
        eventPlayer.PathLoc[3] = vect(MvmtRad1 + SpawnPt.x, SpawnPt.y, 0 + SpawnPt.z)
        eventPlayer.PathLoc[4] = vect(MvmtRad1 + SpawnPt.x, SpawnPt.y, MvmtRad1 + SpawnPt.z)
        eventPlayer.PathLoc[5] = vect(0 + SpawnPt.x, SpawnPt.y, MvmtRad1 + SpawnPt.z)
        eventPlayer.PathLoc[6] = vect(-MvmtRad1 + SpawnPt.x, SpawnPt.y, MvmtRad1 + SpawnPt.z)
        eventPlayer.PathLoc[7] = vect(-MvmtRad1 + SpawnPt.x, SpawnPt.y, 0 + SpawnPt.z)


# Projectile Leading
rule "Set Proj Speed - Primary":
    @Event eachPlayer
    @Condition eventPlayer.ProjType == "primary"

    eventPlayer.CurrHero = eventPlayer.getCurrentHero()
    eventPlayer.ProjGrav = 0
    eventPlayer.ProjDelta = 0

    if eventPlayer.CurrHero == Hero.DOOMFIST:
        eventPlayer.ProjSpeed = 80
    elif eventPlayer.CurrHero == Hero.DVA:
        eventPlayer.ProjSpeed = 50
    elif eventPlayer.CurrHero == Hero.ORISA:
        eventPlayer.ProjSpeed = 90
    elif eventPlayer.CurrHero == Hero.RAMATTRA:
        eventPlayer.ProjSpeed = 80
    elif eventPlayer.CurrHero == Hero.ROADHOG:
        eventPlayer.ProjSpeed = 80
    elif eventPlayer.CurrHero == Hero.SIGMA:
        eventPlayer.ProjSpeed = 50
        eventPlayer.ProjGrav = 5.95
    elif eventPlayer.CurrHero == Hero.ECHO:
        eventPlayer.ProjSpeed = 75
    elif eventPlayer.CurrHero == Hero.GENJI:
        eventPlayer.ProjSpeed = 60
    elif eventPlayer.CurrHero == Hero.HANZO:
        eventPlayer.ProjSpeed = 110
        eventPlayer.ProjGrav = 9.84
    elif eventPlayer.CurrHero == Hero.JUNKRAT:
        eventPlayer.ProjSpeed = 25
        eventPlayer.ProjGrav = 12.35
        eventPlayer.ProjDelta = 0.075
    elif eventPlayer.CurrHero == Hero.MEI:
        eventPlayer.ProjSpeed = 20
    elif eventPlayer.CurrHero == Hero.PHARAH:
        eventPlayer.ProjSpeed = 35
    elif eventPlayer.CurrHero == Hero.SOJOURN:
        eventPlayer.ProjSpeed = 160
    elif eventPlayer.CurrHero == Hero.TORBJORN:
        eventPlayer.ProjSpeed = 70
        eventPlayer.ProjGrav = 9.84
        #eventPlayer.ProjDelta = 0.015
    elif eventPlayer.CurrHero == Hero.ANA:
        eventPlayer.ProjSpeed = 125
    elif eventPlayer.CurrHero == Hero.KIRIKO:
        eventPlayer.ProjSpeed = 20
    elif eventPlayer.CurrHero == Hero.LIFEWEAVER:
        eventPlayer.ProjSpeed = 70
    elif eventPlayer.CurrHero == Hero.LUCIO:
        eventPlayer.ProjSpeed = 50
    elif eventPlayer.CurrHero == Hero.MERCY:
        eventPlayer.ProjSpeed = 50
    elif eventPlayer.CurrHero == Hero.ZENYATTA:
        eventPlayer.ProjSpeed = 90
    else:
        eventPlayer.ProjSpeed = 0


rule "Set Proj Speed - Secondary":
    @Event eachPlayer
    @Condition eventPlayer.ProjType == "secondary"

    eventPlayer.CurrHero = eventPlayer.getCurrentHero()

    eventPlayer.ProjGrav = 0
    eventPlayer.ProjDelta = 0

    if eventPlayer.CurrHero == Hero.DOOMFIST:
        eventPlayer.ProjSpeed = 44
    elif eventPlayer.CurrHero == Hero.JUNKER_QUEEN:
        eventPlayer.ProjSpeed = 30
        eventPlayer.ProjGrav = 9.84
    elif eventPlayer.CurrHero == Hero.ORISA:
        eventPlayer.ProjSpeed = 70
        eventPlayer.ProjGrav = 9.84
    elif eventPlayer.CurrHero == Hero.ROADHOG:
        eventPlayer.ProjSpeed = 80
    elif eventPlayer.CurrHero == Hero.SIGMA:
        eventPlayer.ProjSpeed = 16.5
    elif eventPlayer.CurrHero == Hero.ZARYA:
        eventPlayer.ProjSpeed = 25
        eventPlayer.ProjGrav = 9.84
        eventPlayer.ProjDelta = 0.1
    elif eventPlayer.CurrHero == Hero.BASTION:
        eventPlayer.ProjSpeed = 40
        eventPlayer.ProjGrav = 9.84
    elif eventPlayer.CurrHero == Hero.ECHO:
        eventPlayer.ProjSpeed = 50
    elif eventPlayer.CurrHero == Hero.GENJI:
        eventPlayer.ProjSpeed = 60
    elif eventPlayer.CurrHero == Hero.TORBJORN:
        eventPlayer.ProjSpeed = 120
    elif eventPlayer.CurrHero == Hero.MEI:
        eventPlayer.ProjSpeed = 115
    elif eventPlayer.CurrHero == Hero.SOLDIER:
        eventPlayer.ProjSpeed = 50
    elif eventPlayer.CurrHero == Hero.SYMMETRA:
        eventPlayer.ProjSpeed = 50
    elif eventPlayer.CurrHero == Hero.BAPTISTE:
        eventPlayer.ProjSpeed = 60
        eventPlayer.ProjGrav = 20.1
        #eventPlayer.ProjDelta = 0.007
    elif eventPlayer.CurrHero == Hero.LIFEWEAVER:
        eventPlayer.ProjSpeed = 40
    elif eventPlayer.CurrHero == Hero.KIRIKO:
        eventPlayer.ProjSpeed = 90
    elif eventPlayer.CurrHero == Hero.ZENYATTA:
        eventPlayer.ProjSpeed = 90
    else:
        eventPlayer.ProjSpeed = 0


rule "Set Proj Speed - Ability 1":
    @Event eachPlayer
    @Condition eventPlayer.ProjType == "ability 1"

    eventPlayer.CurrHero = eventPlayer.getCurrentHero()
    eventPlayer.ProjGrav = 0
    eventPlayer.ProjDelta = 0

    if eventPlayer.CurrHero == Hero.ROADHOG:
        eventPlayer.ProjSpeed = 40
    elif eventPlayer.CurrHero == Hero.GENJI:
        eventPlayer.ProjSpeed = 50
    elif eventPlayer.CurrHero == Hero.JUNKRAT:
        eventPlayer.ProjSpeed = 25   
        eventPlayer.ProjGrav = 20.30
        eventPlayer.ProjDelta = 0.09
    elif eventPlayer.CurrHero == Hero.SYMMETRA:
        eventPlayer.ProjSpeed = 20
    elif eventPlayer.CurrHero == Hero.TORBJORN:
        eventPlayer.ProjSpeed = 17   
        eventPlayer.ProjGrav = 20
    elif eventPlayer.CurrHero == Hero.ANA:
        eventPlayer.ProjSpeed = 60   
    elif eventPlayer.CurrHero == Hero.BRIGITTE:
        eventPlayer.ProjSpeed = 80   
    elif eventPlayer.CurrHero == Hero.ZENYATTA:
        eventPlayer.ProjSpeed = 90
    else:
        eventPlayer.ProjSpeed = 0


rule "Set Proj Speed - Ability 2":
    @Event eachPlayer
    @Condition eventPlayer.ProjType == "ability 2"

    eventPlayer.CurrHero = eventPlayer.getCurrentHero()
    eventPlayer.ProjGrav = 0
    eventPlayer.ProjDelta = 0

    if eventPlayer.CurrHero == Hero.DVA:
        eventPlayer.ProjSpeed = 40
    elif eventPlayer.CurrHero == Hero.RAMATTRA:
        eventPlayer.ProjSpeed = 30
        eventPlayer.ProjGrav = 9.84
    elif eventPlayer.CurrHero == Hero.REINHARDT:
        eventPlayer.ProjSpeed = 25
    elif eventPlayer.CurrHero == Hero.SIGMA:
        eventPlayer.ProjSpeed = 37.5
        eventPlayer.ProjGrav = 18.35
        #eventPlayer.ProjDelta = 0.1
    elif eventPlayer.CurrHero == Hero.ASHE:
        eventPlayer.ProjSpeed = 25
        eventPlayer.ProjGrav = 8.03
        #eventPlayer.ProjDelta = 0.07
    elif eventPlayer.CurrHero == Hero.MCCREE:
        eventPlayer.ProjSpeed = 20
        eventPlayer.ProjGrav = 9.84
    elif eventPlayer.CurrHero == Hero.HANZO:
        eventPlayer.ProjSpeed = 110
        eventPlayer.ProjGrav = 9.84
    elif eventPlayer.CurrHero == Hero.JUNKRAT:
        eventPlayer.ProjSpeed = 17
        eventPlayer.ProjGrav = 20.20
        eventPlayer.ProjDelta = 0.095
    elif eventPlayer.CurrHero == Hero.PHARAH:
        eventPlayer.ProjSpeed = 60
    elif eventPlayer.CurrHero == Hero.SOJOURN:
        eventPlayer.ProjSpeed = 30
    elif eventPlayer.CurrHero == Hero.SOMBRA:
        eventPlayer.ProjSpeed = 25
        eventPlayer.ProjGrav = 20.20
        #eventPlayer.ProjDelta = 0.09
    elif eventPlayer.CurrHero == Hero.TORBJORN:
        eventPlayer.ProjSpeed = 40
    elif eventPlayer.CurrHero == Hero.WIDOWMAKER:
        eventPlayer.ProjSpeed = 20
        eventPlayer.ProjGrav = 9.84
    elif eventPlayer.CurrHero == Hero.ANA:
        eventPlayer.ProjSpeed = 30
        eventPlayer.ProjGrav = 9.84
    elif eventPlayer.CurrHero == Hero.BAPTISTE:
        eventPlayer.ProjSpeed = 60
        eventPlayer.ProjGrav = 20.10
        #eventPlayer.ProjDelta = 0.007
    elif eventPlayer.CurrHero == Hero.KIRIKO:
        eventPlayer.ProjSpeed = 35
    elif eventPlayer.CurrHero == Hero.MOIRA:
        eventPlayer.ProjSpeed = 20
    elif eventPlayer.CurrHero == Hero.ZENYATTA:
        eventPlayer.ProjSpeed = 90
    else:
        eventPlayer.ProjSpeed = 0

rule "Set Proj Speed - ultimate":
    @Event eachPlayer
    @Condition eventPlayer.ProjType == "ultimate"

    eventPlayer.CurrHero = eventPlayer.getCurrentHero()
    eventPlayer.ProjGrav = 0
    eventPlayer.ProjDelta = 0

    if eventPlayer.CurrHero == Hero.DVA:
        eventPlayer.ProjSpeed = 12
        eventPlayer.ProjGrav = 9.83
    elif eventPlayer.CurrHero == Hero.ZARYA:
        eventPlayer.ProjSpeed = 25
        eventPlayer.ProjGrav = 9.84
        eventPlayer.ProjDelta = 0.1
    elif eventPlayer.CurrHero == Hero.ASHE:
        eventPlayer.ProjSpeed = 15
    elif eventPlayer.CurrHero == Hero.HANZO:
        eventPlayer.ProjSpeed = 20
    elif eventPlayer.CurrHero == Hero.MEI:
        eventPlayer.ProjSpeed = 20
        eventPlayer.ProjGrav = 9.84
        #eventPlayer.ProjDelta = 0.09
    elif eventPlayer.CurrHero == Hero.PHARAH:
        eventPlayer.ProjSpeed = 45
    elif eventPlayer.CurrHero == Hero.TORBJORN:
        eventPlayer.ProjSpeed = 40
        eventPlayer.ProjGrav = 30.05
    elif eventPlayer.CurrHero == Hero.TRACER:
        eventPlayer.ProjSpeed = 15
        eventPlayer.ProjGrav = 30.80
        eventPlayer.ProjDelta = 0.19
    elif eventPlayer.CurrHero == Hero.MERCY:
        eventPlayer.ProjSpeed = 100
    else:
        eventPlayer.ProjSpeed = 0

        
rule "Calculate Player Projectile Trajectory":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.isAlive()
    @Condition eventPlayer.MenuToggleProjectile == "on"
    @Condition eventPlayer.ProjSpeed != 0

    if eventPlayer.ProjGrav == 0:
        CalculateProjectileLead()
    else:
        CalculateArcProjectileLead()
    wait()
    if RULE_CONDITION:
        goto RULE_START


rule "Calculate Bot Projectile Trajectory":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive()
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.ProjSpeed != 0

    if eventPlayer.ProjGrav == 0:
        CalculateProjectileLead()
    else:
        CalculateArcProjectileLead()
    wait()
    if RULE_CONDITION:
        goto RULE_START


# Bot Facing
rule "Set Look Target":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive()

    eventPlayer.OldLookTarget = eventPlayer.LookTarget
    if eventPlayer.HealingFacing == true:
        eventPlayer.LookTarget = sorted([player for player in getLivingPlayers(Team.2) if distance(eventPlayer.getEyePosition(), player.getEyePosition()) > 2], lambda i: distance(eventPlayer.getEyePosition(), i.getEyePosition()))[0]
    else:
        eventPlayer.LookTarget = sorted(Playerlist, lambda player: distance(eventPlayer.getEyePosition(), player.getEyePosition()))[0]
    if eventPlayer.LookTarget == null:
        eventPlayer.LookTarget = eventPlayer.OldLookTarget
    wait(eventPlayer.LtTime)

    if RULE_CONDITION:
        goto RULE_START

def SetDefaultFacing():
    @Name "SUB: SetDefaultFacing"

    eventPlayer.HealingFacing = false
    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition() + eventPlayer.LookOffset), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)


def SetProjectileFacing():
    @Name "SUB: SetProjectileFacing"

    eventPlayer.HealingFacing = false
    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), eventPlayer.AimSpot + eventPlayer.LookOffset), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)


def SetHealingFacing():
    @Name "SUB: SetHealingFacing"

    eventPlayer.HealingFacing = true
    eventPlayer.LookTarget = sorted([player for player in getLivingPlayers(Team.2) if distance(eventPlayer.getEyePosition(), player.getEyePosition()) > eventPlayer.HealingFacing], lambda i: distance(eventPlayer.getEyePosition(), i.getEyePosition()))[0]
    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)


def SetFloorFacing():
    @Name "SUB: SetFloorFacing"

    eventPlayer.HealingFacing = false
    eventPlayer.startFacing(vect(0,-100,0), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)

    
def CalculateProjectileLead():
    
    @Name "SUB: CalculateProjectileLead (KJRR5P)"

    eventPlayer.DeltaXZ = eventPlayer.LookTarget.getEyePosition() - eventPlayer.getEyePosition()
    eventPlayer.ProjVarA = dotProduct(eventPlayer.LookTarget.getVelocity(), eventPlayer.LookTarget.getVelocity()) - eventPlayer.ProjSpeed ** 2
    eventPlayer.ProjVarB = -2 * dotProduct(eventPlayer.LookTarget.getVelocity(), eventPlayer.DeltaXZ)
    eventPlayer.ProjVarC = dotProduct(eventPlayer.DeltaXZ, eventPlayer.DeltaXZ)
    eventPlayer.ProjVarD = eventPlayer.ProjVarB * -1 / (2 * eventPlayer.ProjVarA)
    eventPlayer.ProjVarE = (sqrt(eventPlayer.ProjVarB ** 2 - 4 * eventPlayer.ProjVarA * eventPlayer.ProjVarC)) / (2 * eventPlayer.ProjVarA)
    eventPlayer.ProjVarT1 = eventPlayer.ProjVarD - eventPlayer.ProjVarE
    eventPlayer.ProjVarT2 = eventPlayer.ProjVarD + eventPlayer.ProjVarE
    if eventPlayer.ProjVarT1 > eventPlayer.ProjVarT2 and eventPlayer.ProjVarT2 > 0:
        eventPlayer.ProjVarT = eventPlayer.ProjVarT2
    else:
        eventPlayer.ProjVarT = eventPlayer.ProjVarT1
    eventPlayer.AimSpot = eventPlayer.LookTarget.getEyePosition() + eventPlayer.LookTarget.getVelocity() * eventPlayer.ProjVarT


def CalculateArcProjectileLead():
    
    @Name "SUB: CalculateArcProjectileLead (KJRR5P)"

    eventPlayer.ProjVarA = eventPlayer.ProjSpeed ** 2 - dotProduct(eventPlayer.LookTarget.getVelocity(), eventPlayer.LookTarget.getVelocity())
    eventPlayer.ProjVarB = dotProduct(eventPlayer.LookTarget.getVelocity(), eventPlayer.LookTarget.getEyePosition() - eventPlayer.getEyePosition())
    eventPlayer.ProjVarC = dotProduct(eventPlayer.LookTarget.getEyePosition() - eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition() - eventPlayer.getEyePosition())
    eventPlayer.ProjVarD = eventPlayer.ProjVarB ** 2 + eventPlayer.ProjVarA * eventPlayer.ProjVarC
    if eventPlayer.ProjVarD >= 0:
        eventPlayer.ProjVarT = (eventPlayer.ProjVarB + sqrt(eventPlayer.ProjVarD)) / eventPlayer.ProjVarA
        if eventPlayer.ProjVarT < 0:
            eventPlayer.ProjVarT = 0
    eventPlayer.AimSpot = eventPlayer.LookTarget.getEyePosition() + eventPlayer.LookTarget.getVelocity() * eventPlayer.ProjVarT + 0.5 * vect(0, (216*(eventPlayer.ProjGrav/9.84))/eventPlayer.ProjSpeed, 0) * eventPlayer.ProjVarT ** 2
    # This doesn't accurately adjust for delta vector, it just kinda works for most distances, errors are really noticeable long range. It seems to overestimate at close range and underestimate at long range.
    if eventPlayer.ProjDelta != 0:
        eventPlayer.DeltaXZ = distance(eventPlayer.LookTarget.getEyePosition(), eventPlayer.getEyePosition())
        eventPlayer.AimSpot = eventPlayer.AimSpot - vect(0,eventPlayer.ProjDelta*eventPlayer.DeltaXZ,0)


# Bot Pressure
rule "Bot Pressure: Set Pressure Bot":
    @Event eachPlayer
    @Team 1
    @Condition MenuTogglePressureType != "off"
    @Condition eventPlayer.Menu_On == false

    PressureBot = eventPlayer.getPlayerClosestToReticle(Team.2)
    if PressureBot.getCurrentHero() == Hero.MERCY:
        PressureBot = PressureBot.LookTarget
    wait(1)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pressure: Toggle Off":
    @Event eachPlayer
    @Team 1
    @Condition MenuTogglePressureType == "off"

    PressureBot.ApplyPressure = false
    PressureBot = null
    


rule "Bot Pressure: Set Pressure On":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer == PressureBot
    @Condition eventPlayer.getCurrentHero() != Hero.MERCY


    eventPlayer.ApplyPressure = true


rule "Bot Pressure: Set Pressure Off":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer != PressureBot
    @Condition eventPlayer.getCurrentHero() != Hero.MERCY


    eventPlayer.ApplyPressure = false
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.stopForcingButton(Button.ABILITY_1)
    eventPlayer.stopForcingButton(Button.ABILITY_2)
    eventPlayer.stopForcingButton(Button.ULTIMATE)
    eventPlayer.LookOffset = vect(0,0,0)
    eventPlayer.AbilityAcc = 0
    eventPlayer.ProjType = "off"
    SetDefaultFacing()
    

rule "Bot Pressure: Look Offset":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true

    #chase(eventPlayer.LookOffset, PressureDiff * vect(eventPlayer.AbilityAcc * random.uniform(-1, 1), random.uniform(-0.25, 1), eventPlayer.AbilityAcc * random.uniform(-1, 1)), duration=5, ChaseReeval.DESTINATION_AND_DURATION)
    eventPlayer.LookOffset = PressureDiff * eventPlayer.AbilityAcc * vect( random.uniform(-0.5, 0.5), random.uniform(-0.125, 0.125), random.uniform(-0.5, 0.5))
    wait(0.25)
    if RULE_CONDITION:
        goto RULE_START 

rule "Bot Pressure: Unkillable Bot Enable":
    @Event eachPlayer
    @Team 2
    @Condition MenuTogglePressureType == "unkillable"
    
    eventPlayer.setStatusEffect(eventPlayer, Status.UNKILLABLE, 9999)


rule "Bot Pressure: Unkillable Bot Disable":
    @Event eachPlayer
    @Team 2
    @Condition MenuTogglePressureType != "unkillable"
    
    eventPlayer.clearStatusEffect(Status.UNKILLABLE)


rule "Bot Pressure: Unkillable Bot Took Damage":
    @Event playerTookDamage
    @Team 2
    @Condition MenuTogglePressureType == "unkillable"
    
    wait(0.25)
    eventPlayer.setHealth(eventPlayer.getMaxHealth())


# Speed Mode
rule "Speed Mode: Kill Action (JPYHG)":
    @Event playerDealtFinalBlow
    @Team 1
    @Condition MenuToggleSpeedMode == true
    
    SpeedMulti += SpeedModeIncrement
    SpeedModeAction()


rule "Speed Mode: Timer Action (JPYHG)":
    @Condition SpeedTimer == 0
    @Condition MenuToggleSpeedMode == true

    if SpeedMulti > SpeedModeBase:
        if SpeedModeDecrement == 0:
            SpeedMulti -= SpeedModeIncrement
        else:
            SpeedMulti -= SpeedModeDecrement
    else:
        SpeedMulti = SpeedModeBase
    SpeedModeAction()
    

rule "Speed Mode: Hack Lucio (JPYHG)":
    @Event eachPlayer
    @Team 2
    @Hero lucio
    @Condition eventPlayer.isAlive() == true
    @Condition MenuToggleSpeedMode == true

    eventPlayer.setStatusEffect(eventPlayer,Status.HACKED,9999)


rule "Speed Mode: Clear Hack Lucio (JPYHG)":
    @Event eachPlayer
    @Team 2
    @Hero lucio
    @Condition eventPlayer.isDead() == true
    @Condition eventPlayer.hasStatusEffect(Status.HACKED)

    eventPlayer.clearStatusEffect(Status.HACKED)


def SpeedModeAction():
    @Name "SUB: SpeedModeAction (JPYHG)"
    
    getPlayers(Team.2).setMoveSpeed(SpeedMulti)
    SpeedTimer = SpeedModeMaxTime
    chase(SpeedTimer, 0, rate=1, ChaseReeval.NONE)


# Player Ability Tracking
rule "Player Ability Usage Tracker - Primary":
    @Event eachPlayer
    @Team 1
    @Condition BotsReact == true
    @Condition eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) == true
    @Condition eventPlayer.PlayerAbilityLock == 0
    
    eventPlayer.PlayerAbilityLock = 1
    eventPlayer.PlayerReactTime   = eventPlayer.PlayerReactMatrix[0] * BotReactivity
    eventPlayer.PlayerUsedEatCD   = eventPlayer.PlayerEatCDMatrix[0] * BotReactivity
    eventPlayer.PlayerUsedBlockCD = eventPlayer.PlayerBlockCDMatrix[0] * BotReactivity
    eventPlayer.PlayerUsedDodgeCD = eventPlayer.PlayerDodgeCDMatrix[0] * BotReactivity
    eventPlayer.PlayerUsedStunCD  = eventPlayer.PlayerStunCDMatrix[0] * BotReactivity
    wait(eventPlayer.PlayerReactTime)
    eventPlayer.PlayerAbilityLock = 0
    eventPlayer.PlayerReactTime   = 0
    eventPlayer.PlayerUsedEatCD   = 0
    eventPlayer.PlayerUsedBlockCD = 0
    eventPlayer.PlayerUsedDodgeCD = 0
    eventPlayer.PlayerUsedStunCD  = 0

    if RULE_CONDITION:
        goto RULE_START 

rule "Player Ability Usage Tracker - Secondary":
    @Event eachPlayer
    @Team 1
    @Condition BotsReact == true
    @Condition eventPlayer.isHoldingButton(Button.SECONDARY_FIRE) == true
    @Condition eventPlayer.PlayerAbilityLock < 2

    eventPlayer.PlayerAbilityLock = 2
    eventPlayer.AbilityReactChance = random.uniform(0,1)
    eventPlayer.PlayerReactTime   = eventPlayer.PlayerReactMatrix[1] * BotReactivity
    eventPlayer.PlayerUsedEatCD = eventPlayer.PlayerEatCDMatrix[1] * BotReactivity
    eventPlayer.PlayerUsedBlockCD = eventPlayer.PlayerBlockCDMatrix[1] * BotReactivity
    eventPlayer.PlayerUsedDodgeCD = eventPlayer.PlayerDodgeCDMatrix[1] * BotReactivity
    eventPlayer.PlayerUsedStunCD  = eventPlayer.PlayerStunCDMatrix[1] * BotReactivity
    wait(eventPlayer.PlayerReactTime)
    eventPlayer.PlayerAbilityLock = 0
    eventPlayer.PlayerReactTime   = 0
    eventPlayer.PlayerUsedEatCD = 0
    eventPlayer.PlayerUsedBlockCD = 0
    eventPlayer.PlayerUsedDodgeCD = 0
    eventPlayer.PlayerUsedStunCD  = 0

    if RULE_CONDITION:
        goto RULE_START 

rule "Player Ability Usage Tracker - Ability 1":
    @Event eachPlayer
    @Team 1
    @Condition BotsReact == true
    @Condition eventPlayer.isHoldingButton(Button.ABILITY_1) == true
    @Condition eventPlayer.PlayerAbilityLock < 3

    eventPlayer.PlayerAbilityLock = 3
    eventPlayer.AbilityReactChance = random.uniform(0,1)
    eventPlayer.PlayerReactTime   = eventPlayer.PlayerReactMatrix[2] * BotReactivity
    eventPlayer.PlayerUsedEatCD   = eventPlayer.PlayerEatCDMatrix[2] * BotReactivity
    eventPlayer.PlayerUsedBlockCD = eventPlayer.PlayerBlockCDMatrix[2] * BotReactivity
    eventPlayer.PlayerUsedDodgeCD = eventPlayer.PlayerDodgeCDMatrix[2] * BotReactivity
    eventPlayer.PlayerUsedStunCD  = eventPlayer.PlayerStunCDMatrix[2] * BotReactivity
    wait(eventPlayer.PlayerReactTime)
    eventPlayer.PlayerAbilityLock = 0
    eventPlayer.PlayerReactTime   = 0
    eventPlayer.PlayerUsedEatCD = 0
    eventPlayer.PlayerUsedBlockCD = 0
    eventPlayer.PlayerUsedDodgeCD = 0
    eventPlayer.PlayerUsedStunCD  = 0

    if RULE_CONDITION:
        goto RULE_START 


rule "Player Ability Usage Tracker - Ability 2":
    @Event eachPlayer
    @Team 1
    @Condition BotsReact == true
    @Condition eventPlayer.isHoldingButton(Button.ABILITY_2) == true
    @Condition eventPlayer.PlayerAbilityLock < 4

    eventPlayer.PlayerAbilityLock = 4
    eventPlayer.AbilityReactChance = random.uniform(0,1)
    eventPlayer.PlayerReactTime   = eventPlayer.PlayerReactMatrix[3] * BotReactivity
    eventPlayer.PlayerUsedEatCD = eventPlayer.PlayerEatCDMatrix[3] * BotReactivity
    eventPlayer.PlayerUsedBlockCD = eventPlayer.PlayerBlockCDMatrix[3] * BotReactivity
    eventPlayer.PlayerUsedDodgeCD = eventPlayer.PlayerDodgeCDMatrix[3] * BotReactivity
    eventPlayer.PlayerUsedStunCD  = eventPlayer.PlayerStunCDMatrix[3] * BotReactivity
    wait(eventPlayer.PlayerReactTime)
    eventPlayer.PlayerAbilityLock = 0
    eventPlayer.PlayerReactTime   = 0
    eventPlayer.PlayerUsedEatCD = 0
    eventPlayer.PlayerUsedBlockCD = 0
    eventPlayer.PlayerUsedDodgeCD = 0
    eventPlayer.PlayerUsedStunCD  = 0

    if RULE_CONDITION:
        goto RULE_START 

    
rule "Player Ability Usage Tracker - Ultimate":
    @Event eachPlayer
    @Team 1
    @Condition BotsReact == true
    @Condition eventPlayer.isHoldingButton(Button.ULTIMATE) == true
    @Condition eventPlayer.PlayerAbilityLock < 5

    eventPlayer.PlayerAbilityLock = 5
    eventPlayer.AbilityReactChance = random.uniform(0,1)
    eventPlayer.PlayerReactTime   = eventPlayer.PlayerReactMatrix[4] * BotReactivity
    eventPlayer.PlayerUsedEatCD = eventPlayer.PlayerEatCDMatrix[4] * BotReactivity
    eventPlayer.PlayerUsedBlockCD = eventPlayer.PlayerBlockCDMatrix[4] * BotReactivity
    eventPlayer.PlayerUsedDodgeCD = eventPlayer.PlayerDodgeCDMatrix[4] * BotReactivity
    eventPlayer.PlayerUsedStunCD  = eventPlayer.PlayerStunCDMatrix[4] * BotReactivity
    wait(eventPlayer.PlayerReactTime)
    eventPlayer.PlayerAbilityLock = 0
    eventPlayer.PlayerReactTime   = 0
    eventPlayer.PlayerUsedEatCD   = 0
    eventPlayer.PlayerUsedBlockCD = 0
    eventPlayer.PlayerUsedDodgeCD = 0
    eventPlayer.PlayerUsedStunCD  = 0

    if RULE_CONDITION:
        goto RULE_START 


def PopulateAbilityMatrix():
    @Name "SUB: PopulateAbilityMatrix"
    ## Matrix - [Primary Fire, Secondary Fire, Ability 1, Ability 2, Ultimate]
    ## PlayerReactMatrix - Time for reaction response
    ## PlayerXCDMatrix Value - Indicates Percent chance for a response
    
    eventPlayer.CurrHero = eventPlayer.getCurrentHero()
    if eventPlayer.CurrHero == Hero.DVA:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 7.00, 3.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.00, 2.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.00, 0.00, 2.00, 0.90]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 0.90]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.25, 0.25, 0.00]
    elif eventPlayer.CurrHero == Hero.DOOMFIST:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.60, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.25, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.25, 0.00, 0.75, 0.00, 0.90]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 1.00, 0.50, 0.00, 0.90]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.50, 0.50, 0.75, 0.00]
    elif eventPlayer.CurrHero == Hero.JUNKER_QUEEN:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 3.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.75, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.75, 0.00, 0.00, 0.90]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.50, 0.00, 0.50, 0.90]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.75, 0.90]
    elif eventPlayer.CurrHero == Hero.ORISA:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 5.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.75, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.75, 0.00, 0.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.75, 0.90]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.RAMATTRA:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 5.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.00, 0.75, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.00, 0.00, 0.50, 0.90]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.75, 0.90]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.REINHARDT:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.00, 0.00, 0.00, 0.75, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.25, 0.00, 0.00, 0.00, 0.90]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.75, 0.75, 0.90]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.75, 0.00, 0.90]
    elif eventPlayer.CurrHero == Hero.ROADHOG:
        eventPlayer.PlayerReactMatrix   = [5.00, 5.00, 5.00, 5.00, 9.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.50, 0.00, 0.00, 0.90]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.50, 0.75, 0.00, 0.90]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.75, 0.00, 0.90]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.75, 0.00]
    elif eventPlayer.CurrHero == Hero.SIGMA:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 3.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.00, 0.00, 0.75, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.75, 0.90]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.75, 0.00, 0.90]
    elif eventPlayer.CurrHero == Hero.WINSTON:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.00, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.00, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.25, 0.00, 0.90]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.50, 0.00, 0.90]
    elif eventPlayer.CurrHero == Hero.HAMMOND:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.00, 0.00, 0.00, 0.90]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.75, 0.00, 0.00, 0.90]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.75, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.ZARYA:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.00, 0.50, 0.00, 0.00, 0.90]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.50, 0.00, 0.00, 0.90]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 0.90]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.ASHE:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.00, 0.75, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.00, 0.00, 0.75, 0.90]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.75, 0.90]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.BASTION:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 6.00, 1.00, 5.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.75, 0.75, 0.00, 0.90]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.75, 0.75, 0.00, 0.90]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.75, 0.75, 0.00, 0.90]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.MCCREE:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 5.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.50, 0.00, 1.00, 0.90]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.50, 0.00, 1.00, 0.90]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 1.00, 0.90]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.ECHO:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 2.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.75, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.75, 0.00, 0.75, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.75, 0.00, 0.75, 0.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.GENJI:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.50, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.50, 0.00, 0.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.75, 0.00, 0.90]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.HANZO:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 2.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.00, 0.75, 0.90]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.00, 0.00, 0.75, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.75, 0.90]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.JUNKRAT:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.75, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.00, 0.75, 0.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.75, 0.00, 0.90]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.MEI:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.00, 0.50, 0.00, 0.00, 0.90]
        eventPlayer.PlayerBlockCDMatrix = [0.75, 0.50, 0.00, 0.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 0.90]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.PHARAH:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 3.00]
        eventPlayer.PlayerEatCDMatrix   = [0.75, 0.00, 0.00, 0.25, 0.90]
        eventPlayer.PlayerBlockCDMatrix = [0.75, 0.00, 0.00, 0.25, 0.90]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 0.90]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.90]
    elif eventPlayer.CurrHero == Hero.REAPER:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 3.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.00, 0.00, 0.90]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.00, 0.00, 0.00, 0.90]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 0.90]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.90]
    elif eventPlayer.CurrHero == Hero.SOJOURN:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 5.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.50, 0.00, 1.00, 0.90]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.50, 0.00, 1.00, 0.90]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 1.00, 0.90]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.SOLDIER:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 5.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.75, 0.00, 0.00, 0.90]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.75, 0.00, 0.00, 0.90]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 0.90]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.SOMBRA:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.75, 0.00, 0.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.75, 0.00, 0.00, 0.90]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.SYMMETRA:
        eventPlayer.PlayerReactMatrix   = [5.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.00, 0.50, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.50, 0.00, 0.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.TORBJORN:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 3.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.50, 0.00, 0.00, 0.90]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.50, 0.00, 0.00, 0.90]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 0.90]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.TRACER:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.50]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.00, 0.00, 0.90]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.00, 0.00, 0.00, 0.90]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 0.90]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.WIDOWMAKER:
        eventPlayer.PlayerReactMatrix   = [2.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.75, 0.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.ANA:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.75, 0.75, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.00, 0.75, 0.75, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.75, 0.75, 0.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.BAPTISTE:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 9.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.00, 0.00, 0.90]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.00, 0.00, 0.00, 0.90]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 0.90]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.BRIGITTE:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.00, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.00, 0.00, 0.75, 0.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.75, 0.00, 0.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.50, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.KIRIKO:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.00, 0.50, 0.00, 0.75, 1.00]
        eventPlayer.PlayerBlockCDMatrix = [0.00, 0.50, 0.00, 0.00, 1.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 1.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.LIFEWEAVER:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.LUCIO:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.MERCY:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.00, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.00, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.MOIRA:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 2.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.00, 0.00, 0.00, 0.75, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.00, 0.50, 0.00, 0.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.75, 0.90]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.ZENYATTA:
        eventPlayer.PlayerReactMatrix   = [1.00, 5.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.75, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.75, 0.00, 0.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    else:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.00, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.00, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    

# Bot Abilities
## Tank Bot Abilities
### D.va Bot Abilities
rule "Bot Abilities: Dva Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero dva
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.AbilityAcc = 3
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Dva Secondary Random (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero dva
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[0] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getMaxHealth() != 150
    @Condition eventPlayer.getNormalizedHealth() != 1
    @Condition eventPlayer.BotAbilityLock[1] == false

    wait(random.uniform(3, 7), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[1] = true
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(0.5)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    wait(1)
    eventPlayer.BotAbilityLock[1] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Dva Secondary (BB1 + Re)":
    @Event eachPlayer
    @Team 2
    @Hero dva
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[0] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getMaxHealth() != 150
    @Condition eventPlayer.BotAbilityLock[1] == false
    @Condition eventPlayer.LookTarget.PlayerUsedEatCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedEatCD >= eventPlayer.LookTarget.AbilityReactChance 

    wait(random.uniform(0,0.5), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[1] = true
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    if eventPlayer.getNormalizedHealth() <= 0.4 or eventPlayer.LookTarget.PlayerReactTime >= 3:
        wait(3)
    else:
        wait(eventPlayer.LookTarget.PlayerReactTime)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    wait(1)
    eventPlayer.BotAbilityLock[1] = false
    if RULE_CONDITION:
        goto RULE_START
    

rule "Bot Abilities: Dva Ability 1 (Rf)":
    @Event eachPlayer
    @Team 2
    @Hero dva
    @Condition BotsUseAbilities == true
    @Condition BotsReact == false
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getMaxHealth() != 150
    @Condition eventPlayer.BotAbilityLock[2] == false

    wait(random.uniform(5, 10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    while eventPlayer.isUsingAbility1():
        eventPlayer.startFacing(vect(eventPlayer.getEyePosition().x + random.uniform(-100,100), eventPlayer.getEyePosition().y + random.uniform(-5,20), eventPlayer.getEyePosition().z + random.uniform(-100,100)), 3000, Relativity.TO_WORLD, FacingReeval.NONE)
        wait(random.uniform(0.2,0.5))
    SetDefaultFacing()
    wait(4)
    eventPlayer.BotAbilityLock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Dva Ability 1 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero dva
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getMaxHealth() != 150
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedEatCD == 0

    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    eventPlayer.startFacing(vect(eventPlayer.getEyePosition().x + random.uniform(-20,20), eventPlayer.getEyePosition().y + random.uniform(-5,20), eventPlayer.getEyePosition().z + random.uniform(-20,20)), 3000, Relativity.TO_WORLD, FacingReeval.NONE)
    if eventPlayer.LookTarget.PlayerReactTime < 2:
        wait(eventPlayer.LookTarget.PlayerReactTime)
    else:
        wait(2)
    SetDefaultFacing()
    wait(4)
    eventPlayer.BotAbilityLock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Dva Ability 1 (H + P)":
    @Event eachPlayer
    @Team 2
    @Hero dva
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getMaxHealth() != 150
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD == 0
        
    if eventPlayer.getNormalizedHealth() > 0.5:
        wait(random.uniform(1,5), Wait.ABORT_WHEN_FALSE)
        eventPlayer.BotAbilityLock[2] = true
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    else:
        wait(1, Wait.ABORT_WHEN_FALSE)
        eventPlayer.BotAbilityLock[2] = true
        eventPlayer.forceButtonPress(Button.ABILITY_1)
        while eventPlayer.isUsingAbility1():
            eventPlayer.startFacing(vect(eventPlayer.getEyePosition().x + random.uniform(-100,100), eventPlayer.getEyePosition().y + random.uniform(-5,20), eventPlayer.getEyePosition().z + random.uniform(-100,100)), 3000, Relativity.TO_WORLD, FacingReeval.NONE)
            wait(random.uniform(0.2,0.5))
        SetDefaultFacing()
    wait(4)
    eventPlayer.BotAbilityLock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Dva Ability 2 (P)":
    @Event eachPlayer
    @Team 2
    @Hero dva
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.AbilityAcc = 2
    wait(random.uniform(0,5),Wait.ABORT_WHEN_FALSE)
    eventPlayer.ProjType = "ability 2"
    SetProjectileFacing()
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(2)
    eventPlayer.ProjType = "off"
    SetDefaultFacing()
    wait(7)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Baby Dva Ultimate (All)":
    @Event eachPlayer
    @Team 2
    @Hero dva
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getMaxHealth() == 150
    @Condition eventPlayer.BotAbilityLock[4] == false

    wait(10 / UltFrequency)
    if random.randint(0,9) / UltFrequency < 3:
        eventPlayer.BotAbilityLock[4] = true
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        eventPlayer.BotAbilityLock[4] = false
    
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Dva Ultimate Random (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero dva
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[0] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getMaxHealth() != 150
    @Condition eventPlayer.BotAbilityLock[4] == false

    wait(10 / UltFrequency)
    if random.randint(0,9) / UltFrequency < 3:
        DvaUltimate()

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Dva Ultimate for Remech (BB2 + P + H)":
    @Event eachPlayer
    @Team 2
    @Hero dva
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[0] >= 2
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.BotAbilityLock[4] == false
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getMaxHealth() != 150
    @Condition eventPlayer.getNormalizedHealth() < 0.25
    
    if random.randint(0,9) / UltFrequency < 5:
        DvaUltimate()


def DvaUltimate():
    @Name "SUB: Dva Ultimate"

    eventPlayer.BotAbilityLock[4] = true
    eventPlayer.forceButtonPress(Button.ULTIMATE)
    wait(5)
    eventPlayer.forceButtonPress(Button.ULTIMATE)
    wait(10 / UltFrequency)
    eventPlayer.BotAbilityLock[4] = false


### Doomfist Bot Abilities
rule "Bot Abilities: Doomfist All Abilities (Rf)":
    @Event eachPlayer
    @Team 2
    @Hero doomfist
    @Condition BotsUseAbilities == true
    @Condition BotsReact == false
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() != 1
    
    wait(random.uniform(0, 10), Wait.ABORT_WHEN_FALSE)
    if not RULE_CONDITION:
        return
    eventPlayer.Randomizer = random.randint(0,4)
    if eventPlayer.Randomizer == 0:
        eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
        wait(random.uniform(0.2, 1))
        eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    elif eventPlayer.Randomizer == 1:
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    elif eventPlayer.Randomizer == 2:
        eventPlayer.forceButtonPress(Button.ABILITY_1)
        wait(random.uniform(0.1, 1))
        eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    elif eventPlayer.Randomizer == 3 :
        eventPlayer.forceButtonPress(Button.ABILITY_1)
        wait(random.uniform(0.1, 0.5))
        eventPlayer.startForcingButton(Button.ABILITY_2)
        wait(random.uniform(0.1, 1))
        eventPlayer.stopForcingButton(Button.ABILITY_2)
    elif eventPlayer.Randomizer == 4:
        eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), vect(eventPlayer.getEyePosition().x, eventPlayer.getEyePosition().y + 100, eventPlayer.getEyePosition().z)), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
        wait(random.uniform(0.1,1))
        eventPlayer.forceButtonPress(Button.ABILITY_1)
        SetDefaultFacing()
        eventPlayer.startForcingButton(Button.ABILITY_2)
        wait(random.uniform(0.1, 0.3))
        eventPlayer.stopForcingButton(Button.ABILITY_2)
        eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
        wait(random.uniform(0.2, 1))
        eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    wait(5)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Doomfist Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero doomfist
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isHoldingButton(Button.SECONDARY_FIRE) == false

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(random.uniform(1,3), Wait.ABORT_WHEN_FALSE)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    wait(random.uniform(1,3),Wait.ABORT_WHEN_FALSE)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Doomfist Secondary (P)":
    @Event eachPlayer
    @Team 2
    @Hero doomfist
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[1] == false

    wait(random.uniform(5,10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "secondary"
    eventPlayer.BotAbilityLock[1] = true
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    if distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) > 15:
        wait(random.uniform(1,1.6))
    else:
        wait(random.uniform(0.2,1.6))
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.ProjType = "primary"
    wait(4)
    eventPlayer.BotAbilityLock[1] = false
    
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Doomfist Secondary (Rs + P)":
    @Event eachPlayer
    @Team 2
    @Hero doomfist
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[1] == false
    @Condition eventPlayer.LookTarget.PlayerUsedStunCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedStunCD >= eventPlayer.LookTarget.AbilityReactChance 
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 15

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "secondary"
    eventPlayer.BotAbilityLock[1] = true
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) / 15)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.ProjType = "primary"
    wait(4)
    eventPlayer.BotAbilityLock[1] = false
    wait(2)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Doomfist Ability 1 (P)":
    @Event eachPlayer
    @Team 2
    @Hero doomfist
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false

    wait(random.uniform(5,10),Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "ability 1"
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    eventPlayer.ProjType = "primary"
    wait(7)
    eventPlayer.BotAbilityLock[2] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Doomfist Ability 1 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero doomfist
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.LookTarget.PlayerUsedStunCD == 0
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD == 0
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD >= eventPlayer.LookTarget.AbilityReactChance

    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.AbilityAcc = 2
    eventPlayer.startFacing(vect(eventPlayer.getEyePosition().x + random.uniform(-100,100), eventPlayer.getEyePosition().y + random.uniform(-5,20), eventPlayer.getEyePosition().z + random.uniform(-100,100)), 3000, Relativity.TO_WORLD, FacingReeval.NONE)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.5)
    if eventPlayer.ApplyPressure == true:
        SetProjectileFacing()
    else:
        SetDefaultFacing()
    wait(6.5)
    eventPlayer.BotAbilityLock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Doomfist Ability 2 (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero doomfist
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[1] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
    

    wait(random.uniform(5,10))
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(7)
    eventPlayer.BotAbilityLock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Doomfist Ability 2 (BB1 + Rb)":
    @Event eachPlayer
    @Team 2
    @Hero doomfist
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[1] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedStunCD == 0
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD >= eventPlayer.LookTarget.AbilityReactChance

    if eventPlayer.getNormalizedHealth() > 0.25:
        wait(random.uniform(0,2))
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(7)
    eventPlayer.BotAbilityLock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Doomfist Ultimate (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero doomfist
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[1] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[4] == false

    wait(10 / UltFrequency)
    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 3:
        ##smallMessage(hostPlayer, "Debug: Doomfist ult rand")
        DoomfistUltimate()

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Doomfist Ultimate (BB2 + H)":
    @Event eachPlayer
    @Team 2
    @Hero doomfist
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[1] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.25
    @Condition eventPlayer.BotAbilityLock[4] == false

    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 3:
        ##smallMessage(hostPlayer, "Debug: Doomfist ult H")
        DoomfistUltimate()


def DoomfistUltimate():
    @Name "SUB: Doomfist Ultimate"

    eventPlayer.BotAbilityLock[4] = true
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.forceButtonPress(Button.ULTIMATE)
    wait(1)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    wait(10 / UltFrequency)
    eventPlayer.BotAbilityLock[4] = false


### Junker Queen Bot Abilities
rule "Bot Abilities: Junker Queen Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero junkerQueen
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.AbilityAcc = 3
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Junker Queen Secondary (P)":
    @Event eachPlayer
    @Team 2
    @Hero junkerQueen
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.AbilityAcc = 2
    wait(random.uniform(1,5))
    eventPlayer.ProjType = "secondary"
    SetProjectileFacing()
    wait(0.1)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    wait(0.2)
    eventPlayer.ProjType = "off"
    SetDefaultFacing()
    wait(random.uniform(0.5,2))
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    wait(5)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Junker Queen Ability 1 Random (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero junkerQueen
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[2] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() != 1
    @Condition eventPlayer.BotAbilityLock[2] == false
    
    wait(random.uniform(0, 20), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(19)
    eventPlayer.BotAbilityLock[2] = false
    
    if RULE_CONDITION:
        goto RULE_START
        
rule "Bot Abilities: Junker Queen Ability 1 (R + BB1)":
    @Event eachPlayer
    @Team 2
    @Hero junkerQueen
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[2] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.25
    @Condition eventPlayer.BotAbilityLock[2] == false

    
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(19)
    eventPlayer.BotAbilityLock[2] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Junker Queen Ability 1 (BB1 + Rd + Rb)":
    @Event eachPlayer
    @Team 2
    @Hero junkerQueen
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[2] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD >= eventPlayer.LookTarget.AbilityReactChance * 4
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD >= eventPlayer.LookTarget.AbilityReactChance * 4


    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(12)
    eventPlayer.BotAbilityLock[2] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Junker Queen Ability 2 (P)":
    @Event eachPlayer
    @Team 2
    @Hero junkerQueen
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 7

    eventPlayer.AbilityAcc = 2
    eventPlayer.MvmtTypeLock = true
    eventPlayer.MvmtType = 5
    wait(random.uniform(0,3))
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(3)
    eventPlayer.MvmtType = DefaultMvmtType
    eventPlayer.MvmtTypeLock = false
    
    wait(5)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Junker Queen Ultimate (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero junkerQueen
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[2] >= 1
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[4] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 25

    wait(10 / UltFrequency)
    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 3:
        eventPlayer.BotAbilityLock[4] = true
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(10 / UltFrequency)
        eventPlayer.BotAbilityLock[4] = false
    if RULE_CONDITION:
        goto RULE_START

rule "Bot Abilities: Junker Queen Ultimate (BB2 + R)":
    @Event eachPlayer
    @Team 2
    @Hero junkerQueen
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[2] >= 1
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.25
    @Condition eventPlayer.BotAbilityLock[4] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 25

    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 3:
        eventPlayer.BotAbilityLock[4] = true
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(10 / UltFrequency)
        eventPlayer.BotAbilityLock[4] = false


### Orisa Bot Abilities
rule "Bot Abilities: Orisa Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero orisa
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isUsingUltimate() == false

    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.AbilityAcc = 2
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Orisa Secondary (P)":
    @Event eachPlayer
    @Team 2
    @Hero orisa
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[1] == false

    wait(random.uniform(4,7), Wait.ABORT_WHEN_FALSE)
    eventPlayer.ProjType = "secondary"
    wait(0.1)
    eventPlayer.BotAbilityLock[1] = true
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    wait(0.1)
    eventPlayer.ProjType = "primary"
    wait(5.9)
    eventPlayer.BotAbilityLock[1] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Orisa Secondary (P + Rs)":
    @Event eachPlayer
    @Team 2
    @Hero orisa
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[1] == false
    @Condition eventPlayer.LookTarget.PlayerUsedStunCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedStunCD >= eventPlayer.LookTarget.AbilityReactChance 


    eventPlayer.ProjType = "secondary"
    wait(0.1)
    eventPlayer.BotAbilityLock[1] = true
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    wait(0.1)
    eventPlayer.ProjType = "primary"
    wait(5.9)
    eventPlayer.BotAbilityLock[1] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Orisa Ability 1 (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero orisa
    
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[3] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    
    wait(random.uniform(10, 20), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(12)
    eventPlayer.BotAbilityLock[2] = false
    
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Orisa Ability 1 (BB1 + R)":
    @Event eachPlayer
    @Team 2
    @Hero orisa
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[3] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.5
    @Condition eventPlayer.BotAbilityLock[2] == false
    
    eventPlayer.Randomizer = random.randint(0,1)
    if eventPlayer.Randomizer == 0:
        eventPlayer.BotAbilityLock[2] = true
        eventPlayer.forceButtonPress(Button.ABILITY_1)
        wait(12)
        eventPlayer.BotAbilityLock[2] = false


rule "Bot Abilities: Orisa Ability 1 (BB1 + Rb)":
    @Event eachPlayer
    @Team 2
    @Hero orisa

    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[3] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD >= eventPlayer.LookTarget.AbilityReactChance

    
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.BotAbilitySignal[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(12)
    eventPlayer.BotAbilitySignal[2] = false
    eventPlayer.BotAbilityLock[2] = false
    # Randomize Time Until Retriggerable
    wait(random.uniform(1,5))
    
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Orisa Ability 2 (BB1 + Re)":
    @Event eachPlayer
    @Team 2
    @Hero orisa
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[3] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
    @Condition eventPlayer.LookTarget.PlayerUsedEatCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedEatCD >= eventPlayer.LookTarget.AbilityReactChance 

    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(7)
    wait(random.uniform(1,5))
    eventPlayer.BotAbilityLock[3] = false
    
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Orisa Ability 2 (BB1 + Rb)":
    @Event eachPlayer
    @Team 2
    @Hero orisa
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[3] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
    @Condition eventPlayer.BotAbilitySignal[2] == true
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD >= eventPlayer.LookTarget.AbilityReactChance * 4

    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(7)
    wait(random.uniform(1,5))
    eventPlayer.BotAbilityLock[3] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Orisa Ultimate (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero orisa
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[3] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[4] == false

    wait(10 / UltFrequency)
    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 3:
        eventPlayer.BotAbilityLock[4] = true
        eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(random.uniform(1,5))
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
        wait(10 / UltFrequency)
        eventPlayer.BotAbilityLock[4] = false
        
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Orisa Ultimate (BB2 + R)":
    @Event eachPlayer
    @Team 2
    @Hero orisa
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[3] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.25
    @Condition eventPlayer.BotAbilityLock[4] == false

    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 3:
        eventPlayer.BotAbilityLock[4] = true
        eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(random.uniform(1,5))
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
        wait(10 / UltFrequency)
        eventPlayer.BotAbilityLock[4] = false


### Ramattra Bot Abilities
rule "Bot Abilities: Ramattra Ability 1 + Secondary (BB1 Pn Rn)":
    @Event eachPlayer
    @Team 2
    @Hero ramattra
    @Condition BotsUseAbilities == true
    @Condition BotsReact == false
    @Condition BotBehavior[4] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.ApplyPressure == false
    
    wait(random.uniform(8, 12), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(2, 4), Wait.ABORT_WHEN_FALSE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(random.uniform(1, 3), Wait.ABORT_WHEN_FALSE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ramattra Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero ramattra
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.AbilityAcc = 2
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START

rule "Bot Abilities: Ramattra Secondary Shield (BB2 + Rb)":
    @Event eachPlayer
    @Team 2
    @Hero ramattra
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[4] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[1] == false
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD >= eventPlayer.LookTarget.AbilityReactChance

    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), sorted(Playerlist, lambda player: distance(eventPlayer.getEyePosition(), player.getEyePosition()))[0].getPosition() - vect(0,2,0)), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(0.25)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    if eventPlayer.ApplyPressure == true:
        SetProjectileFacing()
    else:
        SetDefaultFacing()
    wait(12)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ramattra Secondary Block (BB2 + R)":
    @Event eachPlayer
    @Team 2
    @Hero ramattra
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[4] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[1] == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.25

    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(4, Wait.ABORT_WHEN_FALSE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ramattra Secondary Block (BB2 + Rb)":
    @Event eachPlayer
    @Team 2
    @Hero ramattra
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[4] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[1] == true
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD >= eventPlayer.LookTarget.AbilityReactChance * 2

    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(eventPlayer.LookTarget.PlayerReactTime, Wait.ABORT_WHEN_FALSE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ramattra Ability 1 (BB1 + R)":
    @Event eachPlayer
    @Team 2
    @Hero ramattra
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[4] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.getNormalizedHealth() <= 0.50

    wait(random.uniform(0,5))
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    eventPlayer.BotAbilityLock[1] = true
    wait(8)
    eventPlayer.BotAbilityLock[1] = false
    wait(8)
    eventPlayer.BotAbilityLock[2] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ramattra Ability 1 (BB1 + R)":
    @Event eachPlayer
    @Team 2
    @Hero ramattra
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[4] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 10

    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    eventPlayer.BotAbilityLock[1] = true
    wait(8)
    eventPlayer.BotAbilityLock[1] = false
    wait(8)
    eventPlayer.BotAbilityLock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ramattra Ability 2 (BB2 + P)":
    @Event eachPlayer
    @Team 2
    @Hero ramattra
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[4] >= 2
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true

    wait(random.uniform(0,10))
    eventPlayer.ProjType = "ability 2"
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.1)
    eventPlayer.ProjType = "primary"
    wait(12)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ramattra Ultimate (BB3)":
    @Event eachPlayer
    @Team 2
    @Hero ramattra
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[4] >= 3
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[4] == false

    wait(10 / UltFrequency)
    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 3:
        eventPlayer.BotAbilityLock[4] = true
        eventPlayer.BotAbilityLock[1] = true
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        while eventPlayer.isUsingUltimate():
            wait(1)
        eventPlayer.BotAbilityLock[1] = false
        wait(10 / UltFrequency)
        eventPlayer.BotAbilityLock[4] = false

    if RULE_CONDITION:
        goto RULE_START

        
rule "Bot Abilities: Ramattra Ultimate (BB3 + R)":
    @Event eachPlayer
    @Team 2
    @Hero ramattra
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[4] >= 3
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[4] == false
    @Condition eventPlayer.BotAbilityLock[2] == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.50

    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 3:
        eventPlayer.BotAbilityLock[4] = true
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(20)
        eventPlayer.BotAbilityLock[4] = false


### Reinhardt Bot Abilities
rule "Bot Abilities: Reinhardt Primary + Ability 2 (Pn)":
    @Event eachPlayer
    @Team 2
    @Hero reinhardt
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.ApplyPressure == false
    
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(random.uniform(3, 6), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    wait(3, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Reinhardt Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero reinhardt
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 7
    
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(random.uniform(2,5))
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Reinhardt Secondary (BB1 + Rb)":
    @Event eachPlayer
    @Team 2
    @Hero reinhardt
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[5] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD >= eventPlayer.LookTarget.AbilityReactChance 

    if eventPlayer.isUsingAbility1():
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    if eventPlayer.getNormalizedHealth() <= 0.25:
        wait(eventPlayer.LookTarget.PlayerReactTime * 4)
    else:
        wait(eventPlayer.LookTarget.PlayerReactTime * 2)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    wait(random.uniform(0.5,2))
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Reinhardt Ability 1 (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero reinhardt
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[5] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() != 1
    @Condition eventPlayer.BotAbilityLock[2] == false
    
    wait(random.uniform(5, 10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(0.75, 3))
    if eventPlayer.isUsingAbility1():
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(7)
    eventPlayer.BotAbilityLock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Reinhardt Ability 1 (BB1 + P)":
    @Event eachPlayer
    @Team 2
    @Hero reinhardt
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[5] >= 1
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) > 7 
    
    wait(random.uniform(0, 5), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.MvmtTypeLock = true
    eventPlayer.MvmtType = 5
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    eventPlayer.Randomizer = random.uniform(0,1)
    if eventPlayer.Randomizer >= 0.80:
        wait(distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) / 10)
    else:
        wait(3)
    if eventPlayer.isUsingAbility1():
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    eventPlayer.Randomizer = random.uniform(1,7)
    wait(eventPlayer.Randomizer)
    eventPlayer.MvmtType = DefaultMvmtType
    eventPlayer.MvmtTypeLock = false
    wait(7 - eventPlayer.Randomizer)
    eventPlayer.BotAbilityLock[2] = false
    wait(2)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Reinhardt Ability 2 (P)":
    @Event eachPlayer
    @Team 2
    @Hero reinhardt
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    
    wait(random.uniform(0, 3), Wait.ABORT_WHEN_FALSE)
    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "ability 2"
    SetProjectileFacing()
        eventPlayer.forceButtonPress(Button.ABILITY_2)
        eventPlayer.Randomizer = random.uniform(1,12)
        wait(eventPlayer.Randomizer)
        eventPlayer.forceButtonPress(Button.ABILITY_2)
        wait(12 - eventPlayer.Randomizer)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Reinhardt Ultimate (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero reinhardt
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[5] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[4] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 20


    wait(10 / UltFrequency)
    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 3:
        if eventPlayer.ApplyPressure == true:
            SetDefaultFacing()
        eventPlayer.BotAbilityLock[4] = true
        wait(0.1)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        eventPlayer.BotAbilityLock[4] = false
        wait(10 / UltFrequency)
        
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Reinhardt Ultimate (BB1 + R)":
    @Event eachPlayer
    @Team 2
    @Hero reinhardt
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[5] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.65
    @Condition eventPlayer.BotAbilityLock[4] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 20

    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 4:
        if eventPlayer.ApplyPressure == true:
            SetDefaultFacing()
        eventPlayer.setUltCharge(100)
        wait(0.1)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        if eventPlayer.ApplyPressure == true:
            SetProjectileFacing()
        wait(10 / UltFrequency)
        
    if RULE_CONDITION:
        goto RULE_START


### Roadhog Bot Abilities
rule "Bot Abilities: Roadhog Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero roadhog
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) <= 8

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Roadhog Secondary (P)":
    @Event eachPlayer
    @Team 2
    @Hero roadhog
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[1] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) > 8

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "secondary"
    SetProjectileFacing()
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Roadhog Ability 1 (P + R)":
    @Event eachPlayer
    @Team 2
    @Hero roadhog
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 20
    

    wait(random.uniform(0, 5), Wait.ABORT_WHEN_FALSE)
    eventPlayer.ProjType = "ability 2"
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    if distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) <= 8:
        eventPlayer.ProjType = "primary"
    else:
        eventPlayer.ProjType = "secondary"
    wait(6)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Roadhog Ability 2 (R)":
    @Event eachPlayer
    @Team 2
    @Hero roadhog
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[3] >= 1
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 50
    
    wait(random.uniform(1, 5), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(8)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Roadhog Ultimate (BB2 + P)":
    @Event eachPlayer
    @Team 2
    @Hero roadhog
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[3] >= 2
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[4] == false

    wait(10 / UltFrequency)
    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 3:
        eventPlayer.BotAbilityLock[4] = true
        eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
        SetDefaultFacing()
        eventPlayer.BotAbilityLock[1] = true
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
        wait(8)
        SetProjectileFacing()
        eventPlayer.BotAbilityLock[1] = false
        wait(10 / UltFrequency)
        eventPlayer.BotAbilityLock[4] = false
        
    if RULE_CONDITION:
        goto RULE_START


### Sigma Bot Abilities
rule "Bot Abilities: Sigma Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero sigma
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sigma Secondary (BB1 + Rb)":
    @Event eachPlayer
    @Team 2
    @Hero sigma
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[7] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[1] == false
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD > 0
    @Condition (eventPlayer.LookTarget.PlayerUsedEatCD == 0 or eventPlayer.BotAbilitySignal[2] == true)
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD >= eventPlayer.LookTarget.AbilityReactChance 
    
    eventPlayer.BotAbilityLock[1] = true
    ##smallMessage(hostPlayer, "Debug: Sig Shield")
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.Randomizer = random.randint(0,1)
    if eventPlayer.Randomizer == 0:
        wait(distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) / 25)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.BotAbilityLock[1] = false
    wait(eventPlayer.LookTarget.PlayerReactTime * 1.5)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(0.1)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    wait(random.uniform(2,5))
    if RULE_CONDITION:
        goto RULE_START



rule "Bot Abilities: Sigma Ability 1 (BB1 + Re)":
    @Event eachPlayer
    @Team 2
    @Hero sigma
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[7] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[1] == false
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.LookTarget.PlayerUsedEatCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedEatCD >= eventPlayer.LookTarget.AbilityReactChance 
    
    wait(random.uniform(0,0.5))
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(2)
    eventPlayer.BotAbilitySignal[2] = true 
    wait(12)
    eventPlayer.BotAbilitySignal[2] = false
    wait(random.uniform(1,5))
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sigma Ability 2 (Rs + P)":
    @Event eachPlayer
    @Team 2
    @Hero sigma
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
    @Condition eventPlayer.LookTarget.PlayerUsedStunCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedStunCD >= eventPlayer.LookTarget.AbilityReactChance 
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 20
    
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.ProjType = "ability 2"
    SetProjectileFacing()
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()    
    wait(10)
    eventPlayer.BotAbilityLock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sigma Ability 2 Random (P)":
    @Event eachPlayer
    @Team 2
    @Hero sigma
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 20
    
    wait(random.uniform(5, 10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.ProjType = "ability 2"
    SetProjectileFacing()
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()    
    wait(10)
    eventPlayer.BotAbilityLock[3] = false
    if RULE_CONDITION:
        goto RULE_START
 

rule "Bot Abilities: Sigma Ultimate (Default)":
    @Event eachPlayer
    @Team 2
    @Hero sigma
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() != 1

    wait(10 / UltFrequency)
    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 3:
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        if eventPlayer.isUsingUltimate() == true:
            eventPlayer.startForcingButton(Button.JUMP)
            if eventPlayer.ApplyPressure == true:
                SetDefaultFacing()
            else:
                eventPlayer.startFacing(vect(random.uniform(-10,10) + SpawnPt.x ,random.uniform(-10,0) + SpawnPt.y ,random.uniform(-10,10) + SpawnPt.z), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
            wait(random.uniform(0.5,3.5))
            eventPlayer.stopForcingButton(Button.JUMP)
            eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
            if eventPlayer.ApplyPressure == true:
                SetProjectileFacing()
            else:
                SetDefaultFacing()
            eventPlayer.Randomizer = random.randint(0,3)
            if eventPlayer.Randomizer == 0:
                eventPlayer.startForcingButton(Button.JUMP)
                wait(random.uniform(0,2))
                eventPlayer.stopForcingButton(Button.JUMP)
        wait(1)
        if eventPlayer.ApplyPressure == true:
            eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
        wait(10 / UltFrequency)
    if RULE_CONDITION:
        goto RULE_START


## Winston Bot Abilities
rule "Bot Abilities: Winston Primary (p)":
    @Event eachPlayer
    @Team 2
    @Hero winston
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[4] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 9

    eventPlayer.AbilityAcc = 2
    SetDefaultFacing()
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Winston Secondary (p)":
    @Event eachPlayer
    @Team 2
    @Hero winston
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[4] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) >= 9

    eventPlayer.AbilityAcc = 2
    SetDefaultFacing()
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(random.uniform(0.1, 2))
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    wait(0.5, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Winston Ability 1 Randomized (All)":
    @Event eachPlayer
    @Team 2
    @Hero winston
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() != 1
    @Condition eventPlayer.BotAbilityLock[2] == false
    
    wait(random.uniform(1, 5), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x , random.uniform(-20,20) + eventPlayer.getEyePosition().y ,random.uniform(-20,20) + eventPlayer.getEyePosition().z), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.NONE)
    wait(0.5)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.1)
    SetDefaultFacing()
    wait(6)
    eventPlayer.BotAbilityLock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Winston Ability 1 (P)":
    @Event eachPlayer
    @Team 2
    @Hero winston
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) >= 9
    
    wait(random.uniform(0, 2.5), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(6)
    eventPlayer.BotAbilityLock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Winston Ability 2 (BB2 + R)":
    @Event eachPlayer
    @Team 2
    @Hero winston
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[8] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
    @Condition eventPlayer.getNormalizedHealth() <= 0.25


    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(12)
    eventPlayer.BotAbilityLock[3] = false
    wait(random.uniform(1,5))
    
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Winston Ability 2 (BB2 + Rb)":
    @Event eachPlayer
    @Team 2
    @Hero winston
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[8] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD >= eventPlayer.LookTarget.AbilityReactChance 

    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(12)
    eventPlayer.BotAbilityLock[3] = false
    wait(5)
    
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Winston Ultimate Random (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero winston
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[8] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() != 1.00
    @Condition eventPlayer.BotAbilityLock[4] == false

    wait(10 / UltFrequency)
    WinstonUltimate()
        
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Winston Ultimate (BB1 + R)":
    @Event eachPlayer
    @Team 2
    @Hero winston
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[8] >= 1
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.25
    @Condition eventPlayer.BotAbilityLock[4] == false

    WinstonUltimate()


def WinstonUltimate():
    @Name "WinstonUltimate"

    if random.randint(0,9) / UltFrequency < 3:
        #smallMessage(hostPlayer, "Debug: Angry Monke 1")
        eventPlayer.BotAbilityLock[4] = true
        eventPlayer.MvmtTypeLock = true
        eventPlayer.MvmtType = 5
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
        eventPlayer.BotAbilityLock[2] = true
        eventPlayer.forceButtonPress(Button.ABILITY_1)
        while eventPlayer.isUsingUltimate():
            wait(random.uniform(2,3))
            eventPlayer.forceButtonPress(Button.ABILITY_1)
        eventPlayer.MvmtType = DefaultMvmtType
        eventPlayer.MvmtTypeLock = false
        eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        eventPlayer.BotAbilityLock[4] = false
        wait(10 / UltFrequency)
        eventPlayer.BotAbilityLock[4] = false


### Wrecking Ball Bot Abilities
rule "Bot Pressure: Wrecking Ball Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero hammond
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isInAlternateForm() == false

    eventPlayer.AbilityAcc = 3
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Wrecking Ball Crouch + Impluse (All)":
    @Event eachPlayer
    @Team 2
    @Hero hammond
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[9] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[1] == false
    
    wait(random.uniform(2, 7), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[1] = true
    if eventPlayer.isInAlternateForm() == false:
        eventPlayer.BotAbilityLock[2] = true
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    eventPlayer.applyImpulse(Vector.UP, random.uniform(10,20), Relativity.TO_WORLD, Impulse.INCORPORATE_CONTRARY_MOTION)
    wait(random.uniform(1, 2))
    eventPlayer.forceButtonPress(Button.CROUCH)
    wait(2)
    if eventPlayer.isInAlternateForm() == true:
        eventPlayer.BotAbilityLock[2] = false
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(6)
    eventPlayer.BotAbilityLock[1] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Wrecking Ball Ability 1 Randomized (All)":
    @Event eachPlayer
    @Team 2
    @Hero hammond
    @Condition BotsUseAbilities == false
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    
    wait(random.uniform(5, 10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(1, 5))
    if eventPlayer.isInAlternateForm() == true:
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(2)
    eventPlayer.BotAbilityLock[2] = false
    if RULE_CONDITION:
        goto RULE_START

        
rule "Bot Abilities: Wrecking Ball Ability 1 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero hammond
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD > eventPlayer.LookTarget.AbilityReactChance

    #smallMessage(hostPlayer, "Ball A1 Rd")
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.MvmtTypeLock = true
    eventPlayer.MvmtType = 2
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(eventPlayer.LookTarget.PlayerReactTime * 2)
    eventPlayer.MvmtType = DefaultMvmtType
    eventPlayer.MvmtTypeLock = false
    if eventPlayer.isInAlternateForm() == true:
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(4)
    eventPlayer.BotAbilityLock[2] = false

    if RULE_CONDITION:
        goto RULE_START



rule "Bot Abilities: Wrecking Ball Ability 2 (BB2 + Rb)":
    @Event eachPlayer
    @Team 2
    @Hero hammond
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[9] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD > eventPlayer.LookTarget.AbilityReactChance
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) <= 10

    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(12)
    eventPlayer.BotAbilityLock[3] = false
    
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Wrecking Ball Ultimate + Crouch (BB3)":
    @Event eachPlayer
    @Team 2
    @Hero hammond
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[9] >= 3
    @Condition eventPlayer.isAlive() == true

    wait(10 / UltFrequency)
    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 3:
        #smallMessage(getAllPlayers(), "Debug: Ball go")
        if eventPlayer.BotAbilityLock[1] == false:
            if eventPlayer.isInAlternateForm() == false:
                eventPlayer.BotAbilityLock[2] = true
                eventPlayer.forceButtonPress(Button.ABILITY_1)
            eventPlayer.BotAbilityLock[1] = true
            eventPlayer.applyImpulse(Vector.UP, random.uniform(10,20), Relativity.TO_WORLD, Impulse.INCORPORATE_CONTRARY_MOTION)
            wait(random.uniform(1,2))
            eventPlayer.startForcingButton(Button.ULTIMATE)
            eventPlayer.startForcingButton(Button.CROUCH)
            wait(random.uniform(1,2))
            eventPlayer.stopForcingButton(Button.ULTIMATE)
            eventPlayer.stopForcingButton(Button.CROUCH)
            if eventPlayer.isInAlternateForm() == true:
                eventPlayer.BotAbilityLock[2] = true
                eventPlayer.forceButtonPress(Button.ABILITY_1)
            wait(10)
            eventPlayer.BotAbilityLock[1] = false
        else:
            eventPlayer.forceButtonPress(Button.ULTIMATE)
            wait(10 / UltFrequency)
    
    if RULE_CONDITION:
        goto RULE_START


### Zarya Bot Abilities
rule "Bot Pressure: Zarya Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero zarya
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 15
    @Condition eventPlayer.BotAbilityLock[1] == false

    eventPlayer.AbilityAcc = 3
    eventPlayer.ProjType = "off"
    SetDefaultFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pressure: Zarya Secondary Close (P)":
    @Event eachPlayer
    @Team 2
    @Hero zarya
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 15

    wait(random.uniform(2,5), Wait.ABORT_WHEN_FALSE)
    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "secondary"
    SetProjectileFacing()
    eventPlayer.BotAbilityLock[1] = true
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getPosition() + eventPlayer.LookOffset), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    wait(1.1)
    eventPlayer.Randomizer = random.randint(0,1)
    if eventPlayer.Randomizer == 0:
        eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
        wait(1.1)
    eventPlayer.BotAbilityLock[1] = false
    wait(2)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pressure: Zarya Secondary Far (P)":
    @Event eachPlayer
    @Team 2
    @Hero zarya
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) >= 15

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "secondary"
    SetProjectileFacing()
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    wait(1.1, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Zarya Ability 1 + 2 Handler A (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero zarya
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[10] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] < 2

    wait(10)
    eventPlayer.BotAbilityLock[2] += 1
    #smallMessage(hostPlayer, "Debug: zar +1 cd")


rule "Bot Abilities: Zarya Ability 1 (BB1 + Rb)":
    @Event eachPlayer
    @Team 2
    @Hero zarya
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[10] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] > 0
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD > eventPlayer.LookTarget.AbilityReactChance

    if eventPlayer.BotAbilityLock[2] == false:
        eventPlayer.BotAbilityLock[2] = 0
    eventPlayer.BotAbilityLock[2] -= 1
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(2.1,5))
    
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Zarya Jump (All)":
    @Event eachPlayer
    @Team 2
    @Hero zarya
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() != 1

    wait(random.uniform(1, 10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x, eventPlayer.getEyePosition().y - 100, random.uniform(-20,20) + eventPlayer.getEyePosition().z), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.NONE)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    wait(0.5)
    eventPlayer.forceButtonPress(Button.JUMP)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    if eventPlayer.ApplyPressure == true and distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 15:
        eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    SetDefaultFacing()
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Zarya Ultimate (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero zarya
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[10] >= 2
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[4] == false

    wait(10 / UltFrequency)
    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 3:
        eventPlayer.ProjType = "ultimate"
        SetProjectileFacing()
        wait(0.1)
        eventPlayer.BotAbilityLock[4] = true
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        if distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 15:
            SetDefaultFacing()
        else:
            eventPlayer.ProjType = "secondary"
        wait(10 / UltFrequency)
        eventPlayer.BotAbilityLock[4] = false
        
    if RULE_CONDITION:
        goto RULE_START
        
        
## DPS Bot Abilities
### Ashe Bot Abilities
rule "Bot Abilities: Ashe Scope (Pn)":
    @Event eachPlayer
    @Team 2
    @Hero ashe
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.ApplyPressure == false
    
    wait(random.uniform(0, 2), Wait.ABORT_WHEN_FALSE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(0.9, Wait.ABORT_WHEN_FALSE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pressure: Ashe Primary Close (P)":
    @Event eachPlayer
    @Team 2
    @Hero ashe
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 10

    eventPlayer.AbilityAcc = 2
    SetDefaultFacing()
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.Randomizer = random.randint(1,11)
    while eventPlayer.getAmmo(0) >= eventPlayer.Randomizer:
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
        wait(0.33, Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.RELOAD)
    wait(random.uniform(2,4), Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pressure: Ashe Primary Far (P)":
    @Event eachPlayer
    @Team 2
    @Hero ashe
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) >= 10

    eventPlayer.AbilityAcc = 2
    SetDefaultFacing()
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(0.5)
    eventPlayer.Randomizer = random.randint(1,11)
    while eventPlayer.getAmmo(0) >= eventPlayer.Randomizer:
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
        wait(0.33, Wait.ABORT_WHEN_FALSE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.forceButtonPress(Button.RELOAD)
    wait(random.uniform(2,4), Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ashe Ability 1 (All)":
    @Event eachPlayer
    @Team 2
    @Hero ashe
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false

    wait(random.uniform(3,7), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: ashe a1 a")
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x , random.uniform(-20,0) + eventPlayer.getEyePosition().y ,random.uniform(-20,20) + eventPlayer.getEyePosition().z), 1000, Relativity.TO_WORLD, FacingReeval.NONE)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.1)
    SetDefaultFacing()
    wait(10)
    eventPlayer.BotAbilityLock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ashe Ability 1 (R)":
    @Event eachPlayer
    @Team 2
    @Hero ashe
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() < 0.5
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 5

    wait(random.uniform(1,2), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: ashe a1 R")
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x , random.uniform(-20,0) + eventPlayer.getEyePosition().y ,random.uniform(-20,20) + eventPlayer.getEyePosition().z), 1000, Relativity.TO_WORLD, FacingReeval.NONE)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.1)
    SetDefaultFacing()
    wait(10)
    eventPlayer.BotAbilityLock[2] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ashe Ability 1 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero ashe
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD >= eventPlayer.LookTarget.AbilityReactChance

    #smallMessage(hostPlayer, "Debug: ashe a1 Rd")
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x , random.uniform(-20,0) + eventPlayer.getEyePosition().y ,random.uniform(-20,20) + eventPlayer.getEyePosition().z), 1000, Relativity.TO_WORLD, FacingReeval.NONE)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.1)
    SetDefaultFacing()
    wait(10)
    eventPlayer.BotAbilityLock[2] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ashe Ability 2 (P)":
    @Event eachPlayer
    @Team 2
    @Hero ashe
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[11] >= 1
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.BotAbilityLock[3] == false

    wait(random.uniform(3,7), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug ashe a2")
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.BotAbilityVar = eventPlayer.LookTarget.getEyePosition()
    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), eventPlayer.BotAbilityVar), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.75)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    eventPlayer.BotAbilityLock[3] = false
    wait(12)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ashe Ultimate (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero ashe
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[11] >= 2
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[4] == false

    wait(10 / UltFrequency)
    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 3:
        eventPlayer.ProjType = "ultimate"
        SetProjectileFacing()
        wait(0.1)
        eventPlayer.BotAbilityLock[4] = true
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        SetDefaultFacing()
        wait(10 / UltFrequency)
        eventPlayer.BotAbilityLock[4] = false
        
    if RULE_CONDITION:
        goto RULE_START


### Bastion Bot Abilities
rule "Bot Abilities: Bastion Primary":
    @Event eachPlayer
    @Team 2
    @Hero bastion
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.AbilityAcc = 3
    SetDefaultFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Bastion Secondary":
    @Event eachPlayer
    @Team 2
    @Hero bastion
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[12] >= 1
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.AbilityAcc = 2
    wait(random.uniform(5,7), Wait.ABORT_WHEN_FALSE)
    eventPlayer.ProjType = "secondary"
    SetProjectileFacing()
    wait(0.1)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    wait(0.1)
    eventPlayer.ProjType = "off"
    SetDefaultFacing()
    wait(8)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Bastion Ability 1":
    @Event eachPlayer
    @Team 2
    @Hero bastion
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[12] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    
    wait(random.uniform(0, 7), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(10)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Bastion Jump":
    @Event eachPlayer
    @Team 2
    @Hero bastion
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[12] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[1] == false

    wait(random.uniform(3,7), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[1] = true
    eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x , -100 + eventPlayer.getEyePosition().y ,random.uniform(-20,20) + eventPlayer.getEyePosition().z), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.NONE)
    wait(0.5)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    SetDefaultFacing()
    eventPlayer.Randomizer = random.uniform(0.5,1.5)
    wait(eventPlayer.Randomizer)
    eventPlayer.forceButtonPress(Button.JUMP)
    wait(8 - eventPlayer.Randomizer)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Bastion Ultimate":
    @Event eachPlayer
    @Team 2
    @Hero bastion
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[12] >= 3
    @Condition eventPlayer.isAlive() == true
    
    wait(10 / UltFrequency)
    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 3:
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(1)
        eventPlayer.MvmtTypeLock = true
        eventPlayer.MvmtType = 5
        eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        wait(random.uniform(0.5,1))
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
        wait(random.uniform(0.5,1))
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
        wait(random.uniform(0.5,1))
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
        eventPlayer.MvmtType = DefaultMvmtType
        eventPlayer.MvmtTypeLock = false
        if eventPlayer.ApplyPressure == true:
            eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
        wait(10 / UltFrequency)

    if RULE_CONDITION:
        goto RULE_START

        
### Cassidy Bot Abilities
rule "Bot Abilities: Cassidy Primary":
    @Event eachPlayer
    @Team 2
    @Hero mccree
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[4] == false

    eventPlayer.AbilityAcc = 2
    SetDefaultFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Cassidy Ability 1 (All)":
    @Event eachPlayer
    @Team 2
    @Hero mccree
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    
    wait(random.uniform(5, 10), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Cass A1 A")
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(6)
    eventPlayer.BotAbilityLock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Cassidy Ability 1 (R)":
    @Event eachPlayer
    @Team 2
    @Hero mccree
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.getAmmo(0) == 1
    
    eventPlayer.Randomizer = random.randint(0,3)
    if eventPlayer.Randomizer == 0:
        #smallMessage(hostPlayer, "Debug: Cass A1 R")
        eventPlayer.BotAbilityLock[2] = true
        eventPlayer.forceButtonPress(Button.ABILITY_1)
        wait(6)
        eventPlayer.BotAbilityLock[2] = false


rule "Bot Abilities: Cassidy Ability 1 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero mccree
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD >= eventPlayer.LookTarget.AbilityReactChance
    
    
    #smallMessage(hostPlayer, "Debug: Cass A1 Rd")
    eventPlayer.BotAbilityLock[2] = true
    wait(random.uniform(0.5,eventPlayer.LookTarget.PlayerReactTime))
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(6)
    eventPlayer.BotAbilityLock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Cassidy Ability 2 (BB1 + R)":
    @Event eachPlayer
    @Team 2
    @Hero mccree
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition BotBehavior[13] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 13
    
    wait(random.uniform(0, 2), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(10)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Cassidy Ultimate (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero mccree
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[13] >= 2
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    
    wait(10 / UltFrequency)
    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 3:
        eventPlayer.BotAbilityLock[4] = true
        eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(random.uniform(2,5))
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
        eventPlayer.BotAbilityLock[4] = false
        wait(10 / UltFrequency)

    if RULE_CONDITION:
        goto RULE_START



### Echo Bot Abilities
rule "Bot Abilities: Echo Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero echo
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Echo Secondary (P)":
    @Event eachPlayer
    @Team 2
    @Hero echo
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[14] >= 1 
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "secondary"
    wait(random.uniform(0,5), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    eventPlayer.ProjType = "primary"
    wait(6)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Echo Ability 1 (All)":
    @Event eachPlayer
    @Team 2
    @Hero echo
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.getAltitude() < 3
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    
    wait(random.uniform(3,5), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Echo a1 All")
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.Randomizer = random.randint(0,9)
    if eventPlayer.Randomizer != 0:
        eventPlayer.startForcingButton(Button.JUMP)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    if eventPlayer.Randomizer <= 1 and eventPlayer.isUsingAbility1():
        wait(0.1)
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(6)
    eventPlayer.BotAbilityLock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Echo Ability 1 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero echo
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.getAltitude() < 3
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD >= eventPlayer.LookTarget.AbilityReactChance
    
    #smallMessage(hostPlayer, "Debug: Echo a1 Rd")
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.Randomizer = random.randint(0,9)
    if eventPlayer.Randomizer != 0:
        eventPlayer.startForcingButton(Button.JUMP)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    if eventPlayer.Randomizer <= 1 and eventPlayer.isUsingAbility1():
        wait(0.1)
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(6)
    eventPlayer.BotAbilityLock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Echo Hover Stop (All)":
    @Event eachPlayer
    @Team 2
    @Hero echo
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isOnGround() == true
    
    eventPlayer.stopForcingButton(Button.JUMP)


rule "Bot Abilities: Echo Ability 2 (P + R)":
    @Event eachPlayer
    @Team 2
    @Hero echo
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[14] >= 2
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookOffset.getEyePosition()) < 16
    @Condition eventPlayer.LookTarget.getNormalizedHealth() <= 0.6
                                
    SetDefaultFacing()
    eventPlayer.startForcingButton(Button.ABILITY_2)
    wait(2)
    SetProjectileFacing()
    wait(10)
    if RULE_CONDITION:
        goto RULE_START


### Genji
rule "Bot Abilities: Genji Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero genji
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) > 10
    @Condition eventPlayer.isUsingUltimate() == false

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Genji Secondary (P)":
    @Event eachPlayer
    @Team 2
    @Hero genji
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) <= 10
    @Condition eventPlayer.isUsingUltimate() == false

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "secondary"
    SetProjectileFacing()
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START



rule "Bot Abilities: Genji Jump (All)":
    @Event eachPlayer
    @Team 2
    @Hero genji
    @Condition RandomJumping == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isOnGround() == true
    
    wait(random.uniform(0.4, 0.9), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.JUMP)
    wait(random.uniform(0.2, 0.5))
    eventPlayer.forceButtonPress(Button.JUMP)


rule "Bot Abilities: Genji Ability 1 Randomized (All)":
    @Event eachPlayer
    @Team 2
    @Hero genji
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.isUsingUltimate() == false
    @Condition eventPlayer.isUsingAbility2() == false

    wait(random.uniform(4,7), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[2] = true
    #smallMessage(hostPlayer, "Debug: genji a1 A")
    eventPlayer.Randomizer = random.randint(0, 2)
    if eventPlayer.Randomizer >= 1:
        eventPlayer.ProjType = "ability 1"
        SetProjectileFacing()
    else:
        eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x ,random.uniform(-5,20) + eventPlayer.getEyePosition().y ,random.uniform(-20,20) + eventPlayer.getEyePosition().z), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait(0.25)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.25)
    if eventPlayer.ApplyPressure == true:
        eventPlayer.ProjType = "primary"
        SetProjectileFacing()
    else:
        SetDefaultFacing()    
    wait(8)
    eventPlayer.BotAbilityLock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Genji Ability 1 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero genji
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.isUsingUltimate() == false
    @Condition eventPlayer.isUsingAbility2() == false
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD >= eventPlayer.LookTarget.AbilityReactChance
    
    eventPlayer.BotAbilityLock[2] = true
    #smallMessage(hostPlayer, "Debug: genji a1 Rd")
    eventPlayer.Randomizer = random.randint(0, 2)
    if eventPlayer.Randomizer == 0:
        eventPlayer.ProjType = "ability 1"
        SetProjectileFacing()
    else:
        eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x ,random.uniform(-5,20) + eventPlayer.getEyePosition().y ,random.uniform(-20,20) + eventPlayer.getEyePosition().z), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait(0.25)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.25)
    if eventPlayer.ApplyPressure == true:
        eventPlayer.ProjType = "primary"
        SetProjectileFacing()
    else:
        SetDefaultFacing()    
    wait(8)
    eventPlayer.BotAbilityLock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Genji Ability 1 (R + P)":
    @Event eachPlayer
    @Team 2
    @Hero genji
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.isUsingUltimate() == false
    @Condition eventPlayer.isUsingAbility2() == false
    @Condition eventPlayer.LookTarget.getNormalizedHealth() <= 0.4
    
    eventPlayer.BotAbilityLock[2] = true
    #smallMessage(hostPlayer, "Debug: genji a1 R")
    eventPlayer.ProjType = "ability 1"
    SetProjectileFacing()
    wait(0.25)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.25)
    eventPlayer.ProjType = "primary"
    wait(8)
    eventPlayer.BotAbilityLock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Genji Ability 2 (All)":
    @Event eachPlayer
    @Team 2
    @Hero genji
    @Condition BotsUseAbilities == true
    @Condition BotsReact == false
    @Condition BotBehavior[15] >= 1
    @Condition eventPlayer.isAlive() == true
    
    wait(random.uniform(5, 10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[3] = true
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(8)
    eventPlayer.BotAbilityLock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Genji Ability 2 (Rb)":
    @Event eachPlayer
    @Team 2
    @Hero genji
    @Condition BotsUseAbilities == true
    @Condition BotsReact == false
    @Condition BotBehavior[15] >= 1
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD >= eventPlayer.LookTarget.AbilityReactChance
    
    wait(random.uniform(0,0.5))
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(8)
    eventPlayer.BotAbilityLock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Genji Ultimate (All)":
    @Event eachPlayer
    @Team 2
    @Hero genji
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[15] >= 2
    @Condition eventPlayer.isAlive() == true

    wait(10 / UltFrequency)
    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 3:
        eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        eventPlayer.MvmtTypeLock = true
        eventPlayer.MvmtType = 5
        while eventPlayer.isUsingUltimate():
            wait(random.uniform(0,1))
            if eventPlayer.ApplyPressure == false:
                eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x ,random.uniform(-5,20) + eventPlayer.getEyePosition().y ,random.uniform(-20,20) + eventPlayer.getEyePosition().z), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
            else:
                eventPlayer.ProjType = "ability 1"
                SetProjectileFacing()
            wait(0.25)
            eventPlayer.forceButtonPress(Button.ABILITY_1)
            if eventPlayer.ApplyPressure == true:
                eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
                SetDefaultFacing()
            wait(random.uniform(2,3), Wait.ABORT_WHEN_FALSE)
        eventPlayer.MvmtType = DefaultMvmtType
        eventPlayer.MvmtTypeLock = false
        if eventPlayer.ApplyPressure == true:
            eventPlayer.ProjType = "primary"
            SetProjectileFacing()
        else:
            SetDefaultFacing()
        wait(10 / UltFrequency)

    if RULE_CONDITION:
        goto RULE_START


### Hanzo Bot Abilities
rule "Bot Abilities: Hanzo Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero hanzo
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(random.uniform(0.4, 0.7), Wait.ABORT_WHEN_FALSE)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    wait(0.5, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Hanzo Ability 2 (P + BB1)":
    @Event eachPlayer
    @Team 2
    @Hero hanzo
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[16] >= 1
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true


    eventPlayer.AbilityAcc = 2
    wait(random.uniform(5,10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(10)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Hanzo Ultimate (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero hanzo
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[16] >= 2
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    
    wait(10 / UltFrequency)
    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 3:
        eventPlayer.BotAbilityLock[4] = true
        eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition() + vect(random.uniform(-20,20),0,random.uniform(-20,20))), 1000, Relativity.TO_WORLD, FacingReeval.NONE)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(2)
        if eventPlayer.ApplyPressure == true:
            SetProjectileFacing()
        else:
            SetDefaultFacing()
        eventPlayer.BotAbilityLock[4] = false
        wait(10 / UltFrequency)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Hanzo Jump (All)":
    @Event eachPlayer
    @Team 2
    @Hero hanzo
    @Condition RandomJumping == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isOnGround() == true
    @Condition eventPlayer.BotAbilityLock[1] == false
    
    wait(random.uniform(4,7), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Hanzo jump All")
    eventPlayer.BotAbilityLock[1] = true
    wait(random.uniform(0.4, 0.9))
    eventPlayer.forceButtonPress(Button.JUMP)
    wait(random.uniform(0.2, 0.5))
    eventPlayer.forceButtonPress(Button.JUMP)
    wait(4)
    eventPlayer.BotAbilityLock[1] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Hanzo Jump (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero hanzo
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isOnGround() == true
    @Condition eventPlayer.BotAbilityLock[1] == false
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD >= eventPlayer.LookTarget.AbilityReactChance

    #smallMessage(hostPlayer, "Debug: Hanzo jump Rd")
    eventPlayer.BotAbilityLock[1] = true
    wait(random.uniform(0, eventPlayer.LookTarget.PlayerReactTime))
    eventPlayer.forceButtonPress(Button.JUMP)
    wait(random.uniform(0.2, 0.5))
    eventPlayer.forceButtonPress(Button.JUMP)
    wait(4)
    eventPlayer.BotAbilityLock[1] = false
    
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Hanzo Draw (Pn)":
    @Event eachPlayer
    @Team 2
    @Hero hanzo
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.ApplyPressure == false
    
    wait(random.uniform(0.5, 3), Wait.ABORT_WHEN_FALSE)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(random.uniform(0.75,2))
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    if RULE_CONDITION:
        goto RULE_START


### Junkrat Bot Abilities
rule "Bot Abilities: Junkrat Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero junkrat
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Junkrat Ability 1 Handler (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero junkrat
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] < 2

    wait(8)
    eventPlayer.BotAbilityLock[2] += 1
    #smallMessage(hostPlayer, "Debug: junkrat +1 cd")


rule "Bot Abilities: Junkrat Ability 1 + Secondary (P)":
    @Event eachPlayer
    @Team 2
    @Hero junkrat
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] > 0

    wait(random.uniform(3,7), Wait.ABORT_WHEN_FALSE)
    if eventPlayer.BotAbilityLock[2] == false:
        eventPlayer.BotAbilityLock[2] = 0
    eventPlayer.BotAbilityLock[2] -= 1
    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "secondary"
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.1)
    eventPlayer.ProjType = "primary"
    wait(random.uniform(0.5,2))
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    wait(5)
    if RULE_CONDITION:
        goto RULE_START



rule "Bot Abilities: Junkrat Ability 1 + Secondary Movement (All)":
    @Event eachPlayer
    @Team 2
    @Hero junkrat
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] > 0

    wait(random.uniform(10, 20), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[2] -= 1
    SetFloorFacing()
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(0.1,1))
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    if eventPlayer.BotAbilityLock[2] > 0:
        eventPlayer.BotAbilityLock[2] -= 1
        wait(random.uniform(0.1,0.5))
        eventPlayer.forceButtonPress(Button.ABILITY_1)
        wait(random.uniform(0.1,0.3))
        eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    if eventPlayer.ApplyPressure == true:
        SetProjectileFacing()
    else:
        SetDefaultFacing()

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Junkrat Ability 2 (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero junkrat
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[17] >= 1
    @Condition eventPlayer.isAlive() == true

    wait(random.uniform(3,7), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(10)

    if RULE_CONDITION:
        goto RULE_START

        

rule "Bot Abilities: Junkrat Ultimate":
    @Event eachPlayer
    @Team 2
    @Hero junkrat
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[17] >= 2
    @Condition eventPlayer.isAlive() == true
    
    wait(10 / UltFrequency)
    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 3:
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        while eventPlayer.isUsingUltimate():
            eventPlayer.startFacing(vect(random.uniform(-100,100),random.uniform(-100,100),random.uniform(-100,100)), 1000, Relativity.TO_WORLD, FacingReeval.NONE)
            wait(0.5)
            eventPlayer.Randomizer = random.uniform(0,9)
            if eventPlayer.Randomizer == 0:
                eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
        wait(10 / UltFrequency)

    if RULE_CONDITION:
        goto RULE_START


### Mei Bot Abilities
rule "Bot Pressure: Mei Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero mei
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.BotAbilityLock[3] == false
    @Condition eventPlayer.BotAbilityLock[4] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 10

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pressure: Mei Secondary (P)":
    @Event eachPlayer
    @Team 2
    @Hero mei
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.BotAbilityLock[3] == false
    @Condition eventPlayer.BotAbilityLock[4] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) >= 10

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "secondary"
    SetProjectileFacing()
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Mei Ability 1 (R)":
    @Event eachPlayer
    @Team 2
    @Hero mei
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.getNormalizedHealth() <= 0.5
    
    wait(random.uniform(0, 5), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(1,3))
    eventPlayer.BotAbilityLock[2] = false
    wait(12)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pressure: Mei Ability 2 (R)":
    @Event eachPlayer
    @Team 2
    @Hero mei
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[18] >= 1
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 12

    wait(random.uniform(1,5), Wait.ABORT_WHEN_FALSE)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.ProjType = "off"
    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getPosition() + vect(0,0.18,0)), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    wait(0.1)
    SetDefaultFacing()
    eventPlayer.BotAbilityLock[3] = false
    wait(12)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Mei Ultimate (All)":
    @Event eachPlayer
    @Team 2
    @Hero mei
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[18] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[4] == false
    
    wait(10 / UltFrequency)
    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 3:
        eventPlayer.BotAbilityLock[4] = true
        eventPlayer.ProjType = "ultimate"
        SetProjectileFacing()
        wait(0.1)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        SetDefaultFacing()
        eventPlayer.BotAbilityLock[4] = false
        wait(10 / UltFrequency)
    if RULE_CONDITION:
        goto RULE_START


### Pharah Bot Abilities
rule "Bot Pressure: Pharah Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero pharah
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Pharah Ability 1 (All)":
    @Event eachPlayer
    @Team 2
    @Hero pharah
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.getAltitude() < 5.5
    @Condition eventPlayer.isAlive() == true
    
    
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(3)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Pharah Ability 2 (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero pharah
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[19] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
    
    #smallMessage(hostPlayer, "Debug: Pharah a2 all")
    wait(random.uniform(3,7), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.ProjType = "ability 2"
    SetProjectileFacing()
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.1)
    if eventPlayer.ApplyPressure == true:
        eventPlayer.ProjType = "primary"
        SetProjectileFacing()
    else:
        SetDefaultFacing()
    wait(9)
    eventPlayer.BotAbilityLock[3] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Pharah Ability 2 (BB1 + Rd)":
    @Event eachPlayer
    @Team 2
    @Hero pharah
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[19] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD >= eventPlayer.LookTarget.AbilityReactChance
    
    #smallMessage(hostPlayer, "Debug: Pharah a2 Rd")
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.ProjType = "ability 2"
    SetProjectileFacing()
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.1)
    if eventPlayer.ApplyPressure == true:
        eventPlayer.ProjType = "primary"
        SetProjectileFacing()
    else:
        SetDefaultFacing()
    wait(9)
    eventPlayer.BotAbilityLock[3] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Pharah Ultimate (P)":
    @Event eachPlayer
    @Team 2
    @Hero pharah
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[19] >= 2
    @Condition eventPlayer.isAlive() == true
    
    wait(10 / UltFrequency)
    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 3:
        eventPlayer.ProjType = "ultimate"
        SetProjectileFacing()
        wait(0.1)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(2.5)
        if eventPlayer.ApplyPressure == true:
            eventPlayer.ProjType = "primary"
            SetProjectileFacing()
        else:
            SetDefaultFacing()
        wait(10 / UltFrequency)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Pharah Hover Falling (All)":
    @Event eachPlayer
    @Team 2
    @Hero pharah
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isOnGround() == false
    @Condition eventPlayer.getVerticalSpeed() < -5.7
    
    eventPlayer.startForcingButton(Button.JUMP)


rule "Bot Abilities: Pharah Hover Too much hover (All)":
    @Event eachPlayer
    @Team 2
    @Hero pharah
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isOnGround() == false
    @Condition eventPlayer.getVerticalSpeed() > 3.5
    
    eventPlayer.stopForcingButton(Button.JUMP)


### Reaper Bot Abilities
rule "Bot Abilities: Reaper Primary":
    @Event eachPlayer
    @Team 2
    @Hero reaper
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.BotAbilityLock[3] == false

    eventPlayer.AbilityAcc = 3
    SetDefaultFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Reaper Ability 1 (All)":
    @Event eachPlayer
    @Team 2
    @Hero reaper
    @Condition BotsUseAbilities == true
    @Condition BotsReact == false
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    
    wait(random.uniform(5, 10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(0.4,3))
    if eventPlayer.isUsingAbility1():
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    eventPlayer.BotAbilityLock[2] = false
    wait(8)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Reaper Ability 1 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero reaper
    @Condition BotsUseAbilities == true
    @Condition BotsReact == false
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD >= eventPlayer.LookTarget.AbilityReactChance
    
    wait(random.uniform(0.5, eventPlayer.LookTarget.PlayerReactTime), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(0.4,3))
    if eventPlayer.isUsingAbility1():
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    eventPlayer.BotAbilityLock[2] = false
    wait(8)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Reaper Ability 2":
    @Event eachPlayer
    @Team 2
    @Hero reaper
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition BotBehavior[20] >= 1
    @Condition eventPlayer.BotAbilityLock[3] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) > 15

    wait(random.uniform(3,7), Wait.ABORT_WHEN_FALSE)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), sorted(Playerlist, lambda player: distance(eventPlayer.getEyePosition(), player.getEyePosition()))[0].getPosition() + vect(random.uniform(-1,1),-0.15,random.uniform(-1,1))), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    wait(0.1)
    SetDefaultFacing()
    eventPlayer.BotAbilityLock[3] = false
    wait(10)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Reaper Ultimate (All)":
    @Event eachPlayer
    @Team 2
    @Hero reaper
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[20] >= 2
    @Condition eventPlayer.isAlive() == true
    
    wait(10 / UltFrequency)
    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 3:
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(10 / UltFrequency)

    if RULE_CONDITION:
        goto RULE_START


### Sojourn Bot Abilities
rule "Bot Abilities: Sojourn Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero sojourn
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sojourn Secondary (P)":
    @Event eachPlayer
    @Team 2
    @Hero sojourn
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.AbilityAcc = 2
    if eventPlayer.isUsingUltimate() == false:
        wait(random.uniform(1,5), Wait.ABORT_WHEN_FALSE)
    eventPlayer.ProjType = "off"
    SetDefaultFacing()
    wait(0.1)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.AbilityAcc = 2
    if eventPlayer.isUsingUltimate() == false:
        wait(5)
    else:
        wait(random.uniform(0.5,2))
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sojourn Ability 1 (All)":
    @Event eachPlayer
    @Team 2
    @Hero sojourn
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    
    wait(random.uniform(5, 10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(0, 1))
    eventPlayer.Randomizer = random.randint(0,9)
    if eventPlayer.Randomizer > 0:
        eventPlayer.forceButtonPress(Button.JUMP)
    wait(7)
    eventPlayer.BotAbilityLock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sojourn Ability 1 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero sojourn
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD >= eventPlayer.LookTarget.AbilityReactChance
    
    wait(random.uniform(0.5, eventPlayer.LookTarget.PlayerReactTime))
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(0, 1))
    if eventPlayer.Randomizer > 0:
        eventPlayer.forceButtonPress(Button.JUMP)
    wait(7)
    eventPlayer.BotAbilityLock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sojourn Ability 2 (All)":
    @Event eachPlayer
    @Team 2
    @Hero sojourn
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition BotBehavior[21] >= 1
    @Condition eventPlayer.isAlive() == true

    wait(random.uniform(5, 10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), sorted(Playerlist, lambda player: distance(eventPlayer.getEyePosition(), player.getEyePosition()))[0].getPosition() + eventPlayer.LookOffset), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait(0.1)
    eventPlayer.startForcingButton(Button.ABILITY_2)
    wait(0.1)
    SetProjectileFacing()
    wait(10)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sojourn Ultimate (All)":
    @Event eachPlayer
    @Team 2
    @Hero sojourn
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[21] >= 2
    @Condition eventPlayer.isAlive() == true
    
    wait(10 / UltFrequency)
    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 3:
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(10 / UltFrequency)

    if RULE_CONDITION:
        goto RULE_START


### Solider 76 Bot Abilities
rule "Bot Abilities: Soldier Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero soldier
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.AbilityAcc = 3
    SetDefaultFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Soldier Secondary (P)":
    @Event eachPlayer
    @Team 2
    @Hero soldier
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
   

    eventPlayer.AbilityAcc = 2
    wait(random.uniform(2,5),Wait.ABORT_WHEN_FALSE)
    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), sorted(Playerlist, lambda player: distance(eventPlayer.getEyePosition(), player.getEyePosition()))[0].getPosition() + eventPlayer.LookOffset), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    SetDefaultFacing()
    eventPlayer.AbilityAcc = 3
    wait(5)
    if RULE_CONDITION:
        goto RULE_START

        
rule "Bot Abilities: Soldier Ability 1 (R)":
    @Event eachPlayer
    @Team 2
    @Hero soldier
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[22] >= 1
    @Condition eventPlayer.isAlive()
    @Condition distance(eventPlayer.getPosition(), eventPlayer.LookTarget.getPosition()) > 25

    #smallMessage(hostPlayer, "Debug: S76 a1 R")
    eventPlayer.MvmtTypeLock = true
    eventPlayer.MvmtType = 6
    eventPlayer.DisableJump = true
    eventPlayer.DisableCrouch = true
    eventPlayer.startForcingButton(Button.ABILITY_1)
    wait(random.uniform(1,2))
    eventPlayer.stopForcingButton(Button.ABILITY_1)
    eventPlayer.MvmtType = DefaultMvmtType
    eventPlayer.MvmtTypeLock = false
    eventPlayer.DisableJump = false
    eventPlayer.DisableCrouch = false
    wait(5)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Soldier Ability 1 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero soldier
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[22] >= 1
    @Condition eventPlayer.isAlive()
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD >= eventPlayer.LookTarget.AbilityReactChance

    #smallMessage(hostPlayer, "Debug: S76 a1 Rd")
    eventPlayer.MvmtTypeLock = true
    eventPlayer.MvmtType = 6
    eventPlayer.MvmtVar = 0
    eventPlayer.DisableJump = true
    eventPlayer.DisableCrouch = true
    eventPlayer.startForcingButton(Button.ABILITY_1)
    while eventPlayer.isAlive() and eventPlayer.MvmtVar < 3:
        eventPlayer.startFacing(vect(eventPlayer.getPosition().x + 500, eventPlayer.getPosition().x - 10, eventPlayer.getPosition().x + 500), 500, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
        wait(random.uniform(0.25,0.75))
        eventPlayer.startFacing(vect(eventPlayer.getPosition().x - 500, eventPlayer.getPosition().x - 10, eventPlayer.getPosition().x - 500), 500, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
        wait(random.uniform(0.25,0.75))
        eventPlayer.MvmtVar += 1
    SetDefaultFacing()
    eventPlayer.stopForcingButton(Button.ABILITY_1)
    eventPlayer.MvmtType = DefaultMvmtType
    eventPlayer.MvmtTypeLock = false
    eventPlayer.DisableJump = false
    eventPlayer.DisableCrouch = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Solider Ability 2 (R)":
    @Event eachPlayer
    @Team 2
    @Hero soldier
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[22] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.5

    wait(random.uniform(0,2), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(15)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Soldier Ultimate (All)":
    @Event eachPlayer
    @Team 2
    @Hero soldier
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[22] >= 3
    @Condition eventPlayer.isAlive() == true
    
    wait(10 / UltFrequency)
    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 3:
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(10 / UltFrequency)

    if RULE_CONDITION:
        goto RULE_START


### Sombra Bot Abilities
rule "Bot Abilities: Sombra Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero sombra
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.AbilityAcc = 3
    SetDefaultFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(10)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sombra Secondary (P + R)":
    @Event eachPlayer
    @Team 2
    @Hero sombra
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[23] >= 2
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[1] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 12

    wait(random.uniform(2, 5), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Sombra hack rand")
    eventPlayer.BotAbilityLock[1] = true
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(1)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    wait(10)
    eventPlayer.BotAbilityLock[1] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sombra Secondary (P + Rs)":
    @Event eachPlayer
    @Team 2
    @Hero sombra
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[23] >= 2
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[1] == false
    @Condition eventPlayer.LookTarget.PlayerUsedStunCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedStunCD >= eventPlayer.LookTarget.AbilityReactChance 
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 12

    eventPlayer.BotAbilityLock[1] = true
    #smallMessage(hostPlayer, "Debug: Sombra hack Rs")
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(1)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    wait(10)
    eventPlayer.BotAbilityLock[1] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sombra Ability 1 (All)":
    @Event eachPlayer
    @Team 2
    @Hero sombra
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[23] >= 1
    @Condition eventPlayer.ApplyPressure == false
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    
    wait(random.uniform(5, 10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(1, 5))
    if eventPlayer.isUsingAbility1():
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(10)
    eventPlayer.BotAbilityLock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sombra Ability 1 (P)":
    @Event eachPlayer
    @Team 2
    @Hero sombra
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[23] >= 1
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) > 12

    wait(random.uniform(1,2), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(1, 5))
    if eventPlayer.isUsingAbility1():
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(10)
    eventPlayer.BotAbilityLock[2] = false
    if RULE_CONDITION:
        goto RULE_START

rule "Bot Abilities: Sombra Ability 2 (All)":
    @Event eachPlayer
    @Team 2
    @Hero sombra
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
    
    wait(random.uniform(5, 10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x ,random.uniform(-5,20) + eventPlayer.getEyePosition().y ,random.uniform(-20,20) + eventPlayer.getEyePosition().z), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.1)
    SetDefaultFacing()
    wait(random.uniform(0.5, 3))
    if eventPlayer.isUsingAbility2():
        eventPlayer.Randomizer = random.randint(0,9)
        if eventPlayer.Randomizer == 0:
            eventPlayer.forceButtonPress(Button.INTERACT)
        else:
            eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(10)
    eventPlayer.BotAbilityLock[3] = false
    if RULE_CONDITION:
        goto RULE_START

rule "Bot Abilities: Sombra Ability 2 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero sombra
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD >= eventPlayer.LookTarget.AbilityReactChance
    
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x ,random.uniform(-5,20) + eventPlayer.getEyePosition().y ,random.uniform(-20,20) + eventPlayer.getEyePosition().z), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.1)
    SetDefaultFacing()
    wait(random.uniform(0.5, eventPlayer.LookTarget.PlayerReactTime))
    if eventPlayer.isUsingAbility2():
        eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(10)
    eventPlayer.BotAbilityLock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sombra Ultimate (All)":
    @Event eachPlayer
    @Team 2
    @Hero sombra
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[23] >= 3
    @Condition eventPlayer.isAlive() == true
    
    wait(10 / UltFrequency)
    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 3:
        #smallMessage(hostPlayer, "Debug: Sombra ult")
        if eventPlayer.isUsingAbility1():
            eventPlayer.forceButtonPress(Button.ABILITY_1)
            wait(0.5)
        if eventPlayer.BotAbilityLock[3] == false:
            eventPlayer.BotAbilityLock[3] = true
            eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x ,random.uniform(-5,20) + eventPlayer.getEyePosition().y ,random.uniform(-20,20) + eventPlayer.getEyePosition().z), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
            wait(0.1)
            eventPlayer.forceButtonPress(Button.ABILITY_2)
            wait(0.1)
            SetDefaultFacing()
            wait(random.uniform(0.25, 0.75))
            if eventPlayer.isUsingAbility2():
                eventPlayer.forceButtonPress(Button.ABILITY_2)
            wait(0.25)
            eventPlayer.startForcingButton(Button.ULTIMATE)
            wait(0.25)
            eventPlayer.stopForcingButton(Button.ULTIMATE)
            wait(10)
            eventPlayer.BotAbilityLock[3] = false
        else:
            eventPlayer.startForcingButton(Button.ULTIMATE)
            wait(0.25)
            eventPlayer.stopForcingButton(Button.ULTIMATE)
            wait(10)

    if RULE_CONDITION:
        goto RULE_START


### Symmetra Bot Abilities
rule "Bot Abilities: Symmetra Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero symmetra
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
    @Condition eventPlayer.BotAbilityLock[4] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 12

    eventPlayer.AbilityAcc = 2
    SetDefaultFacing()
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Symmetra Secondary (P)":
    @Event eachPlayer
    @Team 2
    @Hero symmetra
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
    @Condition eventPlayer.BotAbilityLock[4] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) >= 12

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "secondary"
    SetProjectileFacing()
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(random.uniform(0,2), Wait.ABORT_WHEN_FALSE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    wait(0.1, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Symmetra Ability 2 (All)":
    @Event eachPlayer
    @Team 2
    @Hero symmetra
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false

    wait(random.uniform(5,10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.MvmtTypeLock = true
    eventPlayer.MvmtType = 4
    eventPlayer.startFacing(eventPlayer.getPosition() + vect(random.uniform(-20,20), 0, random.uniform(-20,20)), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    SetDefaultFacing()
    eventPlayer.startForcingButton(Button.INTERACT)
    wait(1)
    eventPlayer.stopForcingButton(Button.INTERACT)
    eventPlayer.MvmtType = DefaultMvmtType
    eventPlayer.MvmtTypeLock = false
    eventPlayer.BotAbilityLock[3] = false
    wait(7)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Symmetra Ultimate (All)":
    @Event eachPlayer
    @Team 2
    @Hero symmetra
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[24] >= 1
    @Condition eventPlayer.BotAbilityLock[4] == false
    @Condition eventPlayer.isAlive()

    wait(10 / UltFrequency)
    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 3:
        eventPlayer.BotAbilityLock[4] = true
        eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
        SetFloorFacing()
        wait(0.1)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        if eventPlayer.Randomizer >= 8:
            eventPlayer.forceButtonPress(Button.ULTIMATE)
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
        SetDefaultFacing()
        eventPlayer.BotAbilityLock[4] = false

    if RULE_CONDITION:
        goto RULE_START


### Torbjorn Bot Abilities
rule "Bot Abilities: Torbjorn Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero torbjorn
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[4] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) >= 10

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Torbjorn Secondary (P)":
    @Event eachPlayer
    @Team 2
    @Hero torbjorn
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[4] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 10

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "secondary"
    SetProjectileFacing()
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Torbjorn Ability 2 (All)":
    @Event eachPlayer
    @Team 2
    @Hero torbjorn
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
    
    wait(random.uniform(5,10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(10)
    eventPlayer.BotAbilityLock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Torbjorn Ability 2 (R)":
    @Event eachPlayer
    @Team 2
    @Hero torbjorn
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.5
    @Condition eventPlayer.BotAbilityLock[3] == false

    wait(random.uniform(0.5,2), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(10)
    eventPlayer.BotAbilityLock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Torbjorn Ability 2 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero torbjorn
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD >= eventPlayer.LookTarget.AbilityReactChance
    
    wait(random.uniform(0.5,2), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(10)
    eventPlayer.BotAbilityLock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Torbjorn Ultimate (BB1 + P)":
    @Event eachPlayer
    @Team 2
    @Hero torbjorn
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[25] >= 1
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.BotAbilityLock[4] == false
    @Condition eventPlayer.isAlive()

    wait(10 / UltFrequency)
    eventPlayer.Randomizer = random.randint(0,9) / UltFrequency
    if eventPlayer.Randomizer < 3:
        eventPlayer.BotAbilityLock[4] = true
        eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        eventPlayer.BotAbilityVar = 0
        while eventPlayer.BotAbilityVar < 10:
            eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
            wait(random.uniform(0.25,0.75))
            eventPlayer.BotAbilityVar += 1
        if eventPlayer.ApplyPressure == false:
            SetDefaultFacing()
        eventPlayer.BotAbilityLock[4] = false
        wait(10 / UltFrequency)

    if RULE_CONDITION:
        goto RULE_START


### Tracer Bot Abilities
rule "Bot Pressure: Tracer Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero tracer
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.AbilityAcc = 3
    SetDefaultFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Tracer Ability 1 Handler":
    @Event eachPlayer
    @Team 2
    @Hero tracer
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] < 3

    wait(3)
    eventPlayer.BotAbilityLock[2] += 1
    #smallMessage(hostPlayer, "Debug: tracer +1 cd")

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Tracer Ability 1 (Random All)":
    @Event eachPlayer
    @Team 2
    @Hero tracer
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] > 0
    
    wait(random.uniform(2,5), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: tracer a1 rand")
    eventPlayer.BotAbilityLock[2] -= 1
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(2)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Tracer Ability 1 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero tracer
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] > 0
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD >= eventPlayer.LookTarget.AbilityReactChance

    
    wait(random.uniform(0, eventPlayer.LookTarget.PlayerReactTime), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: tracer a1 rd")
    eventPlayer.BotAbilityLock[2] -= 1
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(2,5))
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Tracer Ability 1 Blink Melee (R)":
    @Event eachPlayer
    @Team 2
    @Hero tracer
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] > 0
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) <= 9
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) >= 6
    
    wait(random.uniform(0.5,1), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: tracer a1 bm1")
    eventPlayer.BotAbilityLock[2] -= 1
    eventPlayer.MvmtTypeLock = true
    eventPlayer.MvmtType = 6
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.25)
    eventPlayer.forceButtonPress(Button.MELEE)
    eventPlayer.MvmtType = DefaultMvmtType
    eventPlayer.MvmtTypeLock = false
    wait(0.1)
    if eventPlayer.BotAbilityLock[2] > 0:
        if random.randint(0,9) < 5:
            #smallMessage(hostPlayer, "Debug: tracer a1 bm2")
            eventPlayer.BotAbilityLock[2] -= 1
            eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(3,7))
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Tracer Ability 2 (R)":
    @Event eachPlayer
    @Team 2
    @Hero tracer
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[26] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
    @Condition eventPlayer.getNormalizedHealth() <= 0.5
    
    wait(random.uniform(0.25, 2), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: tracer a2 rand")
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(13)
    eventPlayer.BotAbilityLock[3] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Tracer Ability 2 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero tracer
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[26] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == 0
    @Condition eventPlayer.BotAbilityLock[3] == false
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD >= eventPlayer.LookTarget.AbilityReactChance

    wait(random.uniform(0.5, eventPlayer.LookTarget.PlayerReactTime), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: tracer a2 rd")
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(13)
    eventPlayer.BotAbilityLock[3] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Tracer Ultimate (All)":
    @Event eachPlayer
    @Team 2
    @Hero tracer
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[26] >= 2
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true

    wait(10 / UltFrequency)
    if random.randint(0,9) < 3:
        #smallMessage(hostPlayer, "Debug: tracer ult")
        eventPlayer.MvmtTypeLock = true
        eventPlayer.MvmtType = 6
        while (distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) >= 5 and eventPlayer.BotAbilityLock[2] > 0):
            eventPlayer.BotAbilityLock[2] -= 1
            eventPlayer.forceButtonPress(Button.ABILITY_1)
            wait(0.1)
            #smallMessage(hostPlayer, "Debug: tracer ult a1")
        eventPlayer.MvmtType = DefaultMvmtType
        eventPlayer.MvmtTypeLock = false
        if distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 7.5:
            wait(0.1)
            eventPlayer.forceButtonPress(Button.ULTIMATE)
            wait(0.5)
        if eventPlayer.BotAbilityLock[3] == false:
            eventPlayer.forceButtonPress(Button.ABILITY_2)
            #smallMessage(hostPlayer, "Debug: tracer ult a2")
    wait(10 / UltFrequency)

    if RULE_CONDITION:
        goto RULE_START


### Widowmaker Bot Abilities
rule "Bot Abilities: Widowmaker Primary Close (P)":
    @Event eachPlayer
    @Team 2
    @Hero widowmaker
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 7.5

    eventPlayer.AbilityAcc = 3
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Widowmaker Primary + Secondary Far (P)":
    @Event eachPlayer
    @Team 2
    @Hero widowmaker
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition())  >= 7.5

    eventPlayer.AbilityAcc = 2
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(random.uniform(0.75,1.5), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    wait(1, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START



rule "Bot Abilities: Widowmaker Scope (Np)":
    @Event eachPlayer
    @Team 2
    @Hero widowmaker
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.ApplyPressure == false
    
    wait(random.uniform(0, 2), Wait.ABORT_WHEN_FALSE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(0.9)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Widowmaker Ability 2 (R)":
    @Event eachPlayer
    @Team 2
    @Hero widowmaker
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[27] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
    
    wait(random.uniform(3, 7), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: widow a2 rand")
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(15)
    eventPlayer.BotAbilityLock[3] = false

    if RULE_CONDITION:
        goto RULE_START


## Support Bot Abilities
### Ana Bot Abilties
rule "Bot Abilities: Ana Primary Close (P)":
    @Event eachPlayer
    @Team 2
    @Hero ana
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilitySignal[2] == false
    @Condition eventPlayer.BotAbilitySignal[3] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 15

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ana Primary + Secondary Far (P)":
    @Event eachPlayer
    @Team 2
    @Hero ana
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilitySignal[2] == false
    @Condition eventPlayer.BotAbilitySignal[3] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition())  >= 15

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "off"
    SetDefaultFacing()
    eventPlayer.Randomizer = random.randint(0,2)
    if eventPlayer.Randomizer != 0:
        eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
        wait(0.25, Wait.ABORT_WHEN_FALSE)
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
        eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    else:
        eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
        eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
        wait(random.uniform(3,5), Wait.ABORT_WHEN_FALSE)
        eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)

    wait(0.8, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ana Secondary (Pn)":
    @Event eachPlayer
    @Team 2
    @Hero ana
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.ApplyPressure == false
    @Condition eventPlayer.isAlive() == true
    
    wait(random.uniform(0, 2), Wait.ABORT_WHEN_FALSE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(0.9)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    wait(3, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ana Ability 1 (P)":
    @Event eachPlayer
    @Team 2
    @Hero ana
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    
    wait(random.uniform(5,10), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Ana a1 rand")
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.BotAbilitySignal[2] = true
    eventPlayer.AbilityAcc = 2 
    eventPlayer.ProjType = "ability 1"
    SetProjectileFacing()
    wait(0.5)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.5)
    eventPlayer.BotAbilitySignal[2] = false
    wait(14)
    eventPlayer.BotAbilityLock[2] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ana Ability 1 (P + Rs)":
    @Event eachPlayer
    @Team 2
    @Hero ana
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.LookTarget.PlayerUsedStunCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedStunCD >= eventPlayer.LookTarget.AbilityReactChance 
    
    wait(random.uniform(0.5, eventPlayer.LookTarget.PlayerReactTime))
    #smallMessage(hostPlayer, "Debug: Ana a1 rs")
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.BotAbilitySignal[2] = true
    eventPlayer.AbilityAcc = 2 
    eventPlayer.ProjType = "ability 1"
    SetProjectileFacing()
    wait(0.5)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.5)
    eventPlayer.BotAbilitySignal[2] = false
    wait(14)
    eventPlayer.BotAbilityLock[2] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ana Ability 2 Damage (P)":
    @Event eachPlayer
    @Team 2
    @Hero ana
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[28] >= 1
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false

    wait(random.uniform(3,7), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.BotAbilitySignal[3] = true
    eventPlayer.AbilityAcc = 2 
    eventPlayer.ProjType = "ability 2"
    SetProjectileFacing()
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    eventPlayer.BotAbilitySignal[3] = false
    wait(10)
    eventPlayer.BotAbilityLock[3] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ana Ability 2 Heal (R)":
    @Event eachPlayer
    @Team 2
    @Hero ana
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[28] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
    @Condition eventPlayer.getNormalizedHealth() <= 0.50

    wait(random.uniform(0.25,1))
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.BotAbilitySignal[3] = true
    eventPlayer.AbilityAcc = 2 
    SetFloorFacing()
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.1)
    if eventPlayer.ApplyPressure == false:
        SetDefaultFacing()
    eventPlayer.BotAbilitySignal[3] = false
    wait(10)
    eventPlayer.BotAbilityLock[3] = false

    if RULE_CONDITION:
        goto RULE_START


### Baptiste Bot Abilities
rule "Bot Abilities: Baptiste Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero baptiste
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilitySignal[4] == false

    eventPlayer.AbilityAcc = 3
    SetDefaultFacing()
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(5, Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.RELOAD)

    if RULE_CONDITION:
        goto RULE_START

rule "Bot Abilities: Baptiste Ability 1 (BB1 + H)":
    @Event eachPlayer
    @Team 2
    @Hero baptiste
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[29] >= 1
    @Condition eventPlayer.BotAbilityLock[3] == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.5

    wait(random.uniform(1,2), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Bap a1 H")
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(15)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Baptiste Ability 2 (BB2 + H)":
    @Event eachPlayer
    @Team 2
    @Hero baptiste
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[29] >= 2
    @Condition eventPlayer.BotAbilityLock[3] == false
    @Condition eventPlayer.getNormalizedHealth() <= 0.4

    wait(random.uniform(0.5,1), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Bap a2 H")
    eventPlayer.BotAbilityLock[3] = true
    SetFloorFacing()
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    SetDefaultFacing()
    wait(25)
    eventPlayer.BotAbilityLock[3] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Baptiste Ultimate (BB3)":
    @Event eachPlayer
    @Team 2
    @Hero baptiste
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[29] >= 3
    @Condition eventPlayer.ApplyPressure == true


    wait(10 / UltFrequency)
    if random.randint(0,9) < 3:
        #smallMessage(hostPlayer, "Debug: Bap ult")
        eventPlayer.BotAbilitySignal[4] = true
        eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        SetFloorFacing()
        wait(0.1)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(0.1)
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
        SetDefaultFacing()
        eventPlayer.BotAbilitySignal[4] = false
        wait(10 / UltFrequency)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Baptiste Jump":
    @Event eachPlayer
    @Team 2
    @Hero baptiste
    @Condition RandomJumping == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isOnGround() == true
    @Condition eventPlayer.hasSpawned() == true
    
    wait(random.uniform(1, 3), Wait.ABORT_WHEN_FALSE)
    if random.randint(0,9) < 7:
        eventPlayer.startForcingButton(Button.CROUCH)
        wait(random.uniform(0.5, 0.9))
        eventPlayer.stopForcingButton(Button.CROUCH)
        wait(random.uniform(0.1, 0.5))
        eventPlayer.forceButtonPress(Button.JUMP)
    else:
        eventPlayer.MvmtTypeLock = true
        eventPlayer.MvmtType = 2
        for eventPlayer.MvmtVar in range(0,20):
            eventPlayer.startForcingButton(Button.CROUCH)
            wait(random.uniform(0.05,0.35))
            eventPlayer.stopForcingButton(Button.CROUCH)
            wait(random.uniform(0.1,0.2))
        eventPlayer.MvmtType = DefaultMvmtType
        eventPlayer.MvmtTypeLock = false
    wait(5)

    if RULE_CONDITION:
        goto RULE_START


### Brigitte Bot Abilities
rule "Bot Abilities: Brig Primary":
    @Event eachPlayer
    @Team 2
    @Hero brigitte
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilitySignal[1] == false
    @Condition eventPlayer.BotAbilitySignal[2] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 7
    
    eventPlayer.AbilityAcc = 2
    SetDefaultFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)

    if RULE_CONDITION:
        goto RULE_START

        
rule "Bot Abilities: Brig Secondary (H)":
    @Event eachPlayer
    @Team 2
    @Hero brigitte
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[30] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[1] == false
    @Condition eventPlayer.getNormalizedHealth() <= 0.25

    #smallMessage(hostPlayer, "Debug: Brig Shield H")
    wait(random.uniform(0.1,0.50))
    eventPlayer.BotAbilitySignal[1] = true
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(random.uniform(3,7))
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.BotAbilitySignal[1] = false
    wait(random.uniform(2,5))

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Brig Secondary (Rb)":
    @Event eachPlayer
    @Team 2
    @Hero brigitte
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[30] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[1] == false
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD >= eventPlayer.LookTarget.AbilityReactChance
    
    if eventPlayer.LookOffset.PlayerUsedStunCD == 0 or eventPlayer.BotAbilityLock[1] == true:
        #smallMessage(hostPlayer, "Debug: Brig Shield Rb")
        wait(random.uniform(0.1,0.50))
        eventPlayer.BotAbilitySignal[1] = true
        eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
        wait(random.uniform(1, eventPlayer.LookOffset.PlayerReactTime * 2))
        eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
        eventPlayer.BotAbilitySignal[1] = false
    wait(random.uniform(3,7))
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Brig Secondary Combo Random (P)":
    @Event eachPlayer
    @Team 2
    @Hero brigitte
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[1] == false
    
    wait(random.uniform(3,7), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Brig Bash P")
    eventPlayer.BotAbilityLock[1] = true
    BrigBashCombo()
    eventPlayer.BotAbilityLock[1] = false
    if random.randint(0,3) == 0 and eventPlayer.BotAbilityLock[2] == false and eventPlayer.LookTarget.getNormalizedHealth() <= 0.5:
        #smallMessage(hostPlayer, "Debug: Brig Bash P w")
        eventPlayer.BotAbilityLock[2] = true
        BrigWhipShot()
        wait(4)
        eventPlayer.BotAbilityLock[2] = false
        wait(1)
    else:
        wait(5)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Secondary Combo (Rd Rs)":
    @Event eachPlayer
    @Team 2
    @Hero brigitte
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[1] == false
    @Condition (eventPlayer.LookTarget.PlayerUsedDodgeCD > 0 or eventPlayer.LookTarget.PlayerUsedStunCD > 0)
    @Condition (eventPlayer.LookTarget.PlayerUsedDodgeCD >= eventPlayer.LookTarget.AbilityReactChance or eventPlayer.LookTarget.PlayerUsedStunCD >= eventPlayer.LookTarget.AbilityReactChance )
    
    #smallMessage(hostPlayer, "Debug: Brig Bash Rd/s")
    eventPlayer.BotAbilityVar = distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition())
    if eventPlayer.LookTarget.PlayerUsedStunCD == 0 or eventPlayer.BotAbilityVar > 12:
        wait(random.uniform(0.25, eventPlayer.LookTarget.PlayerReactTime))
        eventPlayer.startFacing(vect(eventPlayer.getEyePosition().x + random.uniform(-20,20), eventPlayer.getEyePosition().y + random.uniform(-5,20), eventPlayer.getEyePosition().z + random.uniform(-20,20)), 3000, Relativity.TO_WORLD, FacingReeval.NONE)
    else:
        wait(random.uniform(eventPlayer.LookTarget.PlayerReactTime / 2, eventPlayer.LookTarget.PlayerReactTime * 2))
    eventPlayer.BotAbilityLock[1] = true
    BrigBashCombo()
    wait(5)
    eventPlayer.BotAbilityLock[1] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Brigitte Ability 1 (P)":
    @Event eachPlayer
    @Team 2
    @Hero brigitte
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 20

    
    wait(random.uniform(3, 7), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Brig a1 p")
    eventPlayer.BotAbilityLock[2] = true
    BrigWhipShot()
    eventPlayer.BotAbilityLock[2] = false
    wait(4)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Brigitte Ability 1 (P + H)":
    @Event eachPlayer
    @Team 2
    @Hero brigitte
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.getNormalizedHealth() <= 0.5
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 7

    wait(random.uniform(1, 3), Wait.ABORT_WHEN_FALSE)

    #smallMessage(hostPlayer, "Debug: Brig a1 p H")
    eventPlayer.BotAbilityLock[2] = true
    BrigWhipShot()
    eventPlayer.BotAbilityLock[2] = false
    wait(4)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Ablities: Brigitte Ultimate":
    @Event eachPlayer
    @Team 2
    @Hero brigitte
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[30] >= 2
    @Condition eventPlayer.isAlive() == true

    wait(10 / UltFrequency)
    if random.randint(0,9) < 3:
        #smallMessage(hostPlayer, "Debug: Brig ult")
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(10 / UltFrequency)
    if RULE_CONDITION:
        goto RULE_START


def BrigBashCombo():
    @Name "SUB: BrigBashCombo"

    eventPlayer.BotAbilitySignal[1] = true
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    SetDefaultFacing()
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.BotAbilitySignal[1] = false


def BrigWhipShot():
    @Name "SUB: BrigWhipShot"

    eventPlayer.BotAbilitySignal[2] = true
    eventPlayer.ProjType = "ability 1"
    SetProjectileFacing()
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.1)
    SetDefaultFacing()
    eventPlayer.BotAbilitySignal[2] = false


### Kiriko Bot Abilities
rule "Bot Abilities: Kiriko Secondary (P)":
    @Event eachPlayer
    @Team 2
    @Hero kiriko
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.AbilityAcc = 3
    eventPlayer.ProjType = "secondary"
    SetProjectileFacing()
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Ablities: Kiriko Ability 1 (H)":
    @Event eachPlayer
    @Team 2
    @Hero kiriko
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.7
    
    wait(random.uniform(0.5, 2.5), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Kiri a1 H")
    SetHealingFacing() 
    wait(random.uniform(0.25,0.75))
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.1)
    SetHealingFacing() 
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.1)
    SetHealingFacing() 
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    if eventPlayer.ApplyPressure == true:
        SetProjectileFacing()
    else:
        SetDefaultFacing()
    wait(7)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Ablities: Kiriko Ability 2 (H)":
    @Event eachPlayer
    @Team 2
    @Hero kiriko
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[31] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.4
    @Condition eventPlayer.BotAbilityLock[3] == false
    
    wait(random.uniform(0.25, 1), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Kiri a2 H")
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    SetFloorFacing()
    wait(0.5)
    if eventPlayer.ApplyPressure == true:
        SetProjectileFacing()
    else:
        SetDefaultFacing()
    wait(14)
    eventPlayer.BotAbilityLock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Ablities: Kiriko Ability 2 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero kiriko
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[31] >= 1
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD >= eventPlayer.LookTarget.AbilityReactChance * 2
    
    wait(random.uniform(0.25, 1), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Kiri a2 Rd")
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    SetFloorFacing()
    wait(0.5)
    if eventPlayer.ApplyPressure == true:
        SetProjectileFacing()
    else:
        SetDefaultFacing()
    wait(14)
    eventPlayer.BotAbilityLock[3] = false
    if RULE_CONDITION:
        goto RULE_START
        

rule "Bot Ablities: Kiriko Ultimate (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero kiriko
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[31] >= 2
    @Condition eventPlayer.isAlive() == true

    wait(10 / UltFrequency)
    if random.randint(0,9) < 3:
        #smallMessage(hostPlayer, "Debug: Kiri ult")
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(10 / UltFrequency)
    if RULE_CONDITION:
        goto RULE_START



### Lifeweaver Bot Abilities
rule "Bot Abilities Lifeweaver 2nd Weapon Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero lifeweaver
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilitySignal[1] == false

   eventPlayer.AbilityAcc = 2
   eventPlayer.ProjType = "primary"
   eventPlayer.setWeapon(1)
   SetProjectileFacing()
   eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
   wait(9999, Wait.ABORT_WHEN_FALSE)
   if RULE_CONDITION:
       goto RULE_START


rule "Bot Abilities Lifeweaver Secondary (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero lifeweaver
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[32] >= 1
    @Condition eventPlayer.isAlive() == true
 
    wait(random.uniform(5,10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilitySignal[1] = true
    SetFloorFacing()
    wait(0.1)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(0.1)
    if eventPlayer.ApplyPressure == true:
        SetProjectileFacing()
    else:
        SetDefaultFacing()
    eventPlayer.BotAbilitySignal[1] = false
    wait(12)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities Lifeweaver Ability 1 (All)":
    @Event eachPlayer
    @Team 2
    @Hero lifeweaver
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
 
    wait(random.uniform(3,7), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(5)
    eventPlayer.BotAbilityLock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities Lifeweaver Ability 1 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero lifeweaver
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD >= eventPlayer.LookTarget.AbilityReactChance
 
    wait(random.uniform(0.25,1), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(5)
    eventPlayer.BotAbilityLock[2] = false
    if RULE_CONDITION:
        goto RULE_START

rule "Bot Abilities Lifeweaver Ability 2 (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero lifeweaver
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[32] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
 
    wait(random.uniform(5,10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.BotAbilitySignal[1] = true
    SetHealingFacing()
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.1)
    if eventPlayer.ApplyPressure == true:
        SetProjectileFacing()
    else:
        SetDefaultFacing()
    eventPlayer.BotAbilitySignal[1] = false
    wait(20)
    eventPlayer.BotAbilityLock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities Lifeweaver Ultimate (BB3)":
    @Event eachPlayer
    @Team 2
    @Hero lifeweaver
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[32] >= 3
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[4] == false
 
    wait(10 / UltFrequency)
    if random.randint(0,9) < 3:
        #smallMessage(hostPlayer, "debug: lifeweaver ult")
        eventPlayer.BotAbilityLock[4] = true
        eventPlayer.BotAbilitySignal[1] = true
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(0.5)
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
        wait(0.5)
        eventPlayer.BotAbilitySignal[1] = false
        wait(10 / UltFrequency)
        eventPlayer.BotAbilityLock[4] = false
    if RULE_CONDITION:
        goto RULE_START


### Lucio Bot Abilities
rule "Bot Abilities: Lucio Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero lucio
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START



rule "Bot Abilities: Lucio Secondary (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero lucio
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[33] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() != 1
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 7.75
    
    wait(random.uniform(0.25, 1.5), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Lucio m2")
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    wait(6)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Lucio Ability 1 Reset to Speed (All)":
    @Event eachPlayer
    @Team 2
    @Hero lucio
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isUsingAbility1() == false

    wait(3)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Lucio Ability 2 (BB1 + Rd)":
    @Event eachPlayer
    @Team 2
    @Hero lucio
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[32] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD >= eventPlayer.LookTarget.AbilityReactChance * 2
    
    wait(random.uniform(0.25, 1), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Lucio a2 Rd")
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(15)
    eventPlayer.BotAbilityLock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Lucio Ability 2 Random (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero lucio
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[32] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
    
    wait(random.uniform(5, 10), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Lucio a2 rand")
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(15)
    eventPlayer.BotAbilityLock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Lucio Ability 2 Heal (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero lucio
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[33] >= 3
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false
    @Condition eventPlayer.getNormalizedHealth() <= 0.5

    wait(random.uniform(0.5,2), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Lucio a2 Heal")
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(5)
    eventPlayer.BotAbilityLock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Ablities: Lucio Ultimate Random (BB4)":
    @Event eachPlayer
    @Team 2
    @Hero lucio
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[33] >= 4
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[4] == false

    wait(10 / UltFrequency)
    if random.randint(0,9) < 2:
        eventPlayer.BotAbilityLock[4] = true
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(10 / UltFrequency)
        eventPlayer.BotAbilityLock[4] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Ablities: Lucio Ultimate AJAX Simulator (BB4 + H)":
    @Event eachPlayer
    @Team 2
    @Hero lucio
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[33] >= 4
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.25
    @Condition eventPlayer.BotAbilityLock[4] == false

    wait(10 / UltFrequency)
    if random.randint(0,9) < 3:
        eventPlayer.BotAbilityLock[4] = true
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(10 / UltFrequency)
        eventPlayer.BotAbilityLock[4] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Lucio AD Turnaround (Random Strafe)":
    @Event eachPlayer
    @Team 2
    @Hero lucio
    @Condition BotsUseAbilities == true
    @Condition RandomStrafes == true
    @Condition eventPlayer.isAlive() == true
    
    eventPlayer.MvmtTypeLock = true
    eventPlayer.MvmtType = 2
    eventPlayer.MvmtVar = 0
    wait(random.uniform(5,20), Wait.ABORT_WHEN_FALSE)
        if eventPlayer.ApplyPressure == true:
            eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
            eventPlayer.ProjType = "off"
        while eventPlayer.MvmtVar < 15:
            if not RULE_CONDITION:
                return   
            eventPlayer.startFacing(vect(eventPlayer.getPosition().x + 1000, eventPlayer.getPosition().x - 10, eventPlayer.getPosition().x + 1000), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
            wait(random.uniform(0.25,0.5), Wait.ABORT_WHEN_FALSE)
            eventPlayer.startFacing(vect(eventPlayer.getPosition().x - 1000, eventPlayer.getPosition().x - 10, eventPlayer.getPosition().x - 1000), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
            wait(random.uniform(0.25,0.5), Wait.ABORT_WHEN_FALSE)
            eventPlayer.MvmtVar += 1  
        eventPlayer.MvmtType = DefaultMvmtType
        eventPlayer.MvmtTypeLock = false
        if eventPlayer.ApplyPressure == true:
            eventPlayer.ProjType = "primary"
            SetProjectileFacing()
            eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
        else:
            SetDefaultFacing()
    wait(15)
    if RULE_CONDITION:
        goto RULE_START


### Mercy Bot Abilities
rule "Bot Ablities: Mercy Target (All)`":
    @Event eachPlayer
    @Team 2
    @Hero mercy
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.OldLookTarget != eventPlayer.LookTarget

    eventPlayer.setWeapon(1)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    wait(0.25)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)


rule "Bot Ablities: Mercy Healing (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero mercy
    @Condition BotBehavior[34] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.LookTarget.getNormalizedHealth() <= 0.66
    
    eventPlayer.setWeapon(1)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(3)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Ablities: Mercy Ability 1 (All)":
    @Event eachPlayer
    @Team 2
    @Hero mercy
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    
    wait(random.uniform(2.5, 5), Wait.ABORT_WHEN_FALSE)
    eventPlayer.startForcingButton(Button.ABILITY_1)
    wait(random.uniform(0.5, 2))
    eventPlayer.Randomizer = random.randint(0,9)
    if eventPlayer.isUsingUltimate():
        eventPlayer.Randomizer -= 3
    if eventPlayer.isUsingAbility1():
        if eventPlayer.Randomizer < 3:
            eventPlayer.forceButtonPress(Button.CROUCH)
        elif eventPlayer.Randomizer < 6:
            eventPlayer.startFacing(vect(eventPlayer.getEyePosition().x + random.uniform(-100,100), eventPlayer.getEyePosition().y + random.uniform(-5,20), eventPlayer.getEyePosition().z + random.uniform(-100,100)), 3000, Relativity.TO_WORLD, FacingReeval.NONE)
            wait(0.1)
            eventPlayer.forceButtonPress(Button.JUMP)
            wait(0.1)
            SetHealingFacing()
    eventPlayer.stopForcingButton(Button.ABILITY_1)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Ablities: Mercy Start Hover (All)":
    @Event eachPlayer
    @Team 2
    @Hero mercy
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isUsingAbility1() == false
    @Condition eventPlayer.isOnGround() == false
    
    eventPlayer.startForcingButton(Button.JUMP)


rule "Bot Ablities: Mercy Stop Hover (All)":
    @Event eachPlayer
    @Team 2
    @Hero mercy
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isOnGround() == true
    
    eventPlayer.stopForcingButton(Button.JUMP)


rule "Bot Ablities: Mercy Ultimate (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero mercy
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[34] >= 2
    @Condition eventPlayer.isAlive() == true

    wait(10 / UltFrequency)
    if random.randint(0,9) < 3:
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(10 / UltFrequency)
    if RULE_CONDITION:
        goto RULE_START


### Moira Bot Abilities
rule "Bot Abilities: Moira Secondary":
    @Event eachPlayer
    @Team 2
    @Hero moira
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.AbilityAcc = 3
    SetDefaultFacing()
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Moira Ability 1":
    @Event eachPlayer
    @Team 2
    @Hero moira
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.getNormalizedHealth() <= 0.33
    
    wait(random.uniform(0, 3), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(7)
    eventPlayer.BotAbilityLock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Moira Ability 1 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero moira
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD > eventPlayer.LookTarget.AbilityReactChance * 2

    
    wait(random.uniform(0.25, 1), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(7)
    eventPlayer.BotAbilityLock[2] = false
    if RULE_CONDITION:
        goto RULE_START

        
rule "Bot Abilities: Moira Ability 2 Damage (BB1 + P)":
    @Event eachPlayer
    @Team 2
    @Hero moira
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[35] >= 1
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[3] == false

    wait(random.uniform(3,7),Wait.ABORT_WHEN_FALSE)
    eventPlayer.ProjType = "ability 2"
    SetProjectileFacing()
    wait(0.1)
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.5)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    wait(0.5)
    eventPlayer.ProjType = "off"
    SetDefaultFacing()
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(8)
    eventPlayer.BotAbilityLock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Moira Ability 2 Heal (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero moira
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[35] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.5
    @Condition eventPlayer.BotAbilityLock[3] == false

    wait(random.uniform(0.5, 1.5))
    eventPlayer.BotAbilityLock[3] = true
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.5)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    wait(0.5)
    SetDefaultFacing()
    if eventPlayer.ApplyPressure == true:
        eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(8)
    eventPlayer.BotAbilityLock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Moira Ulitmate (BB3)":
    @Event eachPlayer
    @Team 2
    @Hero moira
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[35] >= 3
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true

    wait(10 / UltFrequency)
    if random.randint(0,9) < 3:
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(8)
        wait(10 / UltFrequency)
    if RULE_CONDITION:
        goto RULE_START


### Zenyatta Bot Abilities
rule "Bot Pressure: Zenyatta Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero zenyatta
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilitySignal[1] == false

    eventPlayer.AbilityAcc = 3
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START



rule "Bot Abilities: Zenyatta Secondary (All)":
    @Event eachPlayer
    @Team 2
    @Hero zenyatta
    @Condition eventPlayer.isAlive() == true
    
    wait(random.uniform(5,10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilitySignal[1] = true
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(random.uniform(1,2.5))
    if eventPlayer.ApplyPressure == false:
        eventPlayer.forceButtonPress(Button.MELEE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.BotAbilitySignal[1] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Zenyatta Ability 2 (BB1 + P)":
    @Event eachPlayer
    @Team 2
    @Hero zenyatta
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[36] >= 1
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isUsingAbility2() == false
    
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(2)
    if RULE_CONDITION:
        goto RULE_START

rule "Bot Abilities: Zenyatta Melee (R)":

    @Event eachPlayer
    @Team 2
    @Hero zenyatta
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) <= 2.5
    
    wait(random.uniform(0.25,1), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.MELEE)
    wait(3)
    
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Zenyatta Ultimate Random (BB3)":
    @Event eachPlayer
    @Team 2
    @Hero zenyatta
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[36] >= 2
    @Condition eventPlayer.isAlive() == true

    wait(10 / UltFrequency)
    if random.randint(0,9) < 3:
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(6)
        wait(10 / UltFrequency)
    if RULE_CONDITION:
        goto RULE_START