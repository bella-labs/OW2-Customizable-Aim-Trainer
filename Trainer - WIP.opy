settings {
    "main": {
        "description": "A very customizable aim trainer - VXEAT. Movement based off VAXTA, with a new menu system allowing for in-game customiztion. Features support for any map, various new player assists, and game mode to practice while under pressure.",
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
globalvar AdvancedStrafes
globalvar AdvancedStrafesDefault
globalvar DefaultTurnRate

## Bot Hero Lists 
globalvar HeroList
globalvar DefaultHeroList
globalvar ActiveHeroList
globalvar HeroStatus
globalvar EnabledHeroCount

## Bot Settings Variables
globalvar CustomNames
globalvar BotsUseAbilities
globalvar PressureBot
globalvar PressureDiff
globalvar BotsReact

## Bot Behavior Settings
globalvar BotBehavior

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
globalvar ShowDebugInfo

## Global Menu Variables
globalvar MenuSizeHost
globalvar MenuSizePlayer
globalvar MenuToggleBotSpawn
globalvar MenuTogglePressureType
globalvar MenuTogglePressureDiff
globalvar MenuToggleBotDiff
globalvar MenuToggleBotSpeed

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
playervar MvmtIndex
playervar AltMvmt
playervar AltMvmtLock

## Bot Ability Variables
playervar Randomizer
playervar ApplyPressure
playervar LookOffset
playervar AbilityAcc
playervar OldLookTarget
playervar BotAbilityLock

## Bot Facing Variables
playervar LookTarget
playervar LtRange
playervar LtTime

## Player Modifiers
playervar MovementSpeed
playervar DefaultAmmo

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
playervar VarT
playervar VarA
playervar VarB
playervar VarC
playervar VarD
playervar DisToTar
playervar VarP
playervar VarQ
playervar VarT1
playervar VarT2
playervar ProjBeam
playervar ProjSphere
playervar CurrHero
playervar ProjType

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
subroutine MenuAction0
subroutine MenuAction1
subroutine MenuAction2
subroutine MenuAction3
subroutine MenuAction4
subroutine MenuAction5 
subroutine MenuAction6 
subroutine MenuAction7 
subroutine MenuAction8Diff
subroutine MenuAction8Abilities
subroutine MenuAction9Toggle
subroutine MenuAction9Radius
subroutine MenuAction10
subroutine MenuAction11
subroutine MenuAction12
subroutine SetMapSpawnPt
subroutine ChangePathing
subroutine MenuHud
subroutine GlobalHud
subroutine SetDefaultFacing
subroutine SetProjectileFacing
subroutine SetHealingFacing
subroutine CalculateProjectileLead
subroutine PopulateAbilityMatrix

#Activated extensions

#!extension spawnMoreDummyBots

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
    CustomNames = createWorkshopSetting(bool,   "0. UI Settings", "Custom Names for bots", true, 1)
    ShowDebugInfo = createWorkshopSetting(bool, "0. UI Settings", "Show Server Load and Coordinates", true, 2)

    ## General Bot Settings
    BotsUseAbilities = createWorkshopSetting(bool, "1. General Bot Settings (Overridden by in-game changes to settings)", "Bots use offensive / movement abilities", true, 0)
    BotsReact  = createWorkshopSetting(bool, "1. General Bot Settings (Overridden by in-game changes to settings)", "Bots React to Player", true, 0)
    NumberOfBots = createWorkshopSetting(int[1:12], "1. General Bot Settings (Overridden by in-game changes to settings)", "Number of Bots", 1, 2)


    # Pressure Mode
    MenuTogglePressureType = createWorkshopSetting(enum["off", "killable", "unkillable"], "3.1. Bot Pressure (Overridden by in-game changes to pressure)", "Bots Apply Pressure", 0, 0)
    MenuTogglePressureDiff = createWorkshopSetting(enum["easy", "medium", "hard", "aimbot"],  "3.1. Bot Pressure (Overridden by in-game changes to pressure)", "Bots Pressure Difficulty", 0, 1)
    ElimRefresh = createWorkshopSetting(bool, "3.2. Bot Pressure Modifiers", "Eliminations Reset Cooldowns", true, 0)
    HealAfterNoDmg = createWorkshopSetting(bool, "3.2. Bot Pressure Modifiers", "Restore Health After Not Taking Damage", true, 0)
    ## Bot Movement Settings
    MenuToggleBotDiff = createWorkshopSetting(enum["long strafes / custom", "very easy", "easy", "medium", "hard", "very hard", "extreme"], "4. Bot Movement (Overridden by in-game changes to movement)", "Difficulty", 4, 0)
    MenuToggleBotSpeed = createWorkshopSetting(enum["default", "lucio passive", "kitsune / shout", "lucio amp"],   "4. Bot Movement (Overridden by in-game changes to movement)", "Bot Movement Speed", 0, 1)
    DefaultRandJump = createWorkshopSetting(bool, "4. Bot Movement (Overridden by in-game changes to movement)", "Bot Jumping", true, 2)
    DefaultJumpMin = createWorkshopSetting(float[1:10], "4. Bot Movement (Overridden by in-game changes to movement)", "Bot Jumping - Minimum wait", 4.5, 3)
    DefaultJumpMax = createWorkshopSetting(float[1.5:20], "4. Bot Movement (Overridden by in-game changes to movement)", "Bot Jumping - Maximum wait", 10, 4)
    DefaultRandCrouch = createWorkshopSetting(bool, "4. Bot Movement (Overridden by in-game changes to movement)", "Bot Crouching", true, 5)
    DefaultCrouchMax = createWorkshopSetting(float[0.25:10], "4. Bot Movement (Overridden by in-game changes to movement)", "Bot Crouching - Maximum wait", 3, 6)
    DefaultMinWait = createWorkshopSetting(float[0.1:5], "4. Bot Movement (Overridden by in-game changes to movement)", "Custom Strafe Pattern - Minimum Wait", 5, 7)
    DefaultMaxWait = createWorkshopSetting(float[0.2:8], "4. Bot Movement (Overridden by in-game changes to movement)", "Custom Strafe Pattern - Maximum Wait", 8, 8)
    AdvancedStrafesDefault = createWorkshopSetting(bool, "4. Bot Movement (Overridden by in-game changes to movement)", "Advanced Strafe Patterns", false, 9)

    # Bot Spawn
    MenuToggleBotSpawn = createWorkshopSetting(bool, "5. Custom Bot Spawn (Overridden by in-game changes to spawn)", "Use Custom Spawn Point", false, 0)
    SpawnSize = createWorkshopSetting(int[0:100], "5. Custom Bot Spawn (Overridden by in-game changes to spawn)", "Spawn Size", 5, 1)
    SpawnPt = vect(createWorkshopSetting(float[-999:999], "5. Custom Bot Spawn (Overridden by in-game changes to spawn)", "Spawn x coord", 0, 1),
    createWorkshopSetting(float[-999:999], "5. Custom Bot Spawn (Overridden by in-game changes to spawn)", "Spawn y coord", 0, 1),
    createWorkshopSetting(float[-999:999], "5. Custom Bot Spawn (Overridden by in-game changes to spawn)", "Spawn z coord", 0, 1))

    ## Bot Tank Heroes Enabled
    DefaultHeroList = createWorkshopSetting(bool, "6.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "D.va", false, 0)
    DefaultHeroList.append(createWorkshopSetting(bool, "6.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Doomfist", false, 1))
    DefaultHeroList.append(createWorkshopSetting(bool, "6.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Junker Queen", false, 2))
    DefaultHeroList.append(createWorkshopSetting(bool, "6.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Orisa", true, 3))
    DefaultHeroList.append(createWorkshopSetting(bool, "6.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Ramattra", false, 4))
    DefaultHeroList.append(createWorkshopSetting(bool, "6.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Reinhardt", false, 5))
    DefaultHeroList.append(createWorkshopSetting(bool, "6.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Roadhog", false, 6))
	DefaultHeroList.append(createWorkshopSetting(bool, "6.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Sigma", false, 7))
    DefaultHeroList.append(createWorkshopSetting(bool, "6.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Winston", false, 8))
    DefaultHeroList.append(createWorkshopSetting(bool, "6.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Wrecking Ball", false, 9))
    DefaultHeroList.append(createWorkshopSetting(bool, "6.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Zarya", false, 10))
    ## Bot Damage Heroes Enabled
    DefaultHeroList.append(createWorkshopSetting(bool, "6.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Ashe", false, 0))
    DefaultHeroList.append(createWorkshopSetting(bool, "6.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Bastion", false, 1))
    DefaultHeroList.append(createWorkshopSetting(bool, "6.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Cassidy", false, 2))
	DefaultHeroList.append(createWorkshopSetting(bool, "6.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Echo", false, 3))
    DefaultHeroList.append(createWorkshopSetting(bool, "6.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Genji", false, 4))
    DefaultHeroList.append(createWorkshopSetting(bool, "6.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Hanzo", false, 5))
    DefaultHeroList.append(createWorkshopSetting(bool, "6.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Junkrat", false, 6))
    DefaultHeroList.append(createWorkshopSetting(bool, "6.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Mei", false, 7))
    DefaultHeroList.append(createWorkshopSetting(bool, "6.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Pharah", false, 8))
    DefaultHeroList.append(createWorkshopSetting(bool, "6.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Reaper", false, 9))
	DefaultHeroList.append(createWorkshopSetting(bool, "6.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Sojourn", false, 10))
    DefaultHeroList.append(createWorkshopSetting(bool, "6.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Soldier 76", false, 11))
    DefaultHeroList.append(createWorkshopSetting(bool, "6.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Sombra", false, 12))
    DefaultHeroList.append(createWorkshopSetting(bool, "6.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Symmetra", false, 13))
    DefaultHeroList.append(createWorkshopSetting(bool, "6.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Torbjörn", false, 14))
	DefaultHeroList.append(createWorkshopSetting(bool, "6.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Tracer", false, 15))
    DefaultHeroList.append(createWorkshopSetting(bool, "6.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Widowmaker", false, 16))
    ## Bot Support Heroes Enabled
    DefaultHeroList.append(createWorkshopSetting(bool, "6.3. Bot Support Heroes (Overridden by in-game changes to bot heroes)", "Ana", false, 0))
    DefaultHeroList.append(createWorkshopSetting(bool, "6.3. Bot Support Heroes (Overridden by in-game changes to bot heroes)", "Baptiste", false, 1))
	DefaultHeroList.append(createWorkshopSetting(bool, "6.3. Bot Support Heroes (Overridden by in-game changes to bot heroes)", "Brigitte", false, 2))
    DefaultHeroList.append(createWorkshopSetting(bool, "6.3. Bot Support Heroes (Overridden by in-game changes to bot heroes)", "Kiriko", false, 3))
    DefaultHeroList.append(createWorkshopSetting(bool, "6.3. Bot Support Heroes (Overridden by in-game changes to bot heroes)", "Lúcio", false, 4))
    DefaultHeroList.append(createWorkshopSetting(bool, "6.3. Bot Support Heroes (Overridden by in-game changes to bot heroes)", "Mercy", false, 5))
    DefaultHeroList.append(createWorkshopSetting(bool, "6.3. Bot Support Heroes (Overridden by in-game changes to bot heroes)", "Moira", false, 6))
    DefaultHeroList.append(createWorkshopSetting(bool, "6.3. Bot Support Heroes (Overridden by in-game changes to bot heroes)", "Zenyatta", false, 7))
    ## Bot tank Behavior (index 0 - 10)
    BotBehavior = createWorkshopSetting(enum["Boosters, Missiles, Remech", "Boosters, Missiles, Remech, Matrix", "Boosters, Missiles, Remech, Matrix, Bomb"], "7.1. Tank Bot Behavior", "Dva Bot Behavior", 2, 0)
    BotBehavior.append(createWorkshopSetting(enum["Slam, Punch", "Slam, Punch, Block", "Slam, Punch, Block, Meteor"], "7.1. Tank Bot Behavior", "Doomfist Bot Behavior", 2, 1))
    BotBehavior.append(createWorkshopSetting(enum["Blade, Axe", "Blade, Axe, Shout", "Blade, Axe, Shout, Rampage"], "7.1. Tank Bot Behavior", "Junker Queen Bot Behavior", 2, 2))
    BotBehavior.append(createWorkshopSetting(enum["Javlin", "Javlin, Fortify, Spin", "Javlin, Fortify, Spin, Terra Surge"], "7.1. Tank Bot Behavior", "Orisa Bot Behavior", 2, 3))
    BotBehavior.append(createWorkshopSetting(enum["Omnic", "Omnic, Nemesis", "Omnic, Nemesis, Vortex, Shield, Block", "Omnic, Nemesis, Vortex, Shield, Block, Suffer"], "7.1. Tank Bot Behavior", "Ramattra Bot Behavior", 3, 4))
    BotBehavior.append(createWorkshopSetting(enum["Fire Strike", "Fire Strike, Pin, Shatter", "Fire Strike,Pin, Shatter, Shield"], "7.1. Tank Bot Behavior", "Reinhardt Bot Behavior", 0, 5))
    BotBehavior.append(createWorkshopSetting(enum["Hook", "Hook, Heal",  "Hook, Heal, Whole Hog"], "7.1. Tank Bot Behavior", "Roadhog Bot Behavior", 0, 6))
	BotBehavior.append(createWorkshopSetting(enum["Rock", "Rock, Flux", "Rock, Flux, Shield, Grasp"], "7.1. Tank Bot Behavior", "Sigma Bot Behavior", 0, 7))
    BotBehavior.append(createWorkshopSetting(enum["Leap", "Leap, Primal", "Leap, Primal, Bubble"], "7.1. Tank Bot Behavior", "Winston Bot Behavior", 0, 8))
    BotBehavior.append(createWorkshopSetting(enum["Roll", "Roll, Slam", "Roll, Slam, Shield", "Roll, Slam, Shields, Mines"], "7.1. Tank Bot Behavior", "Wrecking Ball Bot Behavior", 0, 9))
    BotBehavior.append(createWorkshopSetting(enum["Rocket Jump", "Rocket Jump, Self Bubble, Friendly Bubble", "Rocket Jump, Self Bubble, Friendly Bubble, Graviton Surge"], "7.1. Tank Bot Behavior", "Zarya Bot Behavior", 0, 10))
    ## Damage Bot Behavior (index 11 - 27)
    BotBehavior.append(createWorkshopSetting(enum["Coach", "Coach, Dynamite", "Coach, Dynamite, Bob"], "7.2. Damage Bot Behavior", "Ashe Bot Behavior", 0, 0))
    BotBehavior.append(createWorkshopSetting(enum["Recon", "Recon, Assault", "Recon, Assault, Nade"], "7.2. Damage Bot Behavior", "Bastion Bot Behavior", 0, 1))
    BotBehavior.append(createWorkshopSetting(enum["Roll", "Roll, Nade", "Roll, Nade, Noon"], "7.2. Damage Bot Behavior", "Cassidy Bot Behavior", 0, 2))
	BotBehavior.append(createWorkshopSetting(enum["Flight", "Flight, Stickies", "Flight, Stickies, Beam"], "7.2. Damage Bot Behavior", "Echo Bot Behavior", 0, 3))
    BotBehavior.append(createWorkshopSetting(enum["Dash", "Dash, Deflect", "Dash, Block, Blade"], "7.2. Damage Bot Behavior", "Genji Bot Behavior", 0, 4))
    BotBehavior.append(createWorkshopSetting(enum["Jump", "Jump, Storm Arrows", "Jump, Storm Arrows, Dragon"], "7.2. Damage Bot Behavior", "Hanzo Bot Behavior", 0, 5))
    BotBehavior.append(createWorkshopSetting(enum["Conc", "Conc, Trap"], "7.2. Damage Bot Behavior", "Junkrat Bot Behavior", 0, 6))
    BotBehavior.append(createWorkshopSetting(enum["Cryo", "Cryo, Wall", "Cryo, Wall, Snowball"], "7.2. Damage Bot Behavior", "Mei Bot Behavior", 0, 7))
    BotBehavior.append(createWorkshopSetting(enum["Hover, Jump Jet", "Hover, Jump Jet, Conc", "Hover, Jump Jet, Conc, Barrage"], "7.2. Damage Bot Behavior", "Pharah Bot Behavior", 0, 8))
    BotBehavior.append(createWorkshopSetting(enum["Wraith", "Wraith, Teleport", "Wraith, Teleport, Blossom"], "7.2. Damage Bot Behavior", "Reaper Bot Behavior", 0, 9))
    BotBehavior.append(createWorkshopSetting(enum["Slide, Rail", "Slide, Rail, Orb", "Slide, Rail, Orb, Overclock"], "7.2. Damage Bot Behavior", "Sojourn Bot Behavior", 0, 10))
	BotBehavior.append(createWorkshopSetting(enum["Rocket", "Rocket, Heal"], "7.2. Damage Bot Behavior", "Soldier 76 Bot Behavior", 0, 11))
    BotBehavior.append(createWorkshopSetting(enum["Translocate", "Translocate, Invisibility", "Translocate, Invisibility, Hack", "Translocate, Invisibility, Hack, EMP"], "7.2. Damage Bot Behavior", "Sombra Bot Behavior", 0, 12))
    BotBehavior.append(createWorkshopSetting(enum["None", "Wall"], "7.2. Damage Bot Behavior", "Symmetra Bot Behavior", 0, 13))
    BotBehavior.append(createWorkshopSetting(enum["Overload", "Overload, Molten Core"], "7.2. Damage Bot Behavior", "Torbjörn Bot Behavior", 0, 14))
    BotBehavior.append(createWorkshopSetting(enum["Blink", "Blink, Recall", "Blink, Recall, Pulse"], "7.2. Damage Bot Behavior", "Tracer Bot Behavior", 0, 15))
	BotBehavior.append(createWorkshopSetting(enum["None", "Mine"], "7.2. Damage Bot Behavior", "Widowmaker Bot Behavior", 0, 16))
    ## Bot Support Heroes (index 28 - 35)
    BotBehavior.append(createWorkshopSetting(enum["Sleep", "Sleep, Damage Nade", "Sleep, Damage + Self Nade"], "7.3. Support Bot Behavior", "Ana Bot Behavior", 0, 0))
    BotBehavior.append(createWorkshopSetting(enum["Exo Boots", "Exo Boots, Window", "Exo Boots, Window, Regen, Immo"], "7.3. Support Bot Behavior", "Baptiste Bot Behavior", 0, 1))
	BotBehavior.append(createWorkshopSetting(enum["Whip Shot, Bash", "Whip Shot, Bash, Shield", "Whip Shot, Bash, Shield, Rally"], "7.3. Support Bot Behavior", "Brigitte Bot Behavior", 0, 2))
    BotBehavior.append(createWorkshopSetting(enum["TP, Suzu", "TP, Suzu, Kitsune"], "7.3. Support Bot Behavior", "Kiriko Bot Behavior", 0, 3))
    BotBehavior.append(createWorkshopSetting(enum["Boop", "Boop, Amp", "Boop, Amp, Beat"], "7.3. Support Bot Behavior", "Lúcio Bot Behavior", 0, 4))
    BotBehavior.append(createWorkshopSetting(enum["Damage Boost", "Damage Boost, Valkyrie", "Healing Boost, Valkyrie", "Damage + Healing Boost, Valkyrie"], "7.3. Support Bot Behavior", "Mercy Bot Behavior", 0, 5))
    BotBehavior.append(createWorkshopSetting(enum["Fade", "Fade, Damage Orb", "Fade, Damage + Heal Orb", "Fade, Damage + Heal Orb, Coalescence",], "7.3. Support Bot Behavior", "Moira Bot Behavior", 0, 6))
    BotBehavior.append(createWorkshopSetting(enum["None", "Discord", "Discord, Transcendence"], "7.3. Support Bot Behavior", "Zenyatta Bot Behavior", 0, 7))


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
        PressureDiff = 1.00
    elif MenuTogglePressureDiff == 1:
        MenuTogglePressureDiff = "medium"
        PressureDiff = 0.75
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

    ## Default Variables
    MenuSizeHost = 12
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
    HeroList.append(Hero.LUCIO)
    HeroList.append(Hero.MERCY)
    HeroList.append(Hero.MOIRA)
    HeroList.append(Hero.ZENYATTA)


rule "Initialize: Bot Hero Variables":

    wait(2)
    for Index in range(len(HeroList)):
        if DefaultHeroList[Index] ==  true:
            ActiveHeroList.append(HeroList[Index])
            HeroStatus[Index] = "on"
            EnabledHeroCount += 1
        else:
            HeroStatus[Index] = "off"

    del ActiveHeroList[0]
    ActiveHeroList = random.shuffle(ActiveHeroList)
    MenuAction8Diff()
    CreateAllBots()


# Lobby Rules
rule "Player Joined: Team 1 Defaults":
    @Event playerJoined
    @Team 1
    
    eventPlayer.MovementSpeed = 100
    eventPlayer.BotSettingsChanged = false
    MenuHud()
    GlobalHud()

rule "Player Joined: Team 2 Defaults":
    @Event playerJoined
    @Team 2

    eventPlayer.MovementSpeed = 100
rule "Player Spawned":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    
    Playerlist.append(eventPlayer)
    eventPlayer.DefaultAmmo = eventPlayer.getMaxAmmo(0)
    eventPlayer.teleport(SpawnPt)
    eventPlayer.Menu_On = false
    eventPlayer.allowButton(Button.PRIMARY_FIRE)
    eventPlayer.allowButton(Button.SECONDARY_FIRE)
    eventPlayer.allowButton(Button.JUMP)
    eventPlayer.allowButton(Button.ABILITY_1)
    eventPlayer.allowButton(Button.ABILITY_2)
    eventPlayer.allowButton(Button.ULTIMATE)
    eventPlayer.setStatusEffect(eventPlayer, Status.UNKILLABLE, 9999)
    eventPlayer.DmgDealt = 0
    eventPlayer.DmgTaken = 0
    eventPlayer.BotAbilityLock = [false, false, false, false, false]
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


# UI Elements
def GlobalHud():
    @Name "SUB: GlobalHud"
    
    hudSubtext(eventPlayer, "Elims:  {0}".format(ceil(eventPlayer.Kills)), HudPosition.LEFT, -1, Color.RED, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(eventPlayer, "Elims/min:  {0}".format(ceil(eventPlayer.Kills / (eventPlayer.Timer / 60))), HudPosition.LEFT, -0.9, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(eventPlayer, "Accuracy:  {0}  %".format(ceil(100 * eventPlayer.getHeroStatistic(eventPlayer.getCurrentHero(), HeroStat.WEAPON_ACCURACY))), HudPosition.LEFT, -0.8, Color.LIME_GREEN, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(eventPlayer, "Crit Accuracy:  {0}  %".format(ceil(100 * eventPlayer.getHeroStatistic(eventPlayer.getCurrentHero(), HeroStat.CRITICAL_HIT_ACCURACY))), HudPosition.LEFT, -0.7, Color.TURQUOISE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(eventPlayer, "Target Distance:  {0} m".format(round(distance(eventPlayer.getPlayerClosestToReticle(Team.2).getEyePosition(), eventPlayer.getEyePosition()))), HudPosition.LEFT, -0.6, Color.BLUE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)

    hudSubheader(eventPlayer, "CODE: VXEAT", HudPosition.RIGHT, -1, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    
    if ShowDebugInfo:
        hudSubheader(hostPlayer, "Load (Curr/Avg/Peak):  {0}  /  {1}  /  {2}".format(getServerLoad(),getAverageServerLoad(),getPeakServerLoad()), HudPosition.RIGHT, -0.9, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        hudSubheader(eventPlayer, "Coord: ({0},{1},{2})".format(eventPlayer.getPosition().x,eventPlayer.getPosition().y,eventPlayer.getPosition().z), HudPosition.RIGHT, -0.89, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        hudSubheader(eventPlayer, "Ability Profile: ({0}%  E:{1}  B:{2}  D:{3}  S:{4})".format(hostPlayer.AbilityReactChance, hostPlayer.PlayerUsedEatCD, hostPlayer.PlayerUsedBlockCD, hostPlayer.PlayerUsedDodgeCD, hostPlayer.PlayerUsedStunCD), HudPosition.RIGHT, -0.89, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        hudSubheader(eventPlayer, "Response Times: {0}/{1}/{2}/{3}/{4})".format(hostPlayer.PlayerReactMatrix[0], hostPlayer.PlayerReactMatrix[1], hostPlayer.PlayerReactMatrix[2], hostPlayer.PlayerReactMatrix[3], hostPlayer.PlayerReactMatrix[4]), HudPosition.RIGHT, -0.88, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)

def MenuHud():
    @Name "MenuHUD"

    eventPlayer.MenuIndex = 0
    eventPlayer.BotMenuIndex = 0
    eventPlayer.MenuToggleMercy = "off"
    eventPlayer.MenuToggleAna = "off"
    eventPlayer.MenuToggleKiriko = "off"
    eventPlayer.MenuToggleSelfSpeed = 100
    eventPlayer.MenuToggleProjectile = "off"
    eventPlayer.MenuToggleInfAmmo = false
    
    eventPlayer.ProjType = "off"
    eventPlayer.ProjBeam = null
    eventPlayer.ProjType = null

    # Pressure Damage Data
    hudSubtext([i for i in eventPlayer if MenuTogglePressureType != "off"], 
    "KDR:  {0}".format(eventPlayer.Kills / eventPlayer.Deaths), HudPosition.LEFT, -1.01, Color.ROSE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext([i for i in eventPlayer if MenuTogglePressureType != "off"], 
    "Deaths:  {0}".format(eventPlayer.Deaths), HudPosition.LEFT, -0.98, Color.ORANGE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext([i for i in eventPlayer if MenuTogglePressureType != "off"], 
    "Net Damage:  {0}".format(eventPlayer.DmgDealt - eventPlayer.DmgTaken), HudPosition.LEFT, -0.5, Color.PURPLE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    # Settings Headers
    hudSubheader([i for i in eventPlayer if not eventPlayer.Menu_On], 
    "Press  {0}  to change settings".format(buttonString(Button.INTERACT)), HudPosition.LEFT, -0.3, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On], 
    "Press  {0}  to close menu".format(buttonString(Button.INTERACT)), HudPosition.LEFT, -0.3, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On], 
    "—  Controls  —", HudPosition.LEFT, -0.2, Color.BLACK, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On], 
    "Navigation: WASD/Joystick", HudPosition.LEFT, -0.1, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On], 
    "Toggle Selection:  {0}/{1}".format(buttonString(Button.PRIMARY_FIRE),buttonString(Button.ABILITY_2)), HudPosition.LEFT, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On], 
    "Help:  {0}/{1}".format(buttonString(Button.SECONDARY_FIRE),buttonString(Button.ABILITY_1)), HudPosition.LEFT, 0.1, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    
    # Player Settings Header
    hudHeader([i for i in eventPlayer if eventPlayer.Menu_On], 
    "Player Settings".format(buttonString(Button.ABILITY_2)), HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
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


    # 10th Option - Projectile Leading Guide
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

    # 11th Option - Inf Ammo
    ## Case: Index Off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex != 6], 
    "Infinite Ammo", HudPosition.TOP, 7, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: Index On, setting off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 6 and eventPlayer.MenuToggleInfAmmo == false], 
    "■  Infinite Ammo: off", HudPosition.TOP, 7, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: Index On, setting on
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 6 and eventPlayer.MenuToggleInfAmmo == true], 
    "■  Infinite Ammo: on", HudPosition.TOP, 7, Color.GREEN, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)

    if eventPlayer == hostPlayer:
    # Header
    hudHeader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer == hostPlayer], 
    "Bot Settings".format(buttonString(Button.ABILITY_2)), HudPosition.TOP, 8, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    # 5th Option - Bot Speed
        ## Case: index off / option off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex != 7 and eventPlayer == hostPlayer], 
    "Bot Movement Speed", HudPosition.TOP, 9, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option 100
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and  eventPlayer.MenuIndex == 7 and MenuToggleBotSpeed == 100], 
    "■  Default Movement Speed".format(MenuToggleBotSpeed), HudPosition.TOP, 9, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option 125
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 7 and MenuToggleBotSpeed == 125], 
    "■  ←  Lucio Passive Speed  →".format(MenuToggleBotSpeed), HudPosition.TOP, 9, Color.LIME_GREEN, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option 130
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 7 and MenuToggleBotSpeed == 130], 
    "■  ←  Kitsune / Shout Speed  →".format(MenuToggleBotSpeed), HudPosition.TOP, 9, Color.ROSE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option 125
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 7 and MenuToggleBotSpeed == 160], 
    "■  ←  Lucio Amp Speed  →".format(MenuToggleBotSpeed), HudPosition.TOP, 9, Color.GREEN, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
       
    # 6th Option - Bot Difficulty
        ## Case: index off / option off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex != 8 and eventPlayer == hostPlayer], 
    "Bot Movement", HudPosition.TOP, 10, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option long strafes
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 8 and MenuToggleBotDiff == 0], 
    "■  Use Abilities:  {0}  |  ←  long strafes / custom  → ".format(BotsUseAbilities), HudPosition.TOP, 10, Color.SKY_BLUE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option very easy
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 8 and MenuToggleBotDiff == 1], 
    "■  Use Abilities:  {0}  |  ←  very easy  → ".format(BotsUseAbilities), HudPosition.TOP, 10, Color.GREEN, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option easy
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 8 and MenuToggleBotDiff == 2], 
    "■  Use Abilities:  {0}  |  ←  easy  → ".format(BotsUseAbilities), HudPosition.TOP, 10, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option medium
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 8 and MenuToggleBotDiff == 3], 
    "■  Use Abilities:  {0}  |  ←  medium  → ".format(BotsUseAbilities), HudPosition.TOP, 10, Color.ORANGE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option hard
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 8 and MenuToggleBotDiff == 4], 
    "■  Use Abilities:  {0}  |  ←  hard  → ".format(BotsUseAbilities), HudPosition.TOP, 10, Color.ROSE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option very hard
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 8 and MenuToggleBotDiff == 5], 
    "■  Use Abilities:  {0}  |  ←  very hard  → ".format(BotsUseAbilities), HudPosition.TOP, 10, Color.RED, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / option extreme
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 8 and MenuToggleBotDiff == 6], 
    "■  Use Abilities:  {0}  |  ←  extreme  → ".format(BotsUseAbilities), HudPosition.TOP, 10, Color.BLACK, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)


    # 7th Option - Bot Spawn Point
        ## Case: index off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex != 9 and eventPlayer == hostPlayer], 
    "Set Custom Spawn Point", HudPosition.TOP, 11, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    ## Case: index on / default
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 9 and MenuToggleBotSpawn == "default"], 
    "■ Custom Spawn Disabled", HudPosition.TOP, 11, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / default
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 9 and MenuToggleBotSpawn == "custom"], 
    "■  Custom Spawn Radius: ←  {0}  →".format(SpawnSize), HudPosition.TOP, 11, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)

    # 8th Option - Increment Bot Count
    ## Case: index off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex != 10 and eventPlayer == hostPlayer], 
    "Change Bot Count", HudPosition.TOP, 12, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    ## Case: index on / default
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 10], 
    "■  Bot Count: ←  {0}  →".format(NumberOfBots), HudPosition.TOP, 12, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)

    # 9th Option - Bot Heros
        ## Case: index off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex != 11 and eventPlayer == hostPlayer], 
    "Select Bot Heroes", HudPosition.TOP, 13, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 11], 
    "■  {0}  {1}".format(HeroList[eventPlayer.BotMenuIndex],HeroStatus[eventPlayer.BotMenuIndex]), HudPosition.TOP, 13, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Submenu Hero Select Off
    hudHeader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 11 and HeroStatus[eventPlayer.BotMenuIndex] == "off"], 
    "←  {0}  →".format(heroIcon(HeroList[eventPlayer.BotMenuIndex])), HudPosition.TOP, 14, Color.RED, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Submenu Hero Select On
    hudHeader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 11 and HeroStatus[eventPlayer.BotMenuIndex] == "on"], 
    "←  {0}  →".format(heroIcon(HeroList[eventPlayer.BotMenuIndex])), HudPosition.TOP, 14, Color.GREEN, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)

    # Header
    hudHeader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer == hostPlayer], 
    "Game Modes".format(buttonString(Button.ABILITY_2)), HudPosition.TOP, 15, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    # 12th Option - Pressure Mode
        ## Case: index off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex != 12 and eventPlayer == hostPlayer], 
    "Pressure mode", HudPosition.TOP, 16, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / mode off
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 12 and MenuTogglePressureType == "off"], 
    "■  Pressure Mode: Off", HudPosition.TOP, 16, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        ## Case: index on / mode on
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 12 and MenuTogglePressureType != "off" and MenuTogglePressureDiff == "easy"], 
    "■  Bots  {0}  : ←  {1}  →".format(MenuTogglePressureType, MenuTogglePressureDiff), HudPosition.TOP, 16, Color.GREEN, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    ## Case: index on / mode on
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 12 and MenuTogglePressureType != "off" and MenuTogglePressureDiff == "medium"], 
    "■  Bots  {0}  : ←  {1}  →".format(MenuTogglePressureType, MenuTogglePressureDiff), HudPosition.TOP, 16, Color.ORANGE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    ## Case: index on / mode on
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 12 and MenuTogglePressureType != "off" and MenuTogglePressureDiff == "hard"], 
    "■  Bots  {0}  : ←  {1}  →".format(MenuTogglePressureType, MenuTogglePressureDiff), HudPosition.TOP, 16, Color.RED, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    ## Case: index on / mode on
    hudSubheader([i for i in eventPlayer if eventPlayer.Menu_On and eventPlayer.MenuIndex == 12 and MenuTogglePressureType != "off" and MenuTogglePressureDiff == "aimbot"], 
    "■  Bots  {0}  : ←  {1}  →".format(MenuTogglePressureType, MenuTogglePressureDiff), HudPosition.TOP, 16, Color.BLACK, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)




# Player Menu
rule "Menu Controls: Toggle Menu":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    
    if eventPlayer.Menu_On:
        eventPlayer.Menu_On = false
        eventPlayer.allowButton(Button.PRIMARY_FIRE)
        eventPlayer.allowButton(Button.SECONDARY_FIRE)
        eventPlayer.allowButton(Button.JUMP)
        eventPlayer.allowButton(Button.ABILITY_1)
        eventPlayer.allowButton(Button.ABILITY_2)
        eventPlayer.allowButton(Button.ULTIMATE)
        eventPlayer.setMoveSpeed(eventPlayer.MovementSpeed)
    else:
        eventPlayer.Menu_On = true


rule "Menu Controls: Toggle On Setup":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.Menu_On == true

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

    eventPlayer.allowButton(Button.PRIMARY_FIRE)
    eventPlayer.allowButton(Button.SECONDARY_FIRE)
    eventPlayer.allowButton(Button.JUMP)
    eventPlayer.allowButton(Button.ABILITY_1)
    eventPlayer.allowButton(Button.ABILITY_2)
    eventPlayer.allowButton(Button.ULTIMATE)
    eventPlayer.setMoveSpeed(eventPlayer.MovementSpeed)
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
        MenuAction4()
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
    elif eventPlayer.MenuIndex == 7 and MenuToggleBotSpeed != 100:
        if MenuToggleBotSpeed == 125:
            MenuToggleBotSpeed = 130
        elif MenuToggleBotSpeed == 130:
            MenuToggleBotSpeed = 160
        elif MenuToggleBotSpeed == 160:
            MenuToggleBotSpeed = 125
        MenuAction7()
    elif eventPlayer.MenuIndex == 8:
        if MenuToggleBotDiff == 6:
            MenuToggleBotDiff = 0
        else:
            MenuToggleBotDiff += 1
        MenuAction8Diff()
    elif eventPlayer.MenuIndex == 9 and MenuToggleBotSpawn == "custom":
        SpawnSize += 1
        MenuAction9Radius()
    elif eventPlayer.MenuIndex == 10:
        if NumberOfBots == 12:
            NumberOfBots = 1
        else:
            NumberOfBots += 1 
        MenuAction10()
    elif eventPlayer.MenuIndex == 11:
        if eventPlayer.BotMenuIndex == 35:
            eventPlayer.BotMenuIndex = 0
        else:
            eventPlayer.BotMenuIndex += 1 
    elif eventPlayer.MenuIndex == 12 and MenuTogglePressureType != "off":
        if MenuTogglePressureDiff == "easy":
            MenuTogglePressureDiff = "medium"
            PressureDiff = 0.75
        elif MenuTogglePressureDiff == "medium":
            MenuTogglePressureDiff = "hard"
            PressureDiff = 0.50
        elif MenuTogglePressureDiff == "hard":
            MenuTogglePressureDiff = "aimbot"
            PressureDiff = 0.00
        elif MenuTogglePressureDiff == "aimbot":
            MenuTogglePressureDiff = "easy"
            PressureDiff = 1.00


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
        MenuAction4()
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
    elif eventPlayer.MenuIndex == 7 and MenuToggleBotSpeed != 100:
        if MenuToggleBotSpeed == 160:
            MenuToggleBotSpeed = 130
        elif MenuToggleBotSpeed == 130:
            MenuToggleBotSpeed = 125
        elif MenuToggleBotSpeed == 125:
            MenuToggleBotSpeed = 160
        MenuAction7()
    elif eventPlayer.MenuIndex == 8:
        if MenuToggleBotDiff == 0:
            MenuToggleBotDiff = 6
        else:
            MenuToggleBotDiff -= 1
        MenuAction8Diff()
    elif eventPlayer.MenuIndex == 9 and MenuToggleBotSpawn == "custom" and SpawnSize > 0:
        SpawnSize -= 1
        MenuAction9Radius()
    elif eventPlayer.MenuIndex == 10:
        if NumberOfBots == 1:
            NumberOfBots = 12
        else:
            NumberOfBots -= 1
        MenuAction10()
    elif eventPlayer.MenuIndex == 11:
        if eventPlayer.BotMenuIndex == 0:
            eventPlayer.BotMenuIndex = 35
        else:
            eventPlayer.BotMenuIndex -= 1
    elif eventPlayer.MenuIndex == 12 and MenuTogglePressureType != "off":
        if MenuTogglePressureDiff == "aimbot":
            MenuTogglePressureDiff = "hard"
            PressureDiff = 0.50
        elif MenuTogglePressureDiff == "hard":
            MenuTogglePressureDiff = "medium"
            PressureDiff = 0.75
        elif MenuTogglePressureDiff == "medium":
            MenuTogglePressureDiff = "easy"
            PressureDiff = 1.00
        elif MenuTogglePressureDiff == "easy":
            MenuTogglePressureDiff = "aimbot"
            PressureDiff = 0.00

rule "Menu Control: Ability 2 / Primary Toggle":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.Menu_On == true
    @Condition (eventPlayer.isHoldingButton(Button.ABILITY_2) == true or eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) == true) == true
    
    if eventPlayer.MenuIndex == 0:
        MenuAction0()
    elif eventPlayer.MenuIndex == 1:
        MenuAction1()
    elif eventPlayer.MenuIndex == 2:
        MenuAction2()
    elif eventPlayer.MenuIndex == 3:
        MenuAction3()
    elif eventPlayer.MenuIndex == 4:
        if eventPlayer.MenuToggleSelfSpeed == 100:
            eventPlayer.MenuToggleSelfSpeed = 125
        else:
            eventPlayer.MenuToggleSelfSpeed = 100
        MenuAction4()
    elif eventPlayer.MenuIndex == 5:
        if eventPlayer.MenuToggleProjectile == "off":
            eventPlayer.MenuToggleProjectile = "on"
            eventPlayer.ProjType = "primary"
        else:
            eventPlayer.MenuToggleProjectile = "off"
            eventPlayer.ProjType = "off"
        MenuAction5()
    elif eventPlayer.MenuIndex == 6:
        MenuAction6()
    elif eventPlayer.MenuIndex == 7:
        if MenuToggleBotSpeed == 100:
            MenuToggleBotSpeed = 125
        else:
            MenuToggleBotSpeed = 100
        MenuAction7()
    elif eventPlayer.MenuIndex == 8:
        MenuAction8Abilities()
    elif eventPlayer.MenuIndex == 9:
        MenuAction9Toggle()
    elif eventPlayer.MenuIndex == 10:
        if NumberOfBots < 12:
            NumberOfBots += 1
        else:
            NumberOfBots = 1
        MenuAction10()
    elif eventPlayer.MenuIndex == 11:
        MenuAction11()
    elif eventPlayer.MenuIndex == 12:
        MenuAction12()
    

rule "Menu Control: Ability 1 / Secondary":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.Menu_On == true
    @Condition (eventPlayer.isHoldingButton(Button.ABILITY_1) == true or eventPlayer.isHoldingButton(Button.SECONDARY_FIRE) == true) == true
    
    if eventPlayer.MenuIndex == 0:
        smallMessage(eventPlayer, "    Returns you to the hero select screen.")
    elif eventPlayer.MenuIndex == 1:
        smallMessage(eventPlayer, "    Toggles Mercy's damage boost.")
    elif eventPlayer.MenuIndex == 2:
        smallMessage(eventPlayer, "    Toggles Ana's nano boost. Refreshes until disabled.")
    elif eventPlayer.MenuIndex == 3:
        smallMessage(eventPlayer, "    Toggles Kirikos's kitsune rush. Refreshes until disabled.")
        wait(1)
        smallMessage(eventPlayer, "    Spawns in the direction you are facing.")
    elif eventPlayer.MenuIndex == 4:
        smallMessage(eventPlayer, "    Toggle to enable/disable player speed boost.")
        wait(1)
        smallMessage(eventPlayer, "    Use left/right movement to select from various speed effects.")
    elif eventPlayer.MenuIndex == 5:
        smallMessage(eventPlayer, "    Toggles a orb showing where to lead a projectile, based on the bots current movement.")
        wait(1)
        smallMessage(eventPlayer, "    Use left/right movement to select different hero abilities. Marked green if projectile, red if non-projectile.")
        wait(1)
        smallMessage(eventPlayer, "    Does not account for gravity.")
    elif eventPlayer.MenuIndex == 6:
        smallMessage(eventPlayer, "    Toggles infinite ammo.")
        wait(1)
        smallMessage(eventPlayer, "    As of Season 3 does not work Junker Queen, Orisa, Ramattra, or Kiriko.")
        wait(1)
        smallMessage(eventPlayer, "    Use 'No Ammo Requirement' Setting under the heroes tab for these heroes.")
    elif eventPlayer.MenuIndex == 7:
        smallMessage(eventPlayer, "    Toggle to enable/disable bot speed boost")
        wait(1)
        smallMessage(eventPlayer, "    Use left/right movement to select from various speed effects.")
    elif eventPlayer.MenuIndex == 8:
        smallMessage(eventPlayer, "    Toggle to enable/disable bot ability usage.")
        wait(1)
        smallMessage(eventPlayer, "    Use left/right movement to select different strafe patterns.")
        if MenuToggleBotDiff == 6:
            smallMessage(eventPlayer, "    'Extreme' setting includes more variance in strafe pattern and more complex ability usage.")
        elif MenuToggleBotDiff == 0:
            smallMessage(eventPlayer, "    'Long Strafes' setting has no jumping or crouching. Useful for learning to lead projectiles. Overriden by workshop settings.")
    elif eventPlayer.MenuIndex == 9:
        smallMessage(eventPlayer, "    Toggles bots to spawn at your current position.")
        wait(1)
        smallMessage(eventPlayer, "    Use left/right movement to change the boundaries for the bots movement. Movement abilities may surpass these bounds.")
        wait(1)
        smallMessage(eventPlayer, "    Refreshes all bots when changed.")
    elif eventPlayer.MenuIndex == 10:
        smallMessage(eventPlayer, "    Changes the number of bots on the enemy team.")
        wait(1)
        smallMessage(eventPlayer, "    Use left/right movement to change count.")
        wait(1)
        smallMessage(eventPlayer, "    Refreshes all bots when changed.")
    elif eventPlayer.MenuIndex == 11:
        smallMessage(eventPlayer, "    Toggle to add/remove the selected hero from the list of heroes bots that can possibly spawn.")
        wait(1)
        smallMessage(eventPlayer, "    Use left/right movement to change hero.")
        wait(1)
        smallMessage(eventPlayer, "    Refreshes all bots when changed.")
    elif eventPlayer.MenuIndex == 12:
        smallMessage(eventPlayer, "    A game mode where the bot closest to your crosshair will attack you. Additional stats are displayed at the top left.")
        wait(1)
        smallMessage(eventPlayer, "    Use left/right movement to change bot accuracy. Projectile Heroes will lead abilities, but will not account for gravity.")
        wait(1)
        smallMessage(eventPlayer, "    Killable bots can die. Unkillable bots maintain max health at all times. Unkillable bots are useful for practicing 1v1s.")



def MenuAction0():
    @Name "SUB: MenuAction0"
    
    #reset certain variables
    eventPlayer.MenuToggleProjectile = "off"
    eventPlayer.ProjType = "off"
    destroyEffect(eventPlayer.ProjBeam)
    destroyEffect(eventPlayer.ProjSphere)
    eventPlayer.ProjBeam = null
    eventPlayer.ProjSphere = null
    eventPlayer.Menu_On = false
    eventPlayer.MenuToggleInfAmmo = false
    eventPlayer.allowButton(Button.PRIMARY_FIRE)
    eventPlayer.allowButton(Button.SECONDARY_FIRE)
    eventPlayer.allowButton(Button.JUMP)
    eventPlayer.allowButton(Button.ABILITY_1)
    eventPlayer.allowButton(Button.ABILITY_2)
    eventPlayer.allowButton(Button.ULTIMATE)

    stopChasingVariable(eventPlayer.Timer)
    eventPlayer.Timer = 0
    eventPlayer.Kills = 0
    eventPlayer.Deaths = 0
    eventPlayer.DmgDealt = 0
    eventPlayer.DmgTaken = 0
    eventPlayer.PlayerHeroList = getAllHeroes()
    eventPlayer.PlayerHeroList.remove(eventPlayer.getCurrentHero())
    eventPlayer.setAllowedHeroes(eventPlayer.PlayerHeroList)
    Playerlist.remove(eventPlayer)
    wait(0.1)
    eventPlayer.setAllowedHeroes(getAllHeroes())     


def MenuAction1():
    @Name "SUB: MenuAction1 - Mercy Toggle"
    
    if eventPlayer.MenuToggleMercy == "on ":
        eventPlayer.MenuToggleMercy = "off"
        smallMessage(eventPlayer, "    Deactivating Mercy Damage Boost")
        destroyDummy(Team.1, eventPlayer.getSlot() + 8)
    else:
        eventPlayer.MenuToggleMercy = "on "
        smallMessage(eventPlayer, "    Activating Mercy Damage Boost")
        createDummy(Hero.MERCY, Team.1, eventPlayer.getSlot() + 8, vect(0, 1000, 0), vect(0, 0, 0))


def MenuAction2():
    @Name "SUB: MenuAction2 - Ana Toggle"

    if eventPlayer.MenuToggleAna == "on ":
        eventPlayer.MenuToggleAna = "off"
        smallMessage(eventPlayer, "    Deactivating Nano Boost")
        destroyDummy(Team.1, eventPlayer.getSlot() + 4)
    else:
        eventPlayer.MenuToggleAna = "on "
        smallMessage(eventPlayer, "    Activating Nano Boost")
        createDummy(Hero.ANA, Team.1, eventPlayer.getSlot() + 4, vect(0, 1000, 0), vect(0, 0, 0))


def MenuAction3():
    @Name "SUB: MenuAction3 - Kiriko Toggle"
    
    if eventPlayer.MenuToggleKiriko == "on ":
        eventPlayer.MenuToggleKiriko = "off"
        smallMessage(eventPlayer, "    Deactivating Kitsune Rush")
        destroyDummy(Team.1, eventPlayer.getSlot() + 6)
    else:
        eventPlayer.MenuToggleKiriko = "on "
        smallMessage(eventPlayer, "    Activating Kitsune Rush")
        createDummy(Hero.KIRIKO, Team.1, eventPlayer.getSlot() + 6, vect(0, 1000, 0), vect(0, 0, 0))


def MenuAction4():
    @Name "SUB: MenuAction4 - Player Speed Toggle"
    
    smallMessage(eventPlayer, "    Activating {0}% Player Speed boost".format(eventPlayer.MenuToggleSelfSpeed))
    eventPlayer.MovementSpeed = eventPlayer.MovementSpeed


def MenuAction5():
    @Name "SUB: MenuAction5 - Projectile Guide (KJRR5P) Toggle"
    destroyEffect(eventPlayer.ProjBeam)
    destroyEffect(eventPlayer.ProjSphere)
    if eventPlayer.MenuToggleProjectile == "on":
        createBeam(eventPlayer, Beam.GRAPPLE, eventPlayer.AimSpot, eventPlayer.AimSpot + directionTowards(eventPlayer.AimSpot, eventPlayer.getEyePosition()) * (distance(eventPlayer.getEyePosition(), eventPlayer.AimSpot) / 2), Color.WHITE, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
        eventPlayer.ProjBeam = getLastCreatedEntity()
        createEffect(eventPlayer, Effect.SPHERE, Color.YELLOW, eventPlayer.AimSpot, 0.15, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
        eventPlayer.ProjSphere = getLastCreatedEntity()
  
    
def MenuAction6():
    @Name "SUB: MenuAction6 - Infinite Ammo Toggle"
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

    
def MenuAction7():
    @Name "SUB: MenuAction7 - Bot Speed Toggle"
    
    wait(0.1)
    smallMessage(eventPlayer, "    {0}% bot speed".format(MenuToggleBotSpeed))
    getPlayers(Team.2).setMoveSpeed(MenuToggleBotSpeed)


def MenuAction8Diff():
    @Name "SUB: MenuAction8Diff - Bot Difficulty Selection"
    RandomJumping = DefaultRandJump
    RandomCrouching = DefaultRandCrouch
    CrouchMaxWait = DefaultCrouchMax
    JumpMinWait = DefaultJumpMin
    JumpMaxWait = DefaultJumpMax
    BotUncrouchMin = 0.25
    BotUncrouchMax = 0.65
    AdvancedStrafes = AdvancedStrafesDefault
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
        smallMessage(getAllPlayers(), "    Very Hard movement pattern: Bots change direction 0.1 - 0.2")
        MoveMinWait = 0.10
        MoveMaxWait = 0.35
    elif MenuToggleBotDiff == 6:
        smallMessage(getAllPlayers(), "    Extreme movement pattern: glhf ♥")
        MoveMinWait = 0.05
        MoveMaxWait = 0.35
        CrouchMaxWait = 0.5
        BotUncrouchMin = 0.05
        BotUncrouchMax = 0.1
        JumpMinWait = 5
        JumpMaxWait = 15
        AdvancedStrafes = true


def MenuAction8Abilities():
    @Name "SUB: MenuAction8Abilities - Bot Abilities Toggle"

    BotsUseAbilities = not BotsUseAbilities
    if BotsUseAbilities:
        smallMessage(eventPlayer, "    Bots will use movement abilities.")
    else:
        smallMessage(eventPlayer, "    Bots will not use movement abilities.")


def MenuAction9Toggle():
    @Name "SUB: MenuAction9Toggle - Custom Spawn Toggle"

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


def MenuAction9Radius():
    @Name "SUB: MenuAction9Radius - Custom Spawn Boundary Selection"

    MvmtRad1 = SpawnSize
    MvmtRad2 = SpawnSize/2
    eventPlayer.BotSettingsChanged = true
    smallMessage(eventPlayer, "    Bot movement radius Set to {0}. Exit menu to refresh bots.".format(SpawnSize))


def MenuAction10():
    @Name "SUB: MenuAction10 Bot Count Selection"
    eventPlayer.BotSettingsChanged = true
    smallMessage(eventPlayer, "    Bot count updated. Exit menu to refresh bots.".format(NumberOfBots))
        

def MenuAction11():
    @Name "SUB: MenuAction11 Bot Hero Pool Selection + Toggle"

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

    
def MenuAction12():
    @Name "SUB: MenuAction12 Pressure Mode Toggle"

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


rule "Player Ability: Heal if no damage":
    @Event playerTookDamage
    @Team 1
    @Condition MenuTogglePressureType == "killable"
    @Condition HealAfterNoDmg == true
    
    wait(4, Wait.RESTART_WHEN_TRUE)
    eventPlayer.setHealth(eventPlayer.getMaxHealth())


rule "Player Ability: Heal if no damage":
    @Event playerTookDamage
    @Team 1
    @Condition MenuTogglePressureType != "killable"
    
    wait(0.25)
    eventPlayer.setHealth(eventPlayer.getMaxHealth())


rule "Player Ability: Elimination Actions":
    @Event playerDealtFinalBlow
    @Team 1
    @Condition ElimRefresh == true

    wait(1)
    eventPlayer.setAbilityCooldown(Button.PRIMARY_FIRE,0)
    eventPlayer.setAbilityCooldown(Button.SECONDARY_FIRE,0)
    eventPlayer.setAbilityCooldown(Button.ABILITY_1,0)
    eventPlayer.setAbilityCooldown(Button.ABILITY_2,0)
    eventPlayer.setHealth(eventPlayer.getMaxHealth())



rule "Player Ability: Grant Zarya Charge":
    @Event eachPlayer
    @Team 1
    @Hero zarya
    @Condition eventPlayer.isUsingAbility1() == true
    @Condition MenuTogglePressureType == "off"
    
    damage(eventPlayer, null, 200)
    eventPlayer.setHealth(eventPlayer.getMaxHealth())


rule "Player Ability: Grant Doom Power Punch":
    @Event eachPlayer
    @Team 1
    @Hero doomfist
    @Condition eventPlayer.isUsingAbility2() == true
    @Condition MenuTogglePressureType == "off"
    
    wait(0.75, Wait.ABORT_WHEN_FALSE)
    eventPlayer.startDoT(eventPlayer.getPlayerClosestToReticle(Team.2), 0.25, 800)
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


    # Player Assistant Bot Actions
rule "Assist Bot: Ana Nano":
    @Event eachPlayer
    @Team 1
    @Hero ana
    @Condition eventPlayer.hasSpawned() == true
    @Condition (getPlayersInSlot(eventPlayer.getSlot() - 4, Team.1)).isAlive() == true
    @Condition (getPlayersInSlot(eventPlayer.getSlot() - 4, Team.1)).hasSpawned() == true
    @Condition eventPlayer.isDummy() == true
    
    eventPlayer.setStatusEffect(null, Status.PHASED_OUT, 9999)
    eventPlayer.setInvisibility(Invis.ALL)
    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), (getPlayersInSlot(eventPlayer.getSlot() - 4, Team.1)).getEyePosition()), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    eventPlayer.attachTo(getPlayersInSlot(eventPlayer.getSlot() - 4, Team.1), vect(0, 5, 0))
    eventPlayer.setUltCharge(100)
    wait(0.25)
    eventPlayer.forceButtonPress(Button.ULTIMATE)
    wait(8, Wait.ABORT_WHEN_FALSE)
    goto RULE_START


rule "Assist Bot: Kiriko Kitsune Rush":
    @Event eachPlayer
    @Team 1
    @Hero kiriko
    @Condition eventPlayer.hasSpawned() == true
    @Condition (getPlayersInSlot(eventPlayer.getSlot() - 6, Team.1)).isAlive() == true
    @Condition (getPlayersInSlot(eventPlayer.getSlot() - 6, Team.1)).hasSpawned() == true
    @Condition eventPlayer.isDummy() == true
    
    eventPlayer.setStatusEffect(null, Status.PHASED_OUT, 9999)
    eventPlayer.setInvisibility(Invis.ALL)
    eventPlayer.startFacing(directionTowards( eventPlayer.getEyePosition(), (getPlayersInSlot(eventPlayer.getSlot() - 6, Team.1)).getEyePosition()), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    eventPlayer.attachTo(getPlayersInSlot(eventPlayer.getSlot() - 6, Team.1), vect(0, 0, -2))
    eventPlayer.setUltCharge(100)
    wait(0.25)
    eventPlayer.forceButtonPress(Button.ULTIMATE)
    wait(12, Wait.ABORT_WHEN_FALSE)
    goto RULE_START


rule "Assist Bot: Mercy Damage boost":
    @Event eachPlayer
    @Team 1
    @Hero mercy
    @Condition eventPlayer.hasSpawned() == true
    @Condition (getPlayersInSlot(eventPlayer.getSlot() - 8, Team.1)).isAlive() == true
    @Condition (getPlayersInSlot(eventPlayer.getSlot() - 8, Team.1)).hasSpawned() == true
    @Condition eventPlayer.isDummy() == true
    
    eventPlayer.setStatusEffect(null, Status.PHASED_OUT, 9999)
    eventPlayer.setInvisibility(Invis.ALL)
    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), (getPlayersInSlot(eventPlayer.getSlot() - 8, Team.1)).getEyePosition()), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    eventPlayer.attachTo(getPlayersInSlot(eventPlayer.getSlot() - 8, Team.1), ((getPlayersInSlot(eventPlayer.getSlot() - 8, Team.1)).getFacingDirection()) * -2)
    wait(0.25)
    eventPlayer.setWeapon(1)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)


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


rule "Stats: Pressure Mode Damage Recieved":
    @Event playerTookDamage
    @Team 1
    @Condition MenuTogglePressureType == "killable"
    @Condition eventPlayer.getHealth() <= 1
    
    eventPlayer.Deaths += 1
    bigMessage(eventPlayer, "you died.")
    eventPlayer.setHealth(eventPlayer.getMaxHealth())


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
rule "Bot Spawn: Setup":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.AltMvmt = 0

    eventPlayer.CurrHero = eventPlayer.getCurrentHero()
    if eventPlayer.CurrHero == Hero.MERCY:
        eventPlayer.LtRange = 5
        eventPlayer.LtTime = 3
        SetHealingFacing()
    else:
        eventPlayer.LtTime = 1
        eventPlayer.LtRange = 0
        SetDefaultFacing()
    eventPlayer.teleport(random.choice(eventPlayer.PathLoc))
    


rule "Bot Died: Swap Hero":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isDead() == true
    
    ResetBotPathing()
    eventPlayer.stopForcingButton(Button.ABILITY_1)
    eventPlayer.stopForcingButton(Button.ABILITY_2)
    eventPlayer.stopForcingButton(Button.CROUCH)
    eventPlayer.stopForcingButton(Button.JUMP)
    eventPlayer.stopForcingButton(Button.MELEE)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.stopForcingButton(Button.RELOAD)
    eventPlayer.stopForcingButton(Button.ULTIMATE
    )
    if getNumberOfLivingPlayers(Team.2) > 1:
        wait(3)
    if EnabledHeroCount != NumberOfBots:
        AssignNewHero()
        eventPlayer.startForcingHero(ActiveHeroList[NextHero])
        ActiveHeroList = random.shuffle(ActiveHeroList)
    wait(0.25)
    eventPlayer.resurrect()
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

rule "Bot Pathing: Movement Handler - Default":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.isAlive() == true
    @Condition AdvancedStrafes == false
    @Condition eventPlayer.AltMvmt == 0

    ChangePathing()
    wait(random.uniform(MoveMinWait, MoveMaxWait), Wait.ABORT_WHEN_FALSE)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pathing: Movement Handler - Advanced":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.isAlive() == true
    @Condition AdvancedStrafes == true
    @Condition eventPlayer.AltMvmt == 0
    
    eventPlayer.Randomizer = random.randint(0, 9)
    if eventPlayer.Randomizer < 3:
        ChangePathing()
        wait(random.uniform(MoveMinWait + eventPlayer.Randomizer * 0.25, MoveMaxWait + eventPlayer.Randomizer * 0.5), Wait.ABORT_WHEN_FALSE)
    else:            
        ChangePathing()
        wait(random.uniform(MoveMinWait, MoveMaxWait), Wait.ABORT_WHEN_FALSE)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pathing: Movement Handler - Alt Movement 1":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.isAlive() == true
    @Condition AdvancedStrafes == true
    @Condition eventPlayer.AltMvmt == 1
    
    eventPlayer.Randomizer = random.randint(0, 1)
    if eventPlayer.Randomizer == 0:
        eventPlayer.startThrottleInDirection(Vector.LEFT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
    if eventPlayer.Randomizer == 1:
        eventPlayer.startThrottleInDirection(Vector.RIGHT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
    wait(random.uniform(0.05, 0.35), Wait.ABORT_WHEN_FALSE)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pathing: Movement Handler - Alt Movement 2":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.isAlive() == true
    @Condition AdvancedStrafes == true
    @Condition eventPlayer.AltMvmt == 2

    eventPlayer.Randomizer = random.randint(0, 4)
    if eventPlayer.Randomizer == 0:
        eventPlayer.startThrottleInDirection(Vector.LEFT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
    if eventPlayer.Randomizer == 1:
        eventPlayer.startThrottleInDirection(Vector.RIGHT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
    if eventPlayer.Randomizer == 2:
        eventPlayer.startThrottleInDirection(Vector.FORWARD, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
    if eventPlayer.Randomizer == 3:
        eventPlayer.startThrottleInDirection(Vector.FORWARD + Vector.LEFT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
    if eventPlayer.Randomizer == 4:
        eventPlayer.startThrottleInDirection(Vector.FORWARD + Vector.RIGHT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
    wait(random.uniform(0.05, 0.35), Wait.ABORT_WHEN_FALSE)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pathing: Alt Movement Handler":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.isAlive() == true
    @Condition AdvancedStrafes == true
    @Condition eventPlayer.AltMvmtLock == false
    
    eventPlayer.AltMvmt = 0
    eventPlayer.Randomizer = random.randint(0, 9)
    if eventPlayer.Randomizer < 3:
        eventPlayer.AltMvmt = 1
    wait(5, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pathing: Too close to path destination":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getPosition(), eventPlayer.PathLoc[eventPlayer.PathDirection]) <= 1.5
    @Condition eventPlayer.AltMvmt == 0
    
    eventPlayer.PathIndex.remove(eventPlayer.PathDirection)
    eventPlayer.PathOldDirection = eventPlayer.PathDirection
    eventPlayer.PathDirection = random.choice(eventPlayer.PathIndex)
    eventPlayer.PathIndex.append(eventPlayer.PathOldDirection)
    eventPlayer.startThrottleInDirection(localVector(eventPlayer.PathLoc[eventPlayer.PathDirection], eventPlayer, Transform.ROTATION_AND_TRANSLATION), 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
    wait(1, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Default Movement: Bot jumping":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true
    @Condition RandomJumping == true
    @Condition eventPlayer.getCurrentHero() != Hero.GENJI
    @Condition eventPlayer.getCurrentHero() != Hero.HANZO
    @Condition eventPlayer.getCurrentHero() != Hero.BAPTISTE
    @Condition eventPlayer.getCurrentHero() != Hero.MERCY
    @Condition eventPlayer.getCurrentHero() != Hero.ECHO
    
    wait(random.uniform(JumpMinWait, JumpMaxWait), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.JUMP)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Default Movement: Bot crouching":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true
    @Condition RandomCrouching == true
    @Condition eventPlayer.getCurrentHero() != Hero.BAPTISTE
    @Condition eventPlayer.getCurrentHero() != Hero.ECHO
    @Condition eventPlayer.getCurrentHero() != Hero.PHARAH
    @Condition eventPlayer.getCurrentHero() != Hero.MERCY
    
    wait(random.uniform(0, CrouchMaxWait), Wait.ABORT_WHEN_FALSE)
    eventPlayer.startForcingButton(Button.CROUCH)
    wait(random.uniform(BotUncrouchMin, BotUncrouchMax))
    eventPlayer.stopForcingButton(Button.CROUCH)
    wait(0.35, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START

def ChangePathing():
    @Name "SUB: ChangePathing"

    eventPlayer.PathIndex.remove(eventPlayer.PathDirection)
    eventPlayer.PathOldDirection = eventPlayer.PathDirection
    eventPlayer.PathDirection = random.choice(eventPlayer.PathIndex)
    eventPlayer.PathIndex.append(eventPlayer.PathOldDirection)
    eventPlayer.startThrottleInDirection(localVector(eventPlayer.PathLoc[eventPlayer.PathDirection], eventPlayer, Transform.ROTATION_AND_TRANSLATION), 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)


def ResetBotPathing():
    @Name "SUB: ResetBotPathing"

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
    elif eventPlayer.CurrHero == Hero.ECHO:
        eventPlayer.ProjSpeed = 75
    elif eventPlayer.CurrHero == Hero.GENJI:
        eventPlayer.ProjSpeed = 60
    elif eventPlayer.CurrHero == Hero.HANZO:
        eventPlayer.ProjSpeed = 110
    elif eventPlayer.CurrHero == Hero.JUNKRAT:
        eventPlayer.ProjSpeed = 25
    elif eventPlayer.CurrHero == Hero.MEI:
        eventPlayer.ProjSpeed = 20
    elif eventPlayer.CurrHero == Hero.PHARAH:
        eventPlayer.ProjSpeed = 35
    elif eventPlayer.CurrHero == Hero.SOJOURN:
        eventPlayer.ProjSpeed = 160
    elif eventPlayer.CurrHero == Hero.TORBJORN:
        eventPlayer.ProjSpeed = 70
    elif eventPlayer.CurrHero == Hero.ANA:
        eventPlayer.ProjSpeed = 125
    elif eventPlayer.CurrHero == Hero.KIRIKO:
        eventPlayer.ProjSpeed = 20
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

    if eventPlayer.CurrHero == Hero.DOOMFIST:
        eventPlayer.ProjSpeed = 44
    elif eventPlayer.CurrHero == Hero.JUNKER_QUEEN:
        eventPlayer.ProjSpeed = 30
    elif eventPlayer.CurrHero == Hero.ORISA:
        eventPlayer.ProjSpeed = 70
    elif eventPlayer.CurrHero == Hero.ROADHOG:
        eventPlayer.ProjSpeed = 80
    elif eventPlayer.CurrHero == Hero.SIGMA:
        eventPlayer.ProjSpeed = 16.5
    elif eventPlayer.CurrHero == Hero.ZARYA:
        eventPlayer.ProjSpeed = 25
    elif eventPlayer.CurrHero == Hero.BASTION:
        eventPlayer.ProjSpeed = 40
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

    if eventPlayer.CurrHero == Hero.ROADHOG:
        eventPlayer.ProjSpeed = 40
    elif eventPlayer.CurrHero == Hero.GENJI:
        eventPlayer.ProjSpeed = 50
    elif eventPlayer.CurrHero == Hero.JUNKRAT:
        eventPlayer.ProjSpeed = 25   
    elif eventPlayer.CurrHero == Hero.SYMMETRA:
        eventPlayer.ProjSpeed = 20
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

    if eventPlayer.CurrHero == Hero.DVA:
        eventPlayer.ProjSpeed = 40
    elif eventPlayer.CurrHero == Hero.RAMATTRA:
        eventPlayer.ProjSpeed = 30
    elif eventPlayer.CurrHero == Hero.REINHARDT:
        eventPlayer.ProjSpeed = 25
    elif eventPlayer.CurrHero == Hero.SIGMA:
        eventPlayer.ProjSpeed = 37.5
    elif eventPlayer.CurrHero == Hero.ASHE:
        eventPlayer.ProjSpeed = 25
    elif eventPlayer.CurrHero == Hero.MCCREE:
        eventPlayer.ProjSpeed = 20
    elif eventPlayer.CurrHero == Hero.HANZO:
        eventPlayer.ProjSpeed = 110
    elif eventPlayer.CurrHero == Hero.JUNKRAT:
        eventPlayer.ProjSpeed = 17
    elif eventPlayer.CurrHero == Hero.PHARAH:
        eventPlayer.ProjSpeed = 60
    elif eventPlayer.CurrHero == Hero.SOJOURN:
        eventPlayer.ProjSpeed = 30
    elif eventPlayer.CurrHero == Hero.SOMBRA:
        eventPlayer.ProjSpeed = 25
    elif eventPlayer.CurrHero == Hero.TORBJORN:
        eventPlayer.ProjSpeed = 40
    elif eventPlayer.CurrHero == Hero.WIDOWMAKER:
        eventPlayer.ProjSpeed = 20
    elif eventPlayer.CurrHero == Hero.ANA:
        eventPlayer.ProjSpeed = 30
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

    if eventPlayer.CurrHero == Hero.DVA:
        eventPlayer.ProjSpeed = 12
    elif eventPlayer.CurrHero == Hero.ZARYA:
        eventPlayer.ProjSpeed = 20
    elif eventPlayer.CurrHero == Hero.SIGMA:
        eventPlayer.ProjSpeed = 37.5
    elif eventPlayer.CurrHero == Hero.ASHE:
        eventPlayer.ProjSpeed = 15
    elif eventPlayer.CurrHero == Hero.HANZO:
        eventPlayer.ProjSpeed = 20
    elif eventPlayer.CurrHero == Hero.MEI:
        eventPlayer.ProjSpeed = 20
    elif eventPlayer.CurrHero == Hero.PHARAH:
        eventPlayer.ProjSpeed = 45
    elif eventPlayer.CurrHero == Hero.TORBJORN:
        eventPlayer.ProjSpeed = 40
    elif eventPlayer.CurrHero == Hero.TRACER:
        eventPlayer.ProjSpeed = 15
    elif eventPlayer.CurrHero == Hero.MERCY:
        eventPlayer.ProjSpeed = 100
    else:
        eventPlayer.ProjSpeed = 0


rule "Calculate Player Projectile Trajectory":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.hasSpawned()
    @Condition eventPlayer.isDummy() == false
    @Condition eventPlayer.MenuToggleProjectile == "on"
    @Condition eventPlayer.ProjSpeed != 0

    eventPlayer.LookTarget = eventPlayer.getPlayerClosestToReticle(Team.2)
    CalculateProjectileLead()
    wait()
    if RULE_CONDITION:
        goto RULE_START


rule "Calculate Bot Projectile Trajectory":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive()
    @Condition eventPlayer.hasSpawned()
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.ProjSpeed != 0

    CalculateProjectileLead()
    wait()
    if RULE_CONDITION:
        goto RULE_START


# Bot Facing
rule "Set Look Target":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive()
    @Condition eventPlayer.hasSpawned()

    eventPlayer.OldLookTarget = eventPlayer.LookTarget
    if eventPlayer.LtRange > 0:
        eventPlayer.LookTarget = sorted([player for player in getLivingPlayers(Team.2) if distance(eventPlayer.getEyePosition(), player.getEyePosition()) > eventPlayer.LtRange], lambda i: distance(eventPlayer.getEyePosition(), i.getEyePosition()))[0]
    else:
        eventPlayer.LookTarget = sorted(Playerlist, lambda player: distance(eventPlayer.getEyePosition(), player.getEyePosition()))[0]
    if eventPlayer.LookTarget == null:
        eventPlayer.LookTarget = eventPlayer.OldLookTarget
    wait(eventPlayer.LtTime)

    if RULE_CONDITION:
        goto RULE_START

def SetDefaultFacing():
    @Name "SUB: SetDefaultFacing"

    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition() + eventPlayer.LookOffset), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)


def SetProjectileFacing():
    @Name "SUB: SetProjectileFacing"

    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), eventPlayer.AimSpot + eventPlayer.LookOffset), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)

def SetHealingFacing():
    @Name "SUB: SetHealingFacing"

    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)


def CalculateProjectileLead():
    @Name "SUB: CalculateProjectileLead (KJRR5P)"
    if eventPlayer.ProjSpeed != 0:
        eventPlayer.DisToTar = eventPlayer.LookTarget.getEyePosition() - eventPlayer.getEyePosition()
        eventPlayer.VarA = dotProduct(eventPlayer.LookTarget.getVelocity(), eventPlayer.LookTarget.getVelocity()) - eventPlayer.ProjSpeed ** 2
        eventPlayer.VarB = -2 * dotProduct(eventPlayer.LookTarget.getVelocity(), eventPlayer.DisToTar)
        eventPlayer.VarC = dotProduct(eventPlayer.DisToTar, eventPlayer.DisToTar)
        eventPlayer.VarP = eventPlayer.VarB * -1 / (2 * eventPlayer.VarA)
        eventPlayer.VarQ = (sqrt(eventPlayer.VarB ** 2 - 4 * eventPlayer.VarA * eventPlayer.VarC)) / (2 * eventPlayer.VarA)
        eventPlayer.VarT1 = eventPlayer.VarP - eventPlayer.VarQ
        eventPlayer.VarT2 = eventPlayer.VarP + eventPlayer.VarQ
        if eventPlayer.VarT1 > eventPlayer.VarT2 and eventPlayer.VarT2 > 0:
            eventPlayer.VarT = eventPlayer.VarT2
        else:
            eventPlayer.VarT = eventPlayer.VarT1
        eventPlayer.AimSpot = eventPlayer.LookTarget.getEyePosition() + eventPlayer.LookTarget.getVelocity() * eventPlayer.VarT


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
    eventPlayer.LookOffset = vect(0,0,0)
    eventPlayer.AbilityAcc = 0
    eventPlayer.ProjType = "off"
    SetDefaultFacing()
    

rule "Bot Pressure: Randomize Bot Shots":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true

    eventPlayer.LookOffset = PressureDiff * vect(eventPlayer.AbilityAcc * random.uniform(-1, 1), random.uniform(-0.25, 0.25), eventPlayer.AbilityAcc * random.uniform(-1, 1))
    wait(random.uniform(0.1,0.5),Wait.ABORT_WHEN_FALSE)
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


# Player Ability Tracking
rule "Player Ability Usage Tracker - Primary":
    @Event eachPlayer
    @Team 1
    @Condition BotsReact == true
    @Condition eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) == true
    @Condition eventPlayer.PlayerAbilityLock == 0
    
    eventPlayer.PlayerAbilityLock = 1
    eventPlayer.PlayerReactTime   = eventPlayer.PlayerReactMatrix[0]
    eventPlayer.PlayerUsedEatCD   = eventPlayer.PlayerEatCDMatrix[0]
    eventPlayer.PlayerUsedBlockCD = eventPlayer.PlayerBlockCDMatrix[0]
    eventPlayer.PlayerUsedDodgeCD = eventPlayer.PlayerDodgeCDMatrix[0]
    eventPlayer.PlayerUsedStunCD  = eventPlayer.PlayerStunCDMatrix[0]
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
    eventPlayer.PlayerReactTime   = eventPlayer.PlayerReactMatrix[1]
    eventPlayer.PlayerUsedEatCD = eventPlayer.PlayerEatCDMatrix[1]
    eventPlayer.PlayerUsedBlockCD = eventPlayer.PlayerBlockCDMatrix[1]
    eventPlayer.PlayerUsedDodgeCD = eventPlayer.PlayerDodgeCDMatrix[1]
    eventPlayer.PlayerUsedStunCD  = eventPlayer.PlayerStunCDMatrix[1]
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
    eventPlayer.PlayerReactTime   = eventPlayer.PlayerReactMatrix[2]
    eventPlayer.PlayerUsedEatCD   = eventPlayer.PlayerEatCDMatrix[2]
    eventPlayer.PlayerUsedBlockCD = eventPlayer.PlayerBlockCDMatrix[2]
    eventPlayer.PlayerUsedDodgeCD = eventPlayer.PlayerDodgeCDMatrix[2]
    eventPlayer.PlayerUsedStunCD  = eventPlayer.PlayerStunCDMatrix[2]
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
    eventPlayer.PlayerReactTime   = eventPlayer.PlayerReactMatrix[3]
    eventPlayer.PlayerUsedEatCD = eventPlayer.PlayerEatCDMatrix[3]
    eventPlayer.PlayerUsedBlockCD = eventPlayer.PlayerBlockCDMatrix[3]
    eventPlayer.PlayerUsedDodgeCD = eventPlayer.PlayerDodgeCDMatrix[3]
    eventPlayer.PlayerUsedStunCD  = eventPlayer.PlayerStunCDMatrix[3]
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
    eventPlayer.PlayerReactTime   = eventPlayer.PlayerReactMatrix[4]
    eventPlayer.PlayerUsedEatCD = eventPlayer.PlayerEatCDMatrix[4]
    eventPlayer.PlayerUsedBlockCD = eventPlayer.PlayerBlockCDMatrix[4]
    eventPlayer.PlayerUsedDodgeCD = eventPlayer.PlayerDodgeCDMatrix[4]
    eventPlayer.PlayerUsedStunCD  = eventPlayer.PlayerStunCDMatrix[4]
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
        eventPlayer.PlayerReactMatrix =   [1.00, 1.00, 1.00, 7.00, 3.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.00, 2.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.00, 0.00, 2.00, 1.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 1.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.25, 0.25, 0.00]
    elif eventPlayer.CurrHero == Hero.DOOMFIST:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.60, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.00, 1.00, 0.00, 1.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 1.00, 0.50, 0.00, 1.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.50, 0.50, 1.00, 0.00]
    elif eventPlayer.CurrHero == Hero.JUNKER_QUEEN:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 3.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.75, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 1.00, 0.00, 0.00, 1.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.50, 0.00, 0.50, 1.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.75, 1.00]
    elif eventPlayer.CurrHero == Hero.ORISA:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 5.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 1.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 1.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 1.00, 1.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.RAMATTRA:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 5.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.00, 1.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.00, 0.00, 0.50, 1.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 1.00, 1.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.REINHARDT:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.00, 0.00, 0.00, 1.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.00, 0.00, 0.00, 0.00, 1.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 1.00, 0.00, 1.00]
    elif eventPlayer.CurrHero == Hero.ROADHOG:
        eventPlayer.PlayerReactMatrix   = [5.00, 5.00, 5.00, 5.00, 9.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.50, 0.00, 0.00, 1.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.50, 1.00, 0.00, 1.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 1.00, 0.00, 1.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 1.00, 0.00]
    elif eventPlayer.CurrHero == Hero.SIGMA:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.00, 0.00, 1.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 1.00, 1.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 1.00]
    elif eventPlayer.CurrHero == Hero.WINSTON:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.00, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.00, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.25, 0.00, 1.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.50, 0.00, 1.00]
    elif eventPlayer.CurrHero == Hero.HAMMOND:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.00, 0.00, 0.00, 1.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.75, 0.00, 0.00, 1.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.75, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.ZARYA:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.00, 0.50, 0.00, 0.00, 1.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.50, 0.00, 0.00, 1.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 1.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.ASHE:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.00, 1.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.00, 0.00, 1.00, 1.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 1.00, 1.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.BASTION:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 6.00, 1.00, 5.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 1.00, 1.00, 0.00, 1.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 1.00, 1.00, 0.00, 1.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 1.00, 1.00, 0.00, 1.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.MCCREE:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 5.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.50, 0.00, 1.00, 1.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.50, 0.00, 1.00, 1.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 1.00, 1.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.ECHO:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 2.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 1.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 1.00, 0.00, 1.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 1.00, 0.00, 1.00, 0.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.GENJI:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.50, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.50, 0.00, 0.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 1.00, 0.00, 1.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.HANZO:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 2.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.00, 1.00, 1.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.00, 0.00, 1.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 1.00, 1.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.JUNKRAT:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 1.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.00, 1.00, 0.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 1.00, 0.00, 1.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.MEI:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.00, 0.50, 0.00, 0.00, 1.00]
        eventPlayer.PlayerBlockCDMatrix = [0.75, 0.50, 0.00, 0.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 1.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.PHARAH:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 3.00]
        eventPlayer.PlayerEatCDMatrix   = [0.75, 0.00, 0.00, 0.25, 1.00]
        eventPlayer.PlayerBlockCDMatrix = [0.75, 0.00, 0.00, 0.25, 1.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 1.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 1.00]
    elif eventPlayer.CurrHero == Hero.REAPER:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 3.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.00, 0.00, 1.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.00, 0.00, 0.00, 1.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 1.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 1.00]
    elif eventPlayer.CurrHero == Hero.SOJOURN:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.50, 0.00, 1.00, 1.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.50, 0.00, 1.00, 1.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 1.00, 1.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.SOLDIER:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 5.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.75, 0.00, 0.00, 1.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.75, 0.00, 0.00, 1.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 1.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.SOMBRA:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 1.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 1.00, 0.00, 0.00, 1.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.SYMMETRA:
        eventPlayer.PlayerReactMatrix   = [5.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.00, 0.50, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.50, 0.00, 0.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.TORBJORN:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 3.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.50, 0.00, 0.00, 1.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.50, 0.00, 0.00, 1.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 1.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.TRACER:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.00, 0.00, 1.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.00, 0.00, 0.00, 1.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 1.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.WIDOWMAKER:
        eventPlayer.PlayerReactMatrix   = [2.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.ANA:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.90, 0.90, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.00, 0.50, 0.50, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.50, 0.50, 0.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.BAPTISTE:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 9.00]
        eventPlayer.PlayerEatCDMatrix   = [0.50, 0.00, 0.00, 0.00, 1.00]
        eventPlayer.PlayerBlockCDMatrix = [0.50, 0.00, 0.00, 0.00, 1.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 1.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.00, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.BRIGITTE:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.00, 0.00, 0.00, 0.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.00, 0.00, 1.00, 0.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 1.00, 0.00, 0.00]
        eventPlayer.PlayerStunCDMatrix  = [0.00, 0.50, 0.00, 0.00, 0.00]
    elif eventPlayer.CurrHero == Hero.KIRIKO:
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.00, 0.50, 0.00, 1.00, 1.00]
        eventPlayer.PlayerBlockCDMatrix = [0.00, 0.50, 0.00, 0.00, 1.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 0.00, 1.00]
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
        eventPlayer.PlayerReactMatrix   = [1.00, 1.00, 1.00, 1.00, 1.00]
        eventPlayer.PlayerEatCDMatrix   = [0.00, 0.00, 0.00, 1.00, 0.00]
        eventPlayer.PlayerBlockCDMatrix = [0.00, 0.50, 0.00, 1.00, 0.00]
        eventPlayer.PlayerDodgeCDMatrix = [0.00, 0.00, 0.00, 1.00, 1.00]
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

rule "Bot Abilities: Dva Demech Ability Lock fix":
    @Event eachPlayer
    @Team 2
    @Hero dva
    @Condition eventPlayer.getMaxHealth() == 150
    
    eventPlayer.BotAbilityLock = [false, false, false, false, false]


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

    wait(random.uniform(2, 7), Wait.ABORT_WHEN_FALSE)
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
    

rule "Bot Abilities: Dva Ability 1 (NR)":
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


rule "Bot Abilities: Dva Ability 1 (R + P)":
    @Event eachPlayer
    @Team 2
    @Hero dva
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getMaxHealth() != 150
    @Condition eventPlayer.BotAbilityLock[2] == false
    @Condition eventPlayer.LookTarget.PlayerUsedDodgeCD == 0

    eventPlayer.Randomizer = random.uniform(0,1)
    if eventPlayer.Randomizer >= eventPlayer.LookTarget.PlayerUsedDodgeCD:
        
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
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.ApplyPressure == true

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


rule "Bot Abilities: Baby Dva Ult (All)":
    @Event eachPlayer
    @Team 2
    @Hero dva
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getMaxHealth() == 150
    @Condition eventPlayer.BotAbilityLock[4] == false

    wait(random.uniform(15,30), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[4] = true
    eventPlayer.forceButtonPress(Button.ULTIMATE)
    eventPlayer.BotAbilityLock[4] = false


rule "Bot Abilities: Dva Ult Random (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero dva
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[0] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getMaxHealth() != 150
    @Condition eventPlayer.BotAbilityLock[4] == false

    wait(random.uniform(25,50), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[4] = true
    eventPlayer.forceButtonPress(Button.ULTIMATE)
    wait(5)
    eventPlayer.forceButtonPress(Button.ULTIMATE)
    eventPlayer.BotAbilityLock[4] = false


rule "Bot Abilities: Dva Ult for Remech (BB2 + P)":
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
    

    eventPlayer.Randomizer = random.randint(0,9)
    if eventPlayer.Randomizer <= 2:
        eventPlayer.BotAbilityLock[4] = true
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(5)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        eventPlayer.BotAbilityLock[4] = false
    wait(5, Wait.ABORT_WHEN_FALSE)


### Doomfist Bot Abilities
rule "Bot Abilities: Doomfist All Abilities (Rn)":
    @Event eachPlayer
    @Team 2
    @Hero doomfist
    @Condition BotsUseAbilities == true
    @Condition BotsReact == false
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
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
        eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), vect(eventPlayer.getEyePosition().x, eventPlayer.getEyePosition().y +100, eventPlayer.getEyePosition().z)), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
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
    if distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) > 15:
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
    wait(1)

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

    wait(random.uniform(5,10))

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


rule "Bot Abilities: Doomfist Ability 2 (BB1 Rb)":
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


rule "Bot Abilities: Doomfist Ult (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero doomfist
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[1] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[4] == false

    wait(random.uniform(30,60), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[4] = true
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.forceButtonPress(Button.ULTIMATE)
    wait(1)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    wait(30)
    eventPlayer.BotAbilityLock[4] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Doomfist Ult (BB2 + R)":
    @Event eachPlayer
    @Team 2
    @Hero doomfist
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition BotBehavior[1] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.25
    @Condition eventPlayer.BotAbilityLock[4] == false

    eventPlayer.Randomizer = random.randint(0,9)
    if eventPlayer.Randomizer == 0:
        eventPlayer.BotAbilityLock[4] = true
        eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(1)
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
        wait(30)
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


rule "Bot Abilities: Junker Queen Ability 1 (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero junkerQueen
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[2] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.getNormalizedHealth() != 1
    @Condition eventPlayer.BotAbilityLock[2] == false
    
    wait(random.uniform(0, 20), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(12)
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
    wait(12)
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
    wait(random.uniform(0,3))
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(5)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Junker Queen Ult (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero junkerQueen
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[2] >= 1
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[4] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()) < 25

    wait(random.uniform(30,60), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[4] = true
    eventPlayer.forceButtonPress(Button.ULTIMATE)
    wait(30)
    eventPlayer.BotAbilityLock[4] = false

    if RULE_CONDITION:
        goto RULE_START

rule "Bot Abilities: Junker Queen Ult (BB2 + R)":
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

    eventPlayer.Randomizer = random.randint(0,9)
    if eventPlayer.Randomizer == 0:
        eventPlayer.BotAbilityLock[4] = true
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(30)
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
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(12)
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

    wait(random.uniform(30,60), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[4] = true
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.forceButtonPress(Button.ULTIMATE)
    wait(random.uniform(1,5))
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    wait(30)
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

    eventPlayer.Randomizer = random.randint(0,9)
    if eventPlayer.Randomizer <= 1:
        eventPlayer.BotAbilityLock[4] = true
        eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(random.uniform(1,5))
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
        wait(30)
        eventPlayer.BotAbilityLock[4] = false


### Ramattra Bot Abilities
rule "Bot Abilities: Ramattra Ability 1 + Secondary (BB1 Pn Nr)":
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
    @Condition eventPlayer.isUsingAbility1() == false
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
    @Condition eventPlayer.isUsingAbility1() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.50

    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(eventPlayer.LookTarget.PlayerReactTime, Wait.ABORT_WHEN_FALSE)
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
    @Condition eventPlayer.isUsingAbility1() == true
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD > 0
    @Condition eventPlayer.LookTarget.PlayerUsedBlockCD >= eventPlayer.LookTarget.AbilityReactChance 

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
    @Condition eventPlayer.isUsingAbility1() == false
    @Condition eventPlayer.getNormalizedHealth() <= 0.25

    eventPlayer.BotAbilityLock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(16)
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

    if eventPlayer.isUsingAbility1() == false:
        eventPlayer.BotAbilityLock[2] = true
        eventPlayer.forceButtonPress(Button.ABILITY_1)
        wait(16)
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


rule "Bot Abilities: Ramattra Ult (BB3)":
    @Event eachPlayer
    @Team 2
    @Hero ramattra
    @Condition BotsUseAbilities == true
    @Condition BotBehavior[4] >= 3
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.BotAbilityLock[4] == false

    wait(random.uniform(30,60), Wait.ABORT_WHEN_FALSE)
    eventPlayer.BotAbilityLock[4] = true
    eventPlayer.forceButtonPress(Button.ULTIMATE)
    wait(20)
    eventPlayer.BotAbilityLock[4] = false

    if RULE_CONDITION:
        goto RULE_START

        
rule "Bot Abilities: Ramattra Ult (BB3 + R)":
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

    eventPlayer.Randomizer = random.randint(0,9)
    if eventPlayer.Randomizer <= 1:
        eventPlayer.BotAbilityLock[4] = true
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(20)
        eventPlayer.BotAbilityLock[4] = false


### Reinhardt Bot Abilities
rule "Bot Abilities: Reinhardt Shatter (Default)":
    @Event eachPlayer
    @Team 2
    @Hero reinhardt
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.65
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 20
    @Condition eventPlayer.hasSpawned() == true
    
    eventPlayer.setUltCharge(100)
    wait(random.uniform(0, 1.5), Wait.ABORT_WHEN_FALSE)
    if eventPlayer.ApplyPressure == true:
        SetDefaultFacing()
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ULTIMATE)
    if eventPlayer.ApplyPressure == true:
        SetProjectileFacing()
    wait(10)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Reinhardt Swing + Fire Strike (Pn)":
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


rule "Bot Abilities: Reinhardt Charge (Default)":
    @Event eachPlayer
    @Team 2
    @Hero reinhardt
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() != 1
    @Condition eventPlayer.hasSpawned() == true
    
    wait(random.uniform(0, 5), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(0.75, 3))
    if eventPlayer.isUsingAbility1():
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(10)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Reinhardt Primary (Pressure)":
    @Event eachPlayer
    @Team 2
    @Hero reinhardt
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.ApplyPressure == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 7
    
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(random.uniform(2,5))
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Reinhardt Ability 2 (Pressure)":
    @Event eachPlayer
    @Team 2
    @Hero reinhardt
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.ApplyPressure == true
    
    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "ability 2"
    SetProjectileFacing()
    wait(random.uniform(3, 6), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    wait(3)
    if RULE_CONDITION:
        goto RULE_START



### Roadhog Bot Abilities
rule "Bot Abilities: Roadhog Primary (Pressure)":
    @Event eachPlayer
    @Team 2
    @Hero roadhog
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) <= 8

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Roadhog Secondary (Pressure)":
    @Event eachPlayer
    @Team 2
    @Hero roadhog
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) > 8

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "secondary"
    SetProjectileFacing()
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Roadhog Hook (Pressure)":
    @Event eachPlayer
    @Team 2
    @Hero roadhog
    @Condition eventPlayer.ApplyPressure == true
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 20
    

    wait(random.uniform(1, 5), Wait.ABORT_WHEN_FALSE)
    eventPlayer.ProjType = "ability 2"
    SetProjectileFacing()
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    if distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) <= 8:
        eventPlayer.ProjType = "primary"
    else:
        eventPlayer.ProjType = "secondary"
    wait(5)
    if RULE_CONDITION:
        goto RULE_START


### Sigma Bot Abilities
rule "Bot Abilities: Sigma Primary (Pressure)":
    @Event eachPlayer
    @Team 2
    @Hero sigma
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sigma Ability 2 (Pressure)":
    @Event eachPlayer
    @Team 2
    @Hero sigma
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 20
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.ApplyPressure == true
    
    wait(random.uniform(5, 10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.ProjType = "ability 2"
    SetProjectileFacing()
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()    
    wait(5)
    if RULE_CONDITION:
        goto RULE_START



rule "Bot Abilities: Sigma Flux (Default)":
    @Event eachPlayer
    @Team 2
    @Hero sigma
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.getNormalizedHealth() != 1

    wait(random.uniform(0, 10), Wait.ABORT_WHEN_FALSE)
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
    if eventPlayer.ApplyPressure == true:
        eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(15, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START



## Winston Bot Abilities
rule "Bot Abilities: Winston Primary (Pressure)":
    @Event eachPlayer
    @Team 2
    @Hero winston
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 9

    eventPlayer.AbilityAcc = 2
    SetDefaultFacing()
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Winston Secondary (Pressure)":
    @Event eachPlayer
    @Team 2
    @Hero winston
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) >= 9

    eventPlayer.AbilityAcc = 2
    SetDefaultFacing()
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(random.uniform(0.1, 2))
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    wait(0.5, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Winston Ability 1 (All)":
    @Event eachPlayer
    @Team 2
    @Hero winston
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.getNormalizedHealth() != 1
    
    wait(random.uniform(0, 1), Wait.ABORT_WHEN_FALSE)
    eventPlayer.Randomizer = random.randint(0,2)
    if eventPlayer.Randomizer == 0:
        eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x , random.uniform(-20,20) + eventPlayer.getEyePosition().y ,random.uniform(-20,20) + eventPlayer.getEyePosition().z), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.NONE)
        wait(0.5)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.1)
    SetDefaultFacing()
    wait(6)
    if RULE_CONDITION:
        goto RULE_START



### Wrecking Ball Bot Abilities
rule "Bot Pressure: Wrecking Ball Primary (Pressure)":
    @Event eachPlayer
    @Team 2
    @Hero hammond
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.isInAlternateForm() == false

    eventPlayer.AbilityAcc = 3
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ball Form Piledrive (All)":
    @Event eachPlayer
    @Team 2
    @Hero hammond
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    
    wait(random.uniform(2, 7), Wait.ABORT_WHEN_FALSE)
    if not eventPlayer.isInAlternateForm():
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(1, 3), Wait.ABORT_WHEN_FALSE)
    if eventPlayer.getCurrentHero() == Hero.HAMMOND:
        eventPlayer.applyImpulse(Vector.UP, 20.5, Relativity.TO_WORLD, Impulse.INCORPORATE_CONTRARY_MOTION)
    wait(random.uniform(1, 2), Wait.ABORT_WHEN_FALSE)
    if eventPlayer.getCurrentHero() == Hero.HAMMOND:
        eventPlayer.forceButtonPress(Button.CROUCH)
    wait(random.uniform(3, 6), Wait.ABORT_WHEN_FALSE)
    if eventPlayer.getCurrentHero() == Hero.HAMMOND:
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ball Form (All)":
    @Event eachPlayer
    @Team 2
    @Hero hammond
    @Condition BotsUseAbilities == false
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    
    wait(random.uniform(1, 5), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(1, 5), Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START



### Zarya Bot Abilities
rule "Bot Pressure: Zarya Primary (Pressure)":
    @Event eachPlayer
    @Team 2
    @Hero zarya
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 15

    eventPlayer.AbilityAcc = 3
    SetDefaultFacing()
    eventPlayer.ProjType = "off"
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pressure: Zarya Secondary Close (Pressure)":
    @Event eachPlayer
    @Team 2
    @Hero zarya
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 15

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "off"
    eventPlayer.Randomizer = random.randint(0,1)
    wait(random.uniform(0,5),Wait.ABORT_WHEN_FALSE)
    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), sorted(Playerlist, lambda player: distance(eventPlayer.getEyePosition(), player.getEyePosition()))[0].getPosition() + eventPlayer.LookOffset), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    wait(1.1)
    if eventPlayer.Randomizer == 0:
        eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
        wait(1.1)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    SetDefaultFacing()
    eventPlayer.AbilityAcc = 3
    wait(5)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pressure: Zarya Secondary Far (Pressure)":
    @Event eachPlayer
    @Team 2
    @Hero zarya
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) >= 15

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "secondary"
    SetProjectileFacing()
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    wait(1.1, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Zarya Jump (All)":
    @Event eachPlayer
    @Team 2
    @Hero zarya
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.getNormalizedHealth() != 1

    wait(random.uniform(1, 10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x, eventPlayer.getEyePosition().y - 100, random.uniform(-20,20) + eventPlayer.getEyePosition().z), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.NONE)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    wait(0.5)
    eventPlayer.forceButtonPress(Button.JUMP)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    if eventPlayer.ApplyPressure == true and distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 15:
        eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    SetDefaultFacing()
    if RULE_CONDITION:
        goto RULE_START

## DPS Bot Abilities
### Ashe Bot Abilities
rule "Bot Abilities: Ashe Scope (Default)":
    @Event eachPlayer
    @Team 2
    @Hero ashe
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.ApplyPressure == false
    
    wait(random.uniform(0, 2), Wait.ABORT_WHEN_FALSE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(0.9, Wait.ABORT_WHEN_FALSE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ashe Ability 1 (All)":
    @Event eachPlayer
    @Team 2
    @Hero ashe
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.getNormalizedHealth() != 1

    wait(random.uniform(0,3), Wait.ABORT_WHEN_FALSE)
    eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x , random.uniform(-20,0) + eventPlayer.getEyePosition().y ,random.uniform(-20,20) + eventPlayer.getEyePosition().z), 1000, Relativity.TO_WORLD, FacingReeval.NONE)
    wait(0.5)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.5)
    SetDefaultFacing()
    wait(10)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pressure: Ashe Primary Close (Pressure)":
    @Event eachPlayer
    @Team 2
    @Hero ashe
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 10

    eventPlayer.AbilityAcc = 2
    SetDefaultFacing()
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    wait(0.33, Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    wait(0.33, Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    wait(0.33, Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    wait(0.33, Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    wait(0.33, Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    wait(0.33, Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.RELOAD)
    wait(3, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pressure: Ashe Primary Far (Pressure)":
    @Event eachPlayer
    @Team 2
    @Hero ashe
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) >= 10

    eventPlayer.AbilityAcc = 2
    SetDefaultFacing()
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    wait(0.75, Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    wait(0.75, Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    wait(0.75, Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    wait(0.75, Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    wait(0.75, Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    wait(0.75, Wait.ABORT_WHEN_FALSE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.forceButtonPress(Button.RELOAD)
    wait(3, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START



### Bastion Bot Abilities
rule "Bot Abilities: Bastion Primary":
    @Event eachPlayer
    @Team 2
    @Hero bastion
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true

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
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition BotsUseAbilities == true

    eventPlayer.AbilityAcc = 2
    wait(random.uniform(0,5), Wait.ABORT_WHEN_FALSE)
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
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.getNormalizedHealth() != 1
    
    wait(random.uniform(0, 10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(10)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Bastion Jump":
    @Event eachPlayer
    @Team 2
    @Hero bastion
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.getNormalizedHealth() != 1

    wait(random.uniform(0, 10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x , -100 + eventPlayer.getEyePosition().y ,random.uniform(-20,20) + eventPlayer.getEyePosition().z), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.NONE)
    wait(0.5)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    SetDefaultFacing()
    wait(random.uniform(0.5,2))
    eventPlayer.forceButtonPress(Button.JUMP)
    wait(10)
    if RULE_CONDITION:
        goto RULE_START


### Cassidy Bot Abilities
rule "Bot Abilities: Cassidy Primary":
    @Event eachPlayer
    @Team 2
    @Hero mccree
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true

    eventPlayer.AbilityAcc = 2
    SetDefaultFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Cassidy Ability 1":
    @Event eachPlayer
    @Team 2
    @Hero mccree
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    
    wait(random.uniform(0, 10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(4, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Cassidy Ability 2":
    @Event eachPlayer
    @Team 2
    @Hero mccree
    @Condition eventPlayer.ApplyPressure == true
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 13
    @Condition eventPlayer.hasSpawned() == true
    
    wait(random.uniform(0, 2), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(10)
    if RULE_CONDITION:
        goto RULE_START



### Echo Bot Abilities
rule "Bot Abilities: Echo Fly Ability 1 (All)":
    @Event eachPlayer
    @Team 2
    @Hero echo
    @Condition eventPlayer.getAltitude() < 3
    @Condition eventPlayer.isAlive() == true
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.hasSpawned() == true
    
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(6)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Echo Jump (All)":
    @Event eachPlayer
    @Team 2
    @Hero echo
    @Condition eventPlayer.isAlive() == true
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.hasSpawned() == true
    
    eventPlayer.startForcingButton(Button.JUMP)


rule "Bot Abilities: Echo Primary (Pressure)":
    @Event eachPlayer
    @Team 2
    @Hero echo
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Echo Secondary (Pressure)":
    @Event eachPlayer
    @Team 2
    @Hero echo
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition BotsUseAbilities == true

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "secondary"
    wait(random.uniform(0,5), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    eventPlayer.ProjType = "primary"
    wait(6)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Echo Beam (Pressure)":
    @Event eachPlayer
    @Team 2
    @Hero echo
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 16
    @Condition getClosestPlayer(eventPlayer.getEyePosition(), Team.1).getNormalizedHealth() <= 0.6
    @Condition BotsUseAbilities == true
                                
    SetDefaultFacing()
    eventPlayer.startForcingButton(Button.ABILITY_2)
    wait(2)
    SetProjectileFacing()
    wait(10)
    if RULE_CONDITION:
        goto RULE_START



### Genji
rule "Bot Abilities: Genji Primary (Pressure)":
    @Event eachPlayer
    @Team 2
    @Hero genji
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) > 10
    @Condition eventPlayer.isUsingUltimate() == false

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Genji Secondary (Pressure)":
    @Event eachPlayer
    @Team 2
    @Hero genji
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) <= 10
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
    @Condition eventPlayer.hasSpawned() == true
    
    wait(random.uniform(0.4, 0.9), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.JUMP)
    wait(random.uniform(0.2, 0.5))
    eventPlayer.forceButtonPress(Button.JUMP)


rule "Bot Abilities: Genji Ability 1 (All)":
    @Event eachPlayer
    @Team 2
    @Hero genji
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() != 1
    @Condition eventPlayer.hasSpawned() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 15
    @Condition eventPlayer.isUsingUltimate() == false
    @Condition eventPlayer.isUsingAbility2() == false
    

    eventPlayer.Randomizer = random.randint(0, 2)
    if eventPlayer.Randomizer == 0:
        eventPlayer.ProjType = "ability 1"
        SetProjectileFacing()
        wait(0.5)
        eventPlayer.forceButtonPress(Button.ABILITY_1)
        wait(0.5)
    if eventPlayer.Randomizer == 1:
        eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x ,random.uniform(-5,20) + eventPlayer.getEyePosition().y ,random.uniform(-20,20) + eventPlayer.getEyePosition().z), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
        wait(0.5)
        eventPlayer.forceButtonPress(Button.ABILITY_1)
        wait(0.5)
    if eventPlayer.ApplyPressure == true:
        eventPlayer.ProjType = "primary"
        SetProjectileFacing()
    else:
        SetDefaultFacing()    
    wait(6)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Genji Ability 2 (All)":
    @Event eachPlayer
    @Team 2
    @Hero genji
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() != 1
    @Condition eventPlayer.hasSpawned() == true
    
    wait(random.uniform(0, 3), Wait.ABORT_WHEN_FALSE)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)

    wait(8)
    if RULE_CONDITION:
        goto RULE_START

rule "Bot Abilities: Genji Ultimate (All)":
    @Event eachPlayer
    @Team 2
    @Hero genji
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.getNormalizedHealth() != 1
    @Condition AdvancedStrafes == true

    wait(random.uniform(0, 10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.Randomizer = random.randint(0, 2)
    if eventPlayer.Randomizer == 0:
        eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        eventPlayer.AltMvmtLock = true
        eventPlayer.AltMvmt = 2
    while eventPlayer.isUsingUltimate():
        if eventPlayer.ApplyPressure == false:
            eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x ,random.uniform(-5,20) + eventPlayer.getEyePosition().y ,random.uniform(-20,20) + eventPlayer.getEyePosition().z), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
        else:
            eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
            SetDefaultFacing()
        wait(random.uniform(0,1))
        eventPlayer.ProjType = "ability 1"
        SetProjectileFacing()
        eventPlayer.forceButtonPress(Button.ABILITY_1)
        wait(2, Wait.ABORT_WHEN_FALSE)
    eventPlayer.AltMvmt = 0
    eventPlayer.AltMvmtLock = false
    if eventPlayer.ApplyPressure == true:
        eventPlayer.ProjType = "primary"
        SetProjectileFacing()
    else:
        SetDefaultFacing()
    if RULE_CONDITION:
        goto RULE_START


### Hanzo Bot Abilities
rule "Bot Abilities: Hanzo Primary (Pressure)":
    @Event eachPlayer
    @Team 2
    @Hero hanzo
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(random.uniform(0.4, 0.7), Wait.ABORT_WHEN_FALSE)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    wait(0.5, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Hanzo Storm (Pressure)":
    @Event eachPlayer
    @Team 2
    @Hero hanzo
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition BotsUseAbilities == true

    eventPlayer.AbilityAcc = 2
    wait(3, Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(random.uniform(7,15))
    if RULE_CONDITION:
        goto RULE_START



rule "Bot Abilities: Hanzo Jump (All)":
    @Event eachPlayer
    @Team 2
    @Hero hanzo
    @Condition RandomJumping == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isOnGround() == true
    @Condition eventPlayer.hasSpawned() == true
    
    wait(random.uniform(0.4, 0.9), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.JUMP)
    wait(random.uniform(0.2, 0.5))
    eventPlayer.forceButtonPress(Button.JUMP)
    wait(4.4)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Hanzo Draw (Default)":
    @Event eachPlayer
    @Team 2
    @Hero hanzo
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.ApplyPressure == false
    
    wait(random.uniform(0.5, 3), Wait.ABORT_WHEN_FALSE)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(random.uniform(0.75,2))
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    if RULE_CONDITION:
        goto RULE_START


### Junkrat Bot Abilities
rule "Bot Abilities: Junkrat Primary (Pressure)":
    @Event eachPlayer
    @Team 2
    @Hero junkrat
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Junkrat Secondary (Pressure)":
    @Event eachPlayer
    @Team 2
    @Hero junkrat
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition BotsUseAbilities == true

    eventPlayer.AbilityAcc = 2
    wait(random.uniform(3,7), Wait.ABORT_WHEN_FALSE)
    eventPlayer.ProjType = "secondary"
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.1)
    eventPlayer.ProjType = "primary"
    wait(random.uniform(0.5,2), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    wait(5)
    if RULE_CONDITION:
        goto RULE_START



rule "Bot Abilities: Junkrat Conc Movement (All)":
    @Event eachPlayer
    @Team 2
    @Hero junkrat
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true

    wait(random.uniform(10, 20), Wait.ABORT_WHEN_FALSE)
    eventPlayer.Randomizer = random.randint(0,1)
    if eventPlayer.Randomizer == 0:
        eventPlayer.startFacing(vect(eventPlayer.getEyePosition().x, eventPlayer.getEyePosition().y - 100, eventPlayer.getEyePosition().z), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
        eventPlayer.forceButtonPress(Button.ABILITY_1)
        wait(random.uniform(0.1,1), Wait.ABORT_WHEN_FALSE)
        eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
        if eventPlayer.ApplyPressure == true:
            SetProjectileFacing()
        else:
            SetDefaultFacing()
    elif AdvancedStrafes == true and eventPlayer.Randomizer == 1:
        eventPlayer.startFacing(vect(eventPlayer.getEyePosition().x, eventPlayer.getEyePosition().y - 100, eventPlayer.getEyePosition().z), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
        eventPlayer.forceButtonPress(Button.ABILITY_1)
        wait(random.uniform(0.1,1), Wait.ABORT_WHEN_FALSE)
        eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
        eventPlayer.forceButtonPress(Button.ABILITY_1)
        wait(random.uniform(0.1,0.3), Wait.ABORT_WHEN_FALSE)
        eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
        if eventPlayer.ApplyPressure == true:
            SetProjectileFacing()
        else:
            SetDefaultFacing()

    if RULE_CONDITION:
        goto RULE_START


### Mei Bot Abilities
rule "Bot Pressure: Mei Primary (Pressure)":
    @Event eachPlayer
    @Team 2
    @Hero mei
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 10

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pressure: Mei Secondary  (Pressure)":
    @Event eachPlayer
    @Team 2
    @Hero mei
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) >= 10

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "secondary"
    SetProjectileFacing()
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Mei Ability 1 (All)":
    @Event eachPlayer
    @Team 2
    @Hero mei
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.5
    
    wait(random.uniform(0, 5), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(12)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pressure: Mei Ability 2 (Reactive)":
    @Event eachPlayer
    @Team 2
    @Hero mei
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition BotsUseAbilities == true
    @Condition BotsReact == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 12

    wait(random.uniform(1,5), Wait.ABORT_WHEN_FALSE)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.ProjType = "off"
    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), sorted(Playerlist, lambda player: distance(eventPlayer.getEyePosition(), player.getEyePosition()))[0].getPosition() + vect(0,0.18,0)), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    wait(0.1)
    if distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 10:
        eventPlayer.ProjType = "primary"
        eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    else:
        eventPlayer.ProjType = "secondary"
        eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    SetProjectileFacing()
    wait(12)
    if RULE_CONDITION:
        goto RULE_START


### Pharah Bot Abilities
rule "Bot Pressure: Pharah Primary":
    @Event eachPlayer
    @Team 2
    @Hero pharah
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START

rule "Bot Abilities: Pharah Fly BotUsingFuel Vertical speed < -5.7":
    @Event eachPlayer
    @Team 2
    @Hero pharah
    @Condition eventPlayer.getVerticalSpeed() < -5.7
    @Condition eventPlayer.isAlive() == true
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isOnGround() == false
    @Condition eventPlayer.hasSpawned() == true
    
    eventPlayer.startForcingButton(Button.JUMP)


rule "Bot Abilities: Pharah Fly BotUsingFuel, Stop - Vertical speed > 3.5":
    @Event eachPlayer
    @Team 2
    @Hero pharah
    @Condition eventPlayer.getVerticalSpeed() > 3.5
    @Condition eventPlayer.isAlive() == true
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isOnGround() == false
    @Condition eventPlayer.hasSpawned() == true
    
    eventPlayer.stopForcingButton(Button.JUMP)


rule "Bot Abilities: Pharah Fly Bot JumpJet2":
    @Event eachPlayer
    @Team 2
    @Hero pharah
    @Condition eventPlayer.getAltitude() < 5.5
    @Condition eventPlayer.isAlive() == true
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.hasSpawned() == true
    
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(3)
    if RULE_CONDITION:
        goto RULE_START


### Reaper Bot Abilities
rule "Bot Abilities: Reaper Primary":
    @Event eachPlayer
    @Team 2
    @Hero reaper
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true

    eventPlayer.AbilityAcc = 3
    SetDefaultFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START

rule "Bot Abilities: Reaper Ability 2":
    @Event eachPlayer
    @Team 2
    @Hero reaper
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition BotsUseAbilities == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) > 15

    wait(random.uniform(1,3), Wait.ABORT_WHEN_FALSE)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), sorted(Playerlist, lambda player: distance(eventPlayer.getEyePosition(), player.getEyePosition()))[0].getPosition() + vect(random.uniform(-1,1),-0.15,random.uniform(-1,1))), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    wait(0.1)
    SetDefaultFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(10)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Reaper Ability 1":
    @Event eachPlayer
    @Team 2
    @Hero reaper
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.5
    
    wait(random.uniform(0, 5), Wait.ABORT_WHEN_FALSE)
    if eventPlayer.ApplyPressure == true:
        eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(0.4,3))
    if eventPlayer.isUsingAbility1():
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    if eventPlayer.ApplyPressure == true:
        eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(8)
    if RULE_CONDITION:
        goto RULE_START


### Sojourn Bot Abilities
rule "Bot Abilities: Sojourn Primary":
    @Event eachPlayer
    @Team 2
    @Hero sojourn
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sojourn Secondary":
    @Event eachPlayer
    @Team 2
    @Hero sojourn
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true


    eventPlayer.AbilityAcc = 2
    wait(random.uniform(1,5), Wait.ABORT_WHEN_FALSE)
    eventPlayer.ProjType = "off"
    SetDefaultFacing()
    wait(0.1)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.AbilityAcc = 2
    wait(5,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sojourn Orb":
    @Event eachPlayer
    @Team 2
    @Hero sojourn
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition BotsUseAbilities == true

    eventPlayer.AbilityAcc = 2
    wait(random.uniform(3,7), Wait.ABORT_WHEN_FALSE)
    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), sorted(Playerlist, lambda player: distance(eventPlayer.getEyePosition(), player.getEyePosition()))[0].getPosition() + eventPlayer.LookOffset), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait(0.1)
    eventPlayer.startForcingButton(Button.ABILITY_2)
    wait(0.1)
    SetProjectileFacing()
    eventPlayer.AbilityAcc = 2
    wait(10)
    if RULE_CONDITION:
        goto RULE_START



rule "Bot Abilities: Sojourn Power Slide - GGSYK":
    @Event eachPlayer
    @Team 2
    @Hero sojourn
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    
    eventPlayer.Randomizer = random.randint (0,9)
    wait(random.uniform(0, 1), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(0, 1), Wait.ABORT_WHEN_FALSE)
    if eventPlayer.Randomizer > 0:
        eventPlayer.forceButtonPress(Button.JUMP)
    wait(7, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START

### Solider 76 Bot Abilities
rule "Bot Abilities: Soldier Primary":
    @Event eachPlayer
    @Team 2
    @Hero soldier
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true

    eventPlayer.AbilityAcc = 3
    SetDefaultFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Soldier Secondary":
    @Event eachPlayer
    @Team 2
    @Hero soldier
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition BotsUseAbilities == true

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


### Sombra Bot Abilities
rule "Bot Abilities: Sombra Primary":
    @Event eachPlayer
    @Team 2
    @Hero sombra
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true

    eventPlayer.AbilityAcc = 3
    SetDefaultFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(10)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sombra Secondary":
    @Event eachPlayer
    @Team 2
    @Hero sombra
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition BotsUseAbilities == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 12

    eventPlayer.AbilityAcc = 2
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(1)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.AbilityAcc = 3
    wait(10)
    if RULE_CONDITION:
        goto RULE_START



rule "Bot Abilities: Sombra TP":
    @Event eachPlayer
    @Team 2
    @Hero sombra
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    
    
    wait(random.uniform(5, 10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x ,random.uniform(-5,20) + eventPlayer.getEyePosition().y ,random.uniform(-20,20) + eventPlayer.getEyePosition().z), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.1)
    SetDefaultFacing()
    wait(random.uniform(0.5, 3), Wait.ABORT_WHEN_FALSE)
    if eventPlayer.isUsingAbility2():
        eventPlayer.Randomizer = random.randint(0,9)
        if eventPlayer.Randomizer == 0:
            eventPlayer.forceButtonPress(Button.INTERACT)
        else:
            eventPlayer.forceButtonPress(Button.ABILITY_2)
        wait(10, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sombra Cloak":
    @Event eachPlayer
    @Team 2
    @Hero sombra
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    
    eventPlayer.Randomizer = random.randint(0,9)
    wait(random.uniform(5, 10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(1, 5), Wait.ABORT_WHEN_FALSE)
    if eventPlayer.isUsingAbility1():
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(10, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START

### Symmetra Bot Abilities
rule "Bot Abilities: Symmetra Primary":
    @Event eachPlayer
    @Team 2
    @Hero symmetra
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 12

    eventPlayer.AbilityAcc = 3
    SetDefaultFacing()
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Symmetra Secondary":
    @Event eachPlayer
    @Team 2
    @Hero symmetra
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) >= 12

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



/*
#rule "Bot Pressure: Symmetra TP - Causes Server Overload":
    @Event eachPlayer
    @Team 2
    @Hero symmetra
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition BotsUseAbilities == true

    wait(random.uniform(5,10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.ProjType = "off"
    eventPlayer.startFacing(eventPlayer.getPosition() + vect(random.uniform(-20,20), 0, random.uniform(-20,20)), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.INTERACT)
    SetDefaultFacing()
    if eventPlayer.ApplyPressure == true:
        if distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 12:
            eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
        else:
            eventPlayer.ProjType = "secondary"
            SetProjectileFacing()
            eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(3)
    eventPlayer.stopForcingButton(Button.INTERACT)
    wait(7, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START
*/
### Torbjorn Bot Abilities
rule "Bot Abilities: Torbjorn Primary":
    @Event eachPlayer
    @Team 2
    @Hero torbjorn
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) >= 10

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Torbjorn Secondary":
    @Event eachPlayer
    @Team 2
    @Hero torbjorn
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 10

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "secondary"
    SetProjectileFacing()
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START



rule "Bot Abilities: Overload":
    @Event eachPlayer
    @Team 2
    @Hero torbjorn
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() != 1
    @Condition eventPlayer.hasSpawned() == true
    
    wait(random.uniform(0,10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(10, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START

        
### Tracer Bot Abilities
rule "Bot Pressure: Tracer Primary":
    @Event eachPlayer
    @Team 2
    @Hero tracer
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true

    eventPlayer.AbilityAcc = 3
    SetDefaultFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START



rule "Bot Abilities: Tracer Blink":
    @Event eachPlayer
    @Team 2
    @Hero tracer
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    
    wait(random.uniform(0, 3), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(1.5, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Tracer Recall":
    @Event eachPlayer
    @Team 2
    @Hero tracer
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.5
    
    wait(random.uniform(0, 3), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(7)
    if RULE_CONDITION:
        goto RULE_START

### Widowmaker Bot Abilities
rule "Bot Abilities: Widowmaker Primary Close":
    @Event eachPlayer
    @Team 2
    @Hero widowmaker
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 7.5

    eventPlayer.AbilityAcc = 3
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Widowmaker Primary + Secondary Far":
    @Event eachPlayer
    @Team 2
    @Hero widowmaker
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1))  >= 7.5

    eventPlayer.AbilityAcc = 2
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(random.uniform(0.75,1.5), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    wait(1, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START



rule "Bot Abilities: Widowmaker Scope":
    @Event eachPlayer
    @Team 2
    @Hero widowmaker
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.ApplyPressure == false
    
    wait(random.uniform(0, 2), Wait.ABORT_WHEN_FALSE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(0.9)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    if RULE_CONDITION:
        goto RULE_START


## Support Bot Abilities
### Ana Bot Abilties
rule "Bot Abilities: Ana Primary Close":
    @Event eachPlayer
    @Team 2
    @Hero ana
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 15

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ana Primary + Secondary Far":
    @Event eachPlayer
    @Team 2
    @Hero ana
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1))  >= 15

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


rule "Bot Abilities: Ana Sleep":
    @Event eachPlayer
    @Team 2
    @Hero ana
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition BotsUseAbilities == true
    
    wait(random.uniform(5,15), Wait.ABORT_WHEN_FALSE)
    eventPlayer.AbilityAcc = 2 
    eventPlayer.ProjType = "ability 1"
    SetProjectileFacing()
    wait(0.5)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.5)
    if distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1))  >= 15:
        eventPlayer.ProjType = "off"
        SetDefaultFacing()
    else:
        eventPlayer.ProjType = "primary"
        SetProjectileFacing()
    wait(10)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ana Nade":
    @Event eachPlayer
    @Team 2
    @Hero ana
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition BotsUseAbilities == true
    
    wait(random.uniform(5,15), Wait.ABORT_WHEN_FALSE)
    eventPlayer.AbilityAcc = 2 
    eventPlayer.ProjType = "ability 2"
    SetProjectileFacing()
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    if distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1))  >= 15:
        eventPlayer.ProjType = "off"
        SetDefaultFacing()
    else:
        eventPlayer.ProjType = "primary"
        SetProjectileFacing()
    wait(5)
    if RULE_CONDITION:
        goto RULE_START



rule "Bot Abilities: Ana Zoom":
    @Event eachPlayer
    @Team 2
    @Hero ana
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    
    wait(random.uniform(0, 2), Wait.ABORT_WHEN_FALSE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(0.9)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    wait(3, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


### Baptiste Bot Abilities
rule "Bot Abilities: Baptiste Primary":
    @Event eachPlayer
    @Team 2
    @Hero baptiste
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true

    eventPlayer.AbilityAcc = 3
    SetDefaultFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
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
    
    if AdvancedStrafes == true:
        eventPlayer.Randomizer = random.randint(0,9)
        wait(random.uniform(3, 5), Wait.ABORT_WHEN_FALSE)
        if eventPlayer.Randomizer >= 3:
            eventPlayer.startForcingButton(Button.CROUCH)
            wait(random.uniform(0.5, 0.9))
            eventPlayer.stopForcingButton(Button.CROUCH)
            wait(random.uniform(0.1, 0.5))
            eventPlayer.forceButtonPress(Button.JUMP)
        else:
            eventPlayer.AltMvmtLock = true
            eventPlayer.AltMvmt = 1
            for eventPlayer.MvmtIndex in range(0,20):
                eventPlayer.startForcingButton(Button.CROUCH)
                wait(random.uniform(0.05,0.35))
                eventPlayer.stopForcingButton(Button.CROUCH)
                wait(random.uniform(0.1,0.2))
            eventPlayer.AltMvmt = 0
            eventPlayer.AltMvmtLock = false
    else:
        wait(random.uniform(3, 5), Wait.ABORT_WHEN_FALSE)
        eventPlayer.startForcingButton(Button.CROUCH)
        wait(random.uniform(0.5, 0.9))
        eventPlayer.stopForcingButton(Button.CROUCH)
        wait(random.uniform(0.1, 0.5))
        eventPlayer.forceButtonPress(Button.JUMP)
    if RULE_CONDITION:
        goto RULE_START


### Brigitte Bot Abilities
rule "Bot Abilities: Brig Primary":
    @Event eachPlayer
    @Team 2
    @Hero brigitte
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 7
    @Condition eventPlayer.hasSpawned() == true
    
    eventPlayer.AbilityAcc = 2
    SetDefaultFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Bash":
    @Event eachPlayer
    @Team 2
    @Hero brigitte
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition BotsUseAbilities == true
    
    wait(random.uniform(0,5), Wait.ABORT_WHEN_FALSE)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(random.uniform(0.1, 0.5))
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    wait(random.uniform(1,2))
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    if distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 7:
        eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(5)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Brigitte Ability 1":
    @Event eachPlayer
    @Team 2
    @Hero brigitte
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 20
    @Condition eventPlayer.hasSpawned() == true
    @Condition BotsUseAbilities == true
    
    wait(random.uniform(0, 8), Wait.ABORT_WHEN_FALSE)
    eventPlayer.ProjType = "ability 1"
    SetProjectileFacing()
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.1)
    SetDefaultFacing()
    wait(4)
    if RULE_CONDITION:
        goto RULE_START



### Mercy Bot Abilities
rule "Bot Ablities: Mercy Target":
    @Event eachPlayer
    @Team 2
    @Hero mercy
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.OldLookTarget != eventPlayer.LookTarget

    eventPlayer.setWeapon(1)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    wait(0.1)
    if BotBehavior[33] == 1:
        eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    else:
        eventPlayer.startForcingButton(Button.SECONDARY_FIRE)


rule "Bot Ablities: Mercy Smart Healing":
    @Event eachPlayer
    @Team 2
    @Hero mercy
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.isAlive() == true
    @Condition BotBehavior[33] == 2
    @Condition eventPlayer.LookTarget.getNormalizedHealth() <= 0.75
    
    eventPlayer.setWeapon(1)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(3)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Ablities: Mercy Ability 1":
    @Event eachPlayer
    @Team 2
    @Hero mercy
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.isAlive() == true
    @Condition BotsUseAbilities == true
    
    wait(random.uniform(2.5, 4), Wait.ABORT_WHEN_FALSE)
    eventPlayer.startForcingButton(Button.ABILITY_1)
    wait(random.uniform(0.5, 2))
    eventPlayer.Randomizer = random.randint(0,9)
    if eventPlayer.isUsingUltimate():
        eventPlayer.Randomizer += 3
    if eventPlayer.isUsingAbility1():
        if eventPlayer.Randomizer >= 7:
            eventPlayer.forceButtonPress(Button.CROUCH)
        elif eventPlayer.Randomizer >= 4:
            eventPlayer.forceButtonPress(Button.JUMP)
    eventPlayer.stopForcingButton(Button.ABILITY_1)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Ablities: Mercy Hold jump air - Default":
    @Event eachPlayer
    @Team 2
    @Hero mercy
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.isAlive() == true
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isUsingAbility1() == false
    @Condition eventPlayer.isOnGround() == false
    
    if AdvancedStrafes == true:
        eventPlayer.startForcingButton(Button.JUMP)
        wait(random.uniform(0.5,1.5))
        eventPlayer.stopForcingButton(Button.JUMP)
        wait(random.uniform(1,3))
        eventPlayer.startForcingButton(Button.JUMP)
    else:
        eventPlayer.startForcingButton(Button.JUMP)


rule "Bot Ablities: Mercy Stop Hold ground - Default":
    @Event eachPlayer
    @Team 2
    @Hero mercy
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.isAlive() == true
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isOnGround() == true
    
    eventPlayer.stopForcingButton(Button.JUMP)


rule "Bot Ablities: Mercy Ult - Advanced":
    @Event eachPlayer
    @Team 2
    @Hero mercy
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.isAlive() == true
    @Condition BotsUseAbilities == true
    @Condition AdvancedStrafes == true
    @Condition eventPlayer.isUsingUltimate() == false
    @Condition eventPlayer.getNormalizedHealth() != 1

    wait(random.uniform(0,10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ULTIMATE)
    wait(random.uniform(10, 20), Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


### Kiriko Bot Abilities
rule "Bot Abilities: Kiriko Secondary":
    @Event eachPlayer
    @Team 2
    @Hero kiriko
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "secondary"
    SetProjectileFacing()
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Ablities: Kiriko Suzu":
    @Event eachPlayer
    @Team 2
    @Hero kiriko
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.isAlive() == true
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.4
    
    wait(random.uniform(0.5, 1.5), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    eventPlayer.startFacing(vect(0, -1, 0), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait(0.5)
    if eventPlayer.ApplyPressure == true:
        SetProjectileFacing()
    else:
        SetDefaultFacing()
    wait(14)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Ablities: Kiriko Swift Step":
    @Event eachPlayer
    @Team 2
    @Hero kiriko
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.isAlive() == true
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.7
    
    wait(random.uniform(0, 2), Wait.ABORT_WHEN_FALSE)
    eventPlayer.LtRange = 2
    SetHealingFacing() 
    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), eventPlayer.LookTarget.getEyePosition()), DefaultTurnRate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    if eventPlayer.ApplyPressure == true:
        SetProjectileFacing()
    else:
        SetDefaultFacing()
    wait(7)
    if RULE_CONDITION:
        goto RULE_START
        

### Lucio Bot Abilities
rule "Bot Abilities: Lucio Primary":
    @Event eachPlayer
    @Team 2
    @Hero lucio
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START



rule "Bot Abilities: Lucio Boop":
    @Event eachPlayer
    @Team 2
    @Hero lucio
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() != 1
    @Condition eventPlayer.hasSpawned() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 7.75
    
    wait(random.uniform(0, 3), Wait.ABORT_WHEN_FALSE)
    if not RULE_CONDITION:
        return
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    wait(6)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Lucio Speed":
    @Event eachPlayer
    @Team 2
    @Hero lucio
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    
    wait(random.uniform(0, 20), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(12)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Lucio AD Turnaround":
    @Event eachPlayer
    @Team 2
    @Hero lucio
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition AdvancedStrafes == true
    
    eventPlayer.AltMvmtLock = true
    eventPlayer.AltMvmt = 1
    eventPlayer.MvmtIndex = 0
    eventPlayer.Randomizer = random.randint(0,9)
    wait(random.uniform(5,15), Wait.ABORT_WHEN_FALSE)
    if eventPlayer.Randomizer < 3:
        if eventPlayer.ApplyPressure == true:
            eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
            eventPlayer.MvmtIndex = 35
            eventPlayer.ProjType = "off"
        while AdvancedStrafes == true and eventPlayer.MvmtIndex < 45:
            eventPlayer.startFacing(vect(eventPlayer.getPosition().x + 1000, eventPlayer.getPosition().x - 10, eventPlayer.getPosition().x + 1000), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
            wait(random.uniform(0.1,0.35), Wait.ABORT_WHEN_FALSE)
            eventPlayer.startFacing(vect(eventPlayer.getPosition().x - 1000, eventPlayer.getPosition().x - 10, eventPlayer.getPosition().x - 1000), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
            wait(random.uniform(0.1,0.35), Wait.ABORT_WHEN_FALSE)
            eventPlayer.MvmtIndex += 1     
        eventPlayer.AltMvmt = 0
        eventPlayer.AltMvmtLock = false
        if eventPlayer.ApplyPressure == true:
            eventPlayer.ProjType = "primary"
            SetProjectileFacing()
            eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
        else:
            SetDefaultFacing()
    wait(15)
    if RULE_CONDITION:
        goto RULE_START


### Moira Bot Abilities
rule "Bot Abilities: Moira Secondary":
    @Event eachPlayer
    @Team 2
    @Hero moira
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true

    eventPlayer.AbilityAcc = 2
    SetDefaultFacing()
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Moira Ability 2 Damage":
    @Event eachPlayer
    @Team 2
    @Hero moira
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition BotsUseAbilities == true


    eventPlayer.AbilityAcc = 2
    wait(random.uniform(4,8),Wait.ABORT_WHEN_FALSE)
    eventPlayer.ProjType = "ability 2"
    SetProjectileFacing()
    wait(0.1)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.5)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    wait(0.5)
    eventPlayer.ProjType = "off"
    SetDefaultFacing()
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(4,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Moira Fade":
    @Event eachPlayer
    @Team 2
    @Hero moira
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.5
    
    wait(random.uniform(0, 3), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(7)
    if RULE_CONDITION:
        goto RULE_START


### Zenyatta Bot Abilities
rule "Bot Pressure: Zenyatta Primary":
    @Event eachPlayer
    @Team 2
    @Hero zenyatta
    @Condition eventPlayer.ApplyPressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true

    eventPlayer.AbilityAcc = 2
    eventPlayer.ProjType = "primary"
    SetProjectileFacing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START



rule "Bot Abilities: Zen Charge":
    @Event eachPlayer
    @Team 2
    @Hero zenyatta
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(random.uniform(1,2.5))
    if eventPlayer.ApplyPressure == false:
        eventPlayer.forceButtonPress(Button.MELEE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    if eventPlayer.ApplyPressure == true:
        eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(3)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Zen Proximity Kick":

    @Event eachPlayer
    @Team 2
    @Hero zenyatta
    @Condition BotsUseAbilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) <= 2.5
    
    wait(0.33)
    eventPlayer.forceButtonPress(Button.MELEE)
    wait(2)
    if RULE_CONDITION:
        goto RULE_START


# Bot Names
## Tank bot Names
rule "Bot Names: Dva":
    @Event eachPlayer
    @Team 2
    @Hero dva
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("ChoiHyoBin")


rule "Bot Names: Doomfist":
    @Event eachPlayer
    @Team 2
    @Hero doomfist
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Danteh")


rule "Bot Names: Junker Queen":
    @Event eachPlayer
    @Team 2
    @Hero junkerQueen
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Hanbin")


rule "Bot Names: Orisa":
    @Event eachPlayer
    @Team 2
    @Hero orisa
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Gator")


rule "Bot Names: Ramattra":
    @Event eachPlayer
    @Team 2
    @Hero ramattra
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Rammy")


rule "Bot Names: Rein":
    @Event eachPlayer
    @Team 2
    @Hero reinhardt
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Super")


rule "Bot Names: Roadhog":
    @Event eachPlayer
    @Team 2
    @Hero roadhog
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Gesture")


rule "Bot Names: Sigma":
    @Event eachPlayer
    @Team 2
    @Hero sigma
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Void")


rule "Bot Names: Ball":
    @Event eachPlayer
    @Team 2
    @Hero hammond
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Ga9a")


rule "Bot Names: Winston":
    @Event eachPlayer
    @Team 2
    @Hero winston
    @Condition CustomNames == true

    eventPlayer.startForcingName("Fearless")


rule "Bot Names: Zarya":
    @Event eachPlayer
    @Team 2
    @Hero zarya
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Hotba")

## Bot Names DPS
rule "Bot Names: Ashe":
    @Event eachPlayer
    @Team 2
    @Hero ashe
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Shy")


rule "Bot Names: Bastion":
    @Event eachPlayer
    @Team 2
    @Hero bastion
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Architect")


rule "Bot Names: Echo":
    @Event eachPlayer
    @Team 2
    @Hero echo
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Speedily")


rule "Bot Names: Genji":
    @Event eachPlayer
    @Team 2
    @Hero genji
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Sp9rk1e")


rule "Bot Names: Hanzo":
    @Event eachPlayer
    @Team 2
    @Hero hanzo
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Profit")

    
rule "Bot Names: Junkrat":
    @Event eachPlayer
    @Team 2
    @Hero junkrat
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Jake")


rule "Bot Names: McCassidy":
    @Event eachPlayer
    @Team 2
    @Hero mccree
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Carpe")


rule "Bot Names: Mei":
    @Event eachPlayer
    @Team 2
    @Hero mei
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Pelican")


rule "Bot Names: Pharah":
    @Event eachPlayer
    @Team 2
    @Hero pharah
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Jinmu")


rule "Bot Names: Reaper":
    @Event eachPlayer
    @Team 2
    @Hero reaper
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Doha")


rule "Bot Names: Sojourn":
    @Event eachPlayer
    @Team 2
    @Hero sojourn
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Edison")


rule "Bot Names: Soldier":
    @Event eachPlayer
    @Team 2
    @Hero soldier
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Fleta")


rule "Bot Names: Sombra":
    @Event eachPlayer
    @Team 2
    @Hero sombra
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Lip")


rule "Bot Names: Symmetra":
    @Event eachPlayer
    @Team 2
    @Hero symmetra
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Happy")


rule "Bot Names: Torbjorn":
    @Event eachPlayer
    @Team 2
    @Hero torbjorn
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Nero")


rule "Bot Names: Tracer":
    @Event eachPlayer
    @Team 2
    @Hero tracer
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Proper")


rule "Bot Names: Widowmaker":
    @Event eachPlayer
    @Team 2
    @Hero widowmaker
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("ANS")


## Bot Name Supports
rule "Bot Names: Ana":
    @Event eachPlayer
    @Team 2
    @Hero ana
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Shu")


rule "Bot Names: Baptiste":
    @Event eachPlayer
    @Team 2
    @Hero baptiste
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Alarm")


rule "Bot Names: Brigitte":
    @Event eachPlayer
    @Team 2
    @Hero brigitte
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Skewed")


rule "Bot Names: Kiriko":
    @Event eachPlayer
    @Team 2
    @Hero kiriko
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Fielder")


rule "Bot Names: Lúcio":
    @Event eachPlayer
    @Team 2
    @Hero lucio
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("FunnyAstro")


rule "Bot Names: Mercy":
    @Event eachPlayer
    @Team 2
    @Hero mercy
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Moth")


rule "Bot Names: Moira":
    @Event eachPlayer
    @Team 2
    @Hero moira
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Viol2t")


rule "Bot Names: Zenyatta":
    @Event eachPlayer
    @Team 2
    @Hero zenyatta
    @Condition CustomNames == true
    
    eventPlayer.startForcingName("Jjonak")

