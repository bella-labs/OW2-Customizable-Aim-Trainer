settings {
    "main": {
        "description": "Customizable Aim Trainer 4.1.3\n\nFeatures:\n◆ Customization for almost any setting\n◆ Pressure Mode: Bots shoot back at you\n◆ Multiple Bot Spawn Points\n◆ Reactive Bot AI\n◆ Choose from several different strafe patterns\n◆ And more...\n\nFind tutorials/help at workshop.codes/VXEAT\nReport bugs on my discord:discord.gg/YPQ5ETNT45\n",
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

## Bot Generation Variables
globalvar bot_index
globalvar bot_gen_index
globalvar bot_slot
## Movement Variables
globalvar mvmt_min_wait
globalvar mvmt_max_wait
globalvar default_jump_enabled
globalvar default_jump_min
globalvar default_jump_max
globalvar default_crouch_enabled
globalvar default_crouch_min
globalvar default_crouch_max
globalvar default_uncrouch_min
globalvar default_uncrouch_max
globalvar default_turn_rate
globalvar default_mvmt_type
globalvar custom_min_wait
globalvar custom_max_wait
globalvar custom_min_dist
globalvar custom_max_dist
globalvar custom_strafe_points
globalvar custom_bot_speed
globalvar default_bot_diff
globalvar bounce_amount
## Bot Hero Variables
globalvar hero_array 
globalvar hero_array_index
globalvar hero_proj_speed
globalvar hero_proj_gravity
globalvar hero_proj_delta
globalvar hero_react_response
globalvar hero_react_eat
globalvar hero_react_block
globalvar hero_react_dodge
globalvar hero_react_stun
globalvar hero_name_array
globalvar default_hero_array
globalvar active_hero_array
globalvar hero_array_status
## Bot Spawn Variables
globalvar bot_count
globalvar spawn_type
globalvar use_custom_spawn
globalvar default_spawn_pt
globalvar spawn_radius
globalvar bot_pool_array
globalvar bot_radius_array
globalvar bot_spawn_array
## Bot Ability Toggles
globalvar bots_use_abilities
globalvar enable_all_abilities
globalvar bots_react
globalvar bot_behavior
globalvar bot_reactivity
globalvar ult_freq
globalvar ability_freq
## Pressure Mode Variables
globalvar pressure_type
globalvar pressure_accuracy
## Speed Mode Variables
globalvar speed_mode_enabled
globalvar speed_timer
globalvar speed_multi
globalvar speed_score
globalvar speed_base
globalvar speed_increment
globalvar speed_decrement
globalvar speed_max_time
## Player Settings Variables
globalvar player_list
globalvar dmg_to_slot_array
globalvar refresh_on_elim
globalvar heal_over_time
globalvar punish_deaths
globalvar show_recall
## Global Menu Variables
### UI Options
globalvar show_debug_info
globalvar show_main_hud
globalvar console_ui
### Menu Effect Variables
globalvar splash_text
globalvar ring_effect
### Menu Item Colors
globalvar default_menu_label_color
globalvar default_menu_off_index_color
globalvar default_menu_on_index_color
# Static Data
globalvar opt_array_speed
globalvar opt_array_abilities
globalvar opt_array_spawn_strings
globalvar opt_array_movement
globalvar opt_array_pressure
globalvar alt_mvmt_array
# Loading Wait Flag
globalvar data_loaded

#Player variables
## Facing Variables
playervar look_target
playervar old_look_target
playervar look_target_timer
playervar look_offset
playervar look_vector
playervar is_healing_facing
playervar pressure_target
playervar pressure_options
## Projectile Leading Variables
playervar aim_spot
playervar proj_speed
playervar proj_calc_t
playervar proj_calc_a
playervar proj_calc_b
playervar proj_calc_c
playervar proj_delta_xz
playervar proj_calc_d
playervar proj_calc_e
playervar proj_calc_t1
playervar proj_calc_t2
playervar proj_effects
playervar proj_type
playervar proj_gravity
playervar proj_delta
## Player Hero Data
playervar least_hero
playervar curr_hero
playervar curr_hero_index
playervar next_hero_index
playervar player_hero_list
## Player Stat Tracking Variables
playervar stat_timer
playervar stat_kills
playervar stat_deaths
playervar stat_dmg_dealt
playervar stat_dmg_taken
playervar stat_dmg_to_slot
## Player Modifiers
playervar custom_speed
playervar infinite_ammo
playervar default_ammo
playervar buff_effects
playervar stored_vect
playervar punish_timer
playervar strafe_stun_timer
## Player Ability Tracker
playervar eat_cd_matrix
playervar block_cd_matrix
playervar dodge_cd_matrix
playervar stun_cd_matrix
playervar react_matrix
playervar player_used_eat_cd
playervar player_used_block_cd
playervar player_used_dodge_cd
playervar player_used_stun_cd
playervar player_react_time
playervar player_ability_lock
playervar ability_react_chance
## Player Menu Variables
### General Menu Variables
playervar menu_visible
playervar menu_index
playervar menu_input
playervar menu_max_pos
playervar menu_reset_bots
playervar menu_wait
### Menu Label Variables
playervar menu_label
playervar menu_label_size
playervar menu_label_color
### Menu Option Variables
playervar menu_opt_size
playervar menu_off_opt_title
playervar menu_on_opt_title
playervar menu_opt_var
playervar menu_opt_status
playervar menu_opt_value
playervar menu_opt_len
playervar menu_off_opt_color
playervar menu_on_opt_color
playervar item_visible
### Bar Variables
playervar bar_title
playervar bar_var
playervar bar_color
### Submenu Variables
playervar submenu_start_index
playervar submenu_index
playervar sub_size
playervar menu_substart_value
## Bot Pathing Variables
playervar path_pos
playervar path_index
playervar path_dir
playervar path_old_dir
playervar bot_pathing_var
playervar bot_mvmt_var
playervar mvmt_type
playervar mvmt_type_lock
playervar bot_disable_jump
playervar bot_disable_crouch
playervar mvmt_rad_1
playervar mvmt_rad_2
playervar spawn_pt
## Bot Ability Variables
playervar general_randomizer
playervar apply_pressure
playervar ability_acc
playervar bot_ability_lock
playervar bot_ability_signal
playervar bot_ability_var
playervar recall_pos_array
playervar recall_effect
# Subroutine Names
## Bot Generation
subroutine create_all_bots
subroutine destroy_all_bots
subroutine create_bot
subroutine destroy_bot
subroutine initialize_bot
## Pathing
subroutine set_map_default_spawn_pt
subroutine change_pathing
subroutine set_default_pathing
subroutine set_fixed_pathing
subroutine teleport_bot
## Facing
subroutine set_default_facing
subroutine set_proj_facing
subroutine set_healing_facing
subroutine set_ground_facing
subroutine set_feet_facing
## Projectile Guide 
subroutine update_projectile_data
subroutine calc_proj_lead
subroutine calc_arc_proj_lead
## Player Modifiers
subroutine reset_player_resources
subroutine speed_mode_timer_reset
## Hud Gen
subroutine main_hud
subroutine menu_hud
subroutine misc_hud
## Player Menu
### Menu Defaults
subroutine default_menu_variables
### Menu Navigation Actions
subroutine enable_player_input
subroutine menu_up_check
subroutine menu_down_check
subroutine ring_check
### Menu Prompt
subroutine create_settings_prompt
### Menu Labels
subroutine increment_for_menu_label
subroutine new_menu_label_header
subroutine new_menu_label_subtext
### Menu Items
subroutine increment_for_menu_item
subroutine new_menu_item_selection
subroutine new_menu_item_toggle
subroutine new_menu_item_cycle
subroutine new_menu_item_cycle_bar
### Submenu
subroutine increment_for_submenu_item
### Menu Actions
#### Submenu 0
subroutine menu_act_change_hero
subroutine menu_act_toggle_assists_menu
subroutine menu_act_toggle_modifiers_menu
subroutine menu_act_toggle_movement_menu
subroutine menu_act_toggle_spawn_menu
subroutine menu_act_toggle_game_modes
#### Submenu 1
subroutine menu_act_proj_guide 
subroutine menu_act_toggle_mercy
subroutine menu_act_toggle_nano
subroutine menu_act_toggle_kitsune
subroutine menu_act_toggle_recall
#### Submenu 2
subroutine menu_act_toggle_ammo 
subroutine menu_act_cycle_player_speed
subroutine menu_act_strafe_stun
#### Submenu 3
subroutine menu_act_cycle_pattern
subroutine menu_act_cycle_min_dist
subroutine menu_act_cycle_max_dist
subroutine menu_act_cycle_points
subroutine menu_act_cycle_difficulty
subroutine menu_act_cycle_min_wait
subroutine menu_act_cycle_max_wait
subroutine menu_act_cycle_bot_speed
subroutine menu_act_cycle_bot_bounce
#### Submenu 4
subroutine menu_act_num_bots
subroutine menu_act_toggle_spawn_type
subroutine menu_act_cycle_slot
subroutine menu_act_hero_pool
subroutine menu_act_cycle_radius
subroutine menu_act_set_spawn_pt
#### Submenu 5
subroutine menu_act_cycle_pressure_mode
subroutine menu_act_cycle_accuracy
subroutine menu_act_toggle_speed
subroutine menu_act_cycle_timer
subroutine menu_act_cycle_increment
subroutine menu_act_cycle_decrement
### Menu Action helpers
subroutine menu_status_io_toggle
subroutine menu_status_cycle
subroutine menu_hero_bar_color_set
subroutine menu_pressure_cycle_color_set
subroutine menu_speed_set_text_and_color
## Bot Abilities
subroutine winston_ult
subroutine dva_ult
subroutine doomfist_ult
subroutine brig_bash_combo
subroutine brig_whip_shot

#Activated extensions

#!extension spawnMoreDummyBots
#!extension buffStatusEffects


rule "---->    Multipoint Spawn Settings: (Edit here for multipoint spawn preset)    <----":

    #Slot 0
    #Edit the number field to change the radius.
    bot_radius_array[0] = 5
    #To add a new entry select the plus sign on the value row, then type Hero in the new [x] row, then select the hero you want to add to the spawn pool.
    bot_pool_array[0] = [Hero.ANA, Hero.BAPTISTE]
    #Modify the X, Y, and Z coordinate values with the coordinates you would like your bots to spawn at.
    bot_spawn_array[0] = vect(0,0,0)

    #Slot 1
    bot_radius_array[1] = 5
    bot_pool_array[1] = [Hero.ANA, Hero.BAPTISTE]
    bot_spawn_array[1] = vect(0,0,0)

    #Slot 2
    bot_radius_array[2]  = 5
    bot_pool_array[2] = [Hero.ANA, Hero.BAPTISTE]
    bot_spawn_array[2] = vect(0,0,0)
    
    #Slot 3
    bot_radius_array[3]  = 5
    bot_pool_array[3] = [Hero.ANA, Hero.BAPTISTE]
    bot_spawn_array[3] = vect(0,0,0)

    #Slot 4
    bot_radius_array[4]  = 5
    bot_pool_array[4] = [Hero.ANA, Hero.BAPTISTE]
    bot_spawn_array[4] = vect(0,0,0)

    #Slot 5
    bot_radius_array[5]  = 5
    bot_pool_array[5] = [Hero.ANA, Hero.BAPTISTE]
    bot_spawn_array[5] = vect(0,0,0)

    #Slot 6
    bot_radius_array[6]  = 5
    bot_pool_array[6] = [Hero.ANA, Hero.BAPTISTE]
    bot_spawn_array[6] = vect(0,0,0)

    #Slot 7
    bot_radius_array[7]  = 5
    bot_pool_array[7] = [Hero.ANA, Hero.BAPTISTE]
    bot_spawn_array[7] = vect(0,0,0)

    #Slot 8
    bot_radius_array[8]  = 5
    bot_pool_array[8] = [Hero.ANA, Hero.BAPTISTE]
    bot_spawn_array[8] = vect(0,0,0)

    #Slot 9
    bot_radius_array[9]  = 5
    bot_pool_array[9] = [Hero.ANA, Hero.BAPTISTE]
    bot_spawn_array[9] = vect(0,0,0)

    #Slot 10
    bot_radius_array[10]  = 5
    bot_pool_array[10] = [Hero.ANA, Hero.BAPTISTE]
    bot_spawn_array[10] = vect(0,0,0)

    #Slot 11
    bot_radius_array[11]  = 5
    bot_pool_array[11] = [Hero.ANA, Hero.BAPTISTE]
    bot_spawn_array[11] = vect(0,0,0)

    data_loaded[2] = true


# Workshop Initialization Rules
def set_map_default_spawn_pt():
    @Name "SUB: set_map_default_spawn_pt"

    if getCurrentMap() == Map.ANTARCTIC_PENINSULA:
        ## Labs
        if getCurrentObjective() == 0:
            default_spawn_pt = vect(270,45,156)
        ## Icebreaker
        elif getCurrentObjective() == 1:
            default_spawn_pt = vect(284,-12,-219)
        ## Sublevel
        elif getCurrentObjective() == 2:
            default_spawn_pt = vect(-78,-153,60)
    elif getCurrentMap() == Map.BLIZZ_WORLD:
        default_spawn_pt = vect(2.71,1.90,72.68)
    elif getCurrentMap() == Map.BLIZZ_WORLD_WINTER:
        default_spawn_pt = vect(2.71,1.90,72.68)
    elif getCurrentMap() == Map.BUSAN:
        ## Downtown
        if getCurrentObjective() == 0:
            default_spawn_pt = vect(51.19, 11.00, -111.20)
        ## Sanctuary
        elif getCurrentObjective() == 1:
            default_spawn_pt = vect(-328.56, 12, 131)
        ## MEKA Base
        elif getCurrentObjective() == 2:
            default_spawn_pt = vect(217.81, 17.09, 230.12)
    elif getCurrentMap() == Map.CIRCUIT_ROYAL:
        default_spawn_pt = vect(-21.80,6,-32.25)
    elif getCurrentMap() == Map.COLOSSEO:
        default_spawn_pt = vect(0,2,-12)
    elif getCurrentMap() == Map.DORADO:
        default_spawn_pt = vect(20,1,5)
    elif getCurrentMap() == Map.EICHENWALDE:
        default_spawn_pt = vect(12,9,-72)
    elif getCurrentMap() == Map.EICHENWALDE_HALLOWEEN:
        default_spawn_pt = vect(12,9,-72)
    elif getCurrentMap() == Map.ESPERANCA:
        default_spawn_pt = vect(0,1,-30)
    elif getCurrentMap() == Map.HANAMURA:
        default_spawn_pt = vect(0,0,0)
    elif getCurrentMap() == Map.HANAMURA_WINTER:
        default_spawn_pt = vect(0,0,0)
    elif getCurrentMap() == Map.HAVANA:
        default_spawn_pt = vect(-15,5,-80)
    elif getCurrentMap() == Map.HOLLYWOOD:
        default_spawn_pt = vect(-21,8,10)
    elif getCurrentMap() == Map.HOLLYWOOD_HALLOWEEN:
        default_spawn_pt = vect(-21,8,10)
    elif getCurrentMap() == Map.HORIZON_LUNAR_COLONY:
        default_spawn_pt = vect(53.25,15,-74)
    elif getCurrentMap() == Map.ILIOS:
        ## Lighthouse
        if getCurrentObjective() == 0:
            default_spawn_pt = vect(336,-22,-42)
        ## Well
        elif getCurrentObjective() == 1:
            default_spawn_pt = vect(-203.95,1,-12)
        ## Ruins
        elif getCurrentObjective() == 2:
            default_spawn_pt = vect(28.50, 70, -157)
    elif getCurrentMap() == Map.JUNKERTOWN:
        default_spawn_pt = vect(20, 10, -77)
    elif getCurrentMap() == Map.KINGS_ROW:
        default_spawn_pt = vect(-4.50, 5, -26)
    elif getCurrentMap() == Map.KINGS_ROW_WINTER:
        default_spawn_pt = vect(-4.50, 5, -26)
    elif getCurrentMap() == Map.LIJIANG_TOWER:
        ## Night Market
        if getCurrentObjective() == 0:
            default_spawn_pt = vect(1.06, 1, -29.88)
        ## Gardens
        elif getCurrentObjective() == 1:
            default_spawn_pt = vect(0, 96, 140)
        ## Control Center
        elif getCurrentObjective() == 2:
    elif getCurrentMap() == Map.LIJIANG_TOWER_LNY:
        ## Night Market
        if getCurrentObjective() == 0:
            default_spawn_pt = vect(1.06, 1, -29.88)
        ## Gardens
        elif getCurrentObjective() == 1:
            default_spawn_pt = vect(0, 96, 140)
        ## Control Center
        elif getCurrentObjective() == 2:    
            default_spawn_pt = vect(0, 273, 280)
    elif getCurrentMap() == Map.NEPAL:
        ## Village
        if getCurrentObjective() == 0:
            default_spawn_pt = vect(-180, -86, 0)
        ## Shrine
        elif getCurrentObjective() == 1:
            default_spawn_pt = vect(-43.50, 13, 0)
        ## Sanctum
        elif getCurrentObjective() == 2:
            default_spawn_pt = vect(83, 130, 0)
    elif getCurrentMap() == Map.NEW_QUEEN_STREET:
        default_spawn_pt = vect(0, 7, 4)
    # Numbani not supported by overpy yet.
    #elif getCurrentMap() == Map.NUMBANI:
    #    default_spawn_pt = vect(82, 1, 2)
    elif getCurrentMap() == Map.OASIS:
        ## City Center
        if getCurrentObjective() == 0:
            default_spawn_pt = vect(143, 5, 250)
        ## Gardens
        elif getCurrentObjective() == 1:
            default_spawn_pt = vect(123.45, 12, -230)
        ## University
        elif getCurrentObjective() == 2:
            default_spawn_pt = vect(147.50, 10, 251)
    elif getCurrentMap() == Map.PARAISO:
        default_spawn_pt = vect(-14, 10, -7)
    elif getCurrentMap() == Map.PARIS:
        default_spawn_pt = vect(-95.65, 14, -83.75)
    elif getCurrentMap() == Map.RIALTO:
        default_spawn_pt = vect(56, 7, -56)
    elif getCurrentMap() == Map.ROUTE66:
        default_spawn_pt = vect(60, 10, 14)
    elif getCurrentMap() == Map.SHAMBALI_MONASTERY:
        default_spawn_pt = vect(-42, 32, 182)
    elif getCurrentMap() == Map.TEMPLE_OF_ANUBIS:
        default_spawn_pt = vect(-10, 12, 14)
    elif getCurrentMap() == Map.VOLSKAYA:
        default_spawn_pt = vect(-12, 2, 80)
    elif getCurrentMap() == Map.WATCHPOINT_GIBRALTAR:
        default_spawn_pt = vect(41, 4, -130)
    else:
        default_spawn_pt = vect(0,0,0)


rule "Initialize: Workshop Settings":

    ## UI Settings

    console_ui = createWorkshopSetting(bool, "0. UI Settings", "Console UI", false, 1)
    dmg_to_slot_array = createWorkshopSetting(bool, "0. UI Settings", "Show Damage Numbers", false, 2)
    show_debug_info = createWorkshopSetting(bool, "0. UI Settings", "Show Server Load and Coordinates", false, 3)
    show_main_hud = createWorkshopSetting(bool, "0. UI Settings", "Show HUD (disable for 2nd player to have access to menu)", true, 4)
    
    ## Number of Bots
    bot_count = createWorkshopSetting(int[0:12], "1. Number of Bots (Overridden by in-game changes to settings)", "Number of Bots", 6, 4)

    ## Bot Ability Settings
    bots_use_abilities = createWorkshopSetting(bool, "2. Bot Ability Settings (Overridden by in-game changes to settings)", "Bots use abilities", true, 0)
    bots_react  = createWorkshopSetting(bool, "2. Bot Ability Settings (Overridden by in-game changes to settings)", "Bots react (to player input, health, etc.)", true, 1)
    bot_reactivity = createWorkshopSetting(float[0.1:5], "2. Bot Ability Settings (Overridden by in-game changes to settings)", "Multiplier for how often bots respond to the player input (2 = 2x often, etc.)", 1, 2)
    ability_freq = createWorkshopSetting(float[0.1:5], "2. Bot Ability Settings (Overridden by in-game changes to settings)", "Multiplier for how often bots use abilities (2 = 2x often, etc.)", 1, 3)
    ult_freq = createWorkshopSetting(float[0.1:5], "2. Bot Ability Settings (Overridden by in-game changes to settings)", "Multiplier for how often bots use ultimates (2 = 2x often, etc.)", 1, 4)
    ## Bot Movement Settings
    default_mvmt_type = createWorkshopSetting(enum["Random", "Default", "Random Long Strafes", "AD Strafes", "Custom Distance", "Fixed Shapes (CW)", "Fixed Shapes (CCW)", "No Movement", "Forward AD Strafes (Not Recommended)", "Forward (Not Recommended)"], "3. Bot Movement (Overridden by in-game changes to movement)", "Strafe Pattern", 1, 0)
    default_bot_diff = createWorkshopSetting(enum["custom", "very easy", "easy", "normal", "hard", "very hard"], "3. Bot Movement (Overridden by in-game changes to movement)", "Difficulty", 4, 1)
    custom_bot_speed = createWorkshopSetting(int[0:1000],   "3. Bot Movement (Overridden by in-game changes to movement)", "Bot Movement Speed", 100, 2)
   
    ## Bot Movement Modifiers
    default_jump_enabled = createWorkshopSetting(bool, "3.1. Bot Movement Modifiers", "Bot Jumping", true, 0)
    default_jump_min = createWorkshopSetting(float[1:10], "3.1. Bot Movement Modifiers", "Bot Jumping - Minimum wait", 3.5, 1)
    default_jump_max = createWorkshopSetting(float[1.5:20], "3.1. Bot Movement Modifiers", "Bot Jumping - Maximum wait", 10, 2)
    default_crouch_enabled = createWorkshopSetting(bool, "3.1. Bot Movement Modifiers", "Bot Crouching", true, 3)
    default_crouch_min = createWorkshopSetting(float[0:10], "3.1. Bot Movement Modifiers", "Bot Crouching - Minimum wait", 0, 4)
    default_crouch_max = createWorkshopSetting(float[0:10], "3.1. Bot Movement Modifiers", "Bot Crouching - Maximum wait", 3, 5)
    default_uncrouch_min = createWorkshopSetting(float[0:10], "3.1. Bot Movement Modifiers", "Bot Uncrouching - Minimum wait", 0.25, 6)
    default_uncrouch_max = createWorkshopSetting(float[0:10], "3.1. Bot Movement Modifiers", "Bot Uncrouching - Maximum wait", 0.65, 7)
    custom_min_wait = createWorkshopSetting(float[0:10], "3.1. Bot Movement Modifiers", "Custom Strafe Difficulty - Minimum Wait", 1, 8)
    custom_max_wait = createWorkshopSetting(float[0:10], "3.1. Bot Movement Modifiers", "Custom Strafe Difficulty - Maximum Wait", 10, 9)
    custom_min_dist = createWorkshopSetting(int[0:200], "3.1. Bot Movement Modifiers", "Custom Distance Minimum Distance", 0, 10)
    custom_max_dist = createWorkshopSetting(int[0:200], "3.1. Bot Movement Modifiers", "Custom Distance Maximum Distance", 200, 11)
    custom_strafe_points = createWorkshopSetting(int[1:8], "3.1. Bot Movement Modifiers", "Fixed Shape Points", 2, 12)
    bounce_amount = createWorkshopSetting(int[0:100], "3.1. Bot Movement Modifiers", "Bouncing Bots (0 = off)", 0, 13)
    # Pressure Mode
    pressure_type = createWorkshopSetting(enum["off", "killable", "unkillable"], "4. Bot Pressure (Overridden by in-game changes to pressure)", "Bots Apply Pressure", 0, 0)
    pressure_accuracy = createWorkshopSetting(int[1:100],  "4. Bot Pressure (Overridden by in-game changes to pressure)", "Bots Pressure Difficulty", 50, 1)
    # Pressure Mode Modifiers
    refresh_on_elim = createWorkshopSetting(bool, "4.1. Bot Pressure Modifiers (killable mode only)", "Eliminations / Deaths reset cooldowns", true, 0)
    heal_over_time = createWorkshopSetting(bool, "4.1. Bot Pressure Modifiers (killable mode only)", "Restore health after not taking damage", true, 1)
    punish_deaths = createWorkshopSetting(bool, "4.1. Bot Pressure Modifiers (killable mode only)", "Punish player deaths (player is stunned and attacker recovers health)", true, 2)

    # Speed Mode
    speed_mode_enabled = createWorkshopSetting(bool, "5. Bot Speed Mode (Overridden by in-game changes to Speed Mode)", "Increase Bots Movement Speed Every Elimination (JPYHG)", false, 0)
    speed_base = createWorkshopSetting(int[0:1000], "5. Bot Speed Mode (Overridden by in-game changes to Speed Mode)", "Speed Mode Base Speed", 100, 2)
    speed_max_time = createWorkshopSetting(float[0:60], "5. Bot Speed Mode (Overridden by in-game changes to Speed Mode)", "Speed Mode Timer", 10, 1)
    speed_increment = createWorkshopSetting(int[0:100], "5. Bot Speed Mode (Overridden by in-game changes to Speed Mode)", "Speed Mode Increment %", 10, 3)
    speed_decrement = createWorkshopSetting(int[0:100], "5. Bot Speed Mode (Overridden by in-game changes to Speed Mode)", "Speed Mode Decrement %", 10, 4)

    # Bot Spawn
    use_custom_spawn = createWorkshopSetting(bool, "6. Custom Bot Spawn (Overridden by in-game changes to spawn)", "Use Custom Spawn Point", false, 0)
    spawn_radius = createWorkshopSetting(int[0:100], "6. Custom Bot Spawn (Overridden by in-game changes to spawn)", "Spawn Radius (in meters)", 19, 1)
    default_spawn_pt = vect(createWorkshopSetting(float[-999:999], "6. Custom Bot Spawn (Overridden by in-game changes to spawn)", "Spawn x coord", 0, 2),
    createWorkshopSetting(float[-999:999], "6. Custom Bot Spawn (Overridden by in-game changes to spawn)", "Spawn y coord", 0, 2),
    createWorkshopSetting(float[-999:999], "6. Custom Bot Spawn (Overridden by in-game changes to spawn)", "Spawn z coord", 0, 3))
    spawn_type = createWorkshopSetting(bool, "6. Custom Bot Spawn (Overridden by in-game changes to spawn)", "Use Multipoint Spawn (Edit the Rule \"Multipoint Spawn Settings\" at the top of the Workshop page to configure)", false, 4)

    ## Bot Tank Heroes Enabled
    default_hero_array = createWorkshopSetting(bool, "7.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "D.va", false, 0)
    default_hero_array.append(createWorkshopSetting(bool, "7.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Doomfist", false, 1))
    default_hero_array.append(createWorkshopSetting(bool, "7.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Junker Queen", false, 2))
    default_hero_array.append(createWorkshopSetting(bool, "7.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Orisa", false, 3))
    default_hero_array.append(createWorkshopSetting(bool, "7.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Ramattra", false, 4))
    default_hero_array.append(createWorkshopSetting(bool, "7.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Reinhardt", false, 5))
    default_hero_array.append(createWorkshopSetting(bool, "7.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Roadhog", false, 6))
	default_hero_array.append(createWorkshopSetting(bool, "7.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Sigma", false, 7))
    default_hero_array.append(createWorkshopSetting(bool, "7.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Winston", false, 8))
    default_hero_array.append(createWorkshopSetting(bool, "7.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Wrecking Ball", false, 9))
    default_hero_array.append(createWorkshopSetting(bool, "7.1. Bot Tank Heroes (Overridden by in-game changes to bot heroes)", "Zarya", false, 10))
    
    ## Bot Damage Heroes Enabled
    default_hero_array.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Ashe", true, 0))
    default_hero_array.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Bastion", false, 1))
    default_hero_array.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Cassidy", true, 2))
	default_hero_array.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Echo", true, 3))
    default_hero_array.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Genji", true, 4))
    default_hero_array.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Hanzo", true, 5))
    default_hero_array.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Junkrat", true, 6))
    default_hero_array.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Mei", true, 7))
    default_hero_array.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Pharah", true, 8))
    default_hero_array.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Reaper", true, 9))
	default_hero_array.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Sojourn", true, 10))
    default_hero_array.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Soldier 76", true, 11))
    default_hero_array.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Sombra", true, 12))
    default_hero_array.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Symmetra", true, 13))
    default_hero_array.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Torbjörn", true, 14))
	default_hero_array.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Tracer", true, 15))
    default_hero_array.append(createWorkshopSetting(bool, "7.2. Bot Damage Heroes (Overridden by in-game changes to bot heroes)", "Widowmaker", true, 16))
    
    ## Bot Support Heroes Enabled
    default_hero_array.append(createWorkshopSetting(bool, "7.3. Bot Support Heroes (Overridden by in-game changes to bot heroes)", "Ana", true, 0))
    default_hero_array.append(createWorkshopSetting(bool, "7.3. Bot Support Heroes (Overridden by in-game changes to bot heroes)", "Baptiste", true, 1))
	default_hero_array.append(createWorkshopSetting(bool, "7.3. Bot Support Heroes (Overridden by in-game changes to bot heroes)", "Brigitte", true, 2))
    default_hero_array.append(createWorkshopSetting(bool, "7.3. Bot Support Heroes (Overridden by in-game changes to bot heroes)", "Kiriko", true, 3))
    default_hero_array.append(createWorkshopSetting(bool, "7.3. Bot Support Heroes (Overridden by in-game changes to bot heroes)", "Lifeweaver", true, 4))
    default_hero_array.append(createWorkshopSetting(bool, "7.3. Bot Support Heroes (Overridden by in-game changes to bot heroes)", "Lúcio", true, 4))
    default_hero_array.append(createWorkshopSetting(bool, "7.3. Bot Support Heroes (Overridden by in-game changes to bot heroes)", "Mercy", true, 5))
    default_hero_array.append(createWorkshopSetting(bool, "7.3. Bot Support Heroes (Overridden by in-game changes to bot heroes)", "Moira", true, 6))
    default_hero_array.append(createWorkshopSetting(bool, "7.3. Bot Support Heroes (Overridden by in-game changes to bot heroes)", "Zenyatta", true, 7))
    
    # Bot Behavior
    enable_all_abilities = createWorkshopSetting(bool, "8. Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Enable All Bot Abilities", false, 0)
    ## Bot tank Behavior (index 0 - 10)
    bot_behavior = createWorkshopSetting(enum["Boosters, Missiles, Remech", "Boosters, Missiles, Remech, D. Matrix", "Boosters, Missiles, Remech, D. Matrix, Bomb"], "8.1. Tank Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Dva Bot Behavior", 0, 0)
    bot_behavior.append(createWorkshopSetting(enum["Slam, Punch", "Slam, Punch, Block", "Slam, Punch, Block, Meteor Strike"], "8.1. Tank Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Doomfist Bot Behavior", 0, 1))
    bot_behavior.append(createWorkshopSetting(enum["Jagged Blade, Carnage", "Jagged Blade, Carnage, Shout", "Jagged Blade, Carnage, Shout, Rampage"], "8.1. Tank Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Junker Queen Bot Behavior", 1, 2))
    bot_behavior.append(createWorkshopSetting(enum["Javlin", "Javlin, Fortify, Spin", "Javlin, Fortify, Spin, Terra Surge"], "8.1. Tank Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Orisa Bot Behavior", 0, 3))
    bot_behavior.append(createWorkshopSetting(enum["Omnic Form", "Omnic Form, Nemesis Form", "Omnic Form, Nemesis Form, Vortex, Shield, Block", "Omnic Form, Nemesis Form, Vortex, Shield, Block, Annihilation"], "8.1. Tank Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Ramattra Bot Behavior", 1, 4))
    bot_behavior.append(createWorkshopSetting(enum["Fire Strike", "Fire Strike, Pin, Shatter", "Fire Strike,Pin, Shatter, Shield"], "8.1. Tank Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Reinhardt Bot Behavior", 1, 5))
    bot_behavior.append(createWorkshopSetting(enum["Hook", "Hook, Heal",  "Hook, Heal, Whole Hog"], "8.1. Tank Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Roadhog Bot Behavior", 0, 6))
	bot_behavior.append(createWorkshopSetting(enum["Rock", "Rock, Flux", "Rock, Flux, Shield, Grasp"], "8.1. Tank Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Sigma Bot Behavior", 1, 7))
    bot_behavior.append(createWorkshopSetting(enum["Leap", "Leap, Primal", "Leap, Primal, Bubble"], "8.1. Tank Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Winston Bot Behavior", 1, 8))
    bot_behavior.append(createWorkshopSetting(enum["Roll", "Roll, Slam", "Roll, Slam, Shield", "Roll, Slam, Shields, Mines"], "8.1. Tank Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Wrecking Ball Bot Behavior", 1, 9))
    bot_behavior.append(createWorkshopSetting(enum["Rocket Jump", "Rocket Jump, Self Bubble", "Rocket Jump, Self Bubble, Grav"], "8.1. Tank Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Zarya Bot Behavior", 0, 10))
    
    ## Damage Bot Behavior (index 11 - 27)
    bot_behavior.append(createWorkshopSetting(enum["Coach Gun", "Coach Gun, Dynamite", "Coach GUn, Dynamite, B.O.B"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Ashe Bot Behavior", 1, 0))
    bot_behavior.append(createWorkshopSetting(enum["Recon Form", "Recon Form, Assault Form", "Recon Form, Assault Form, Grenade", "Recon, Assault, Grenade, Artillery Form"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Bastion Bot Behavior", 2, 1))
    bot_behavior.append(createWorkshopSetting(enum["Roll", "Roll, Mag Nade", "Roll, Mag Nade, High Noon"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Cassidy Bot Behavior", 1, 2))
	bot_behavior.append(createWorkshopSetting(enum["Flight", "Flight, Stickies", "Flight, Stickies, Beam"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Echo Bot Behavior", 2, 3))
    bot_behavior.append(createWorkshopSetting(enum["Dash", "Dash, Deflect", "Dash, Deflect, Dragonblade"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Genji Bot Behavior", 1, 4))
    bot_behavior.append(createWorkshopSetting(enum["Lunge", "Lunge, Storm", "Lunge, Storm, Dragonstrike"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Hanzo Bot Behavior", 1, 5))
    bot_behavior.append(createWorkshopSetting(enum["Conc", "Conc, Trap", "Conc, Trap, Rip Tire"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Junkrat Bot Behavior", 0, 6))
    bot_behavior.append(createWorkshopSetting(enum["None", "Ice Block", "Ice Block, Wall", "Ice Block, Wall, Blizzard"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Mei Bot Behavior", 1, 7))
    bot_behavior.append(createWorkshopSetting(enum["Hover, Jump Jet", "Hover, Jump Jet, Conc", "Hover, Jump Jet, Conc, Rocket Barrage"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Pharah Bot Behavior", 0, 8))
    bot_behavior.append(createWorkshopSetting(enum["Wraith", "Wraith, Teleport", "Wraith, Teleport, Blossom"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Reaper Bot Behavior", 1, 9))
    bot_behavior.append(createWorkshopSetting(enum["Slide, Rail", "Slide, Rail, Orb", "Slide, Rail, Orb, Overclock"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Sojourn Bot Behavior", 1, 10))
	bot_behavior.append(createWorkshopSetting(enum["Rocket", "Rocket, Sprint", "Rocket, Sprint, Heal", "Rocket, Sprint, Heal, Tac Visor"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Soldier 76 Bot Behavior", 1, 11))
    bot_behavior.append(createWorkshopSetting(enum["Translocate", "Translocate, Invisibility", "Translocate, Invisibility, Hack", "Translocate, Invisibility, Hack, EMP"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Sombra Bot Behavior", 1, 12))
    bot_behavior.append(createWorkshopSetting(enum["None", "Teleporter", "Teleporter, Photon Barrier"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Symmetra Bot Behavior ", 1, 13))
    bot_behavior.append(createWorkshopSetting(enum["Overload", "Overload, Molten Core"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Torbjörn Bot Behavior", 0, 14))
    bot_behavior.append(createWorkshopSetting(enum["Blink", "Blink, Recall", "Blink, Recall, Pulse Bomb"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Tracer Bot Behavior", 1, 15))
	bot_behavior.append(createWorkshopSetting(enum["None", "Grapple (Simulated)", "Grapple (Simulated), Venom Mine"], "8.2. Damage Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Widowmaker Bot Behavior", 1, 16))
    
    ## Bot Support Heroes (index 28 - 36)
    bot_behavior.append(createWorkshopSetting(enum["Sleep", "Sleep, Damage Nade", "Sleep, Damage + Self Nade"], "8.3. Support Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Ana Bot Behavior", 1, 0))
    bot_behavior.append(createWorkshopSetting(enum["Exo Boots", "Exo Boots, Regen", "Exo Boots, Regen, Immo", "Exo Boots, Regen, Immo, Amp. Matrix"], "8.3. Support Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Baptiste Bot Behavior", 0, 1))
	bot_behavior.append(createWorkshopSetting(enum["Whip Shot, Bash", "Whip Shot, Bash, Shield", "Whip Shot, Bash, Shield, Rally"], "8.3. Support Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Brigitte Bot Behavior", 0, 2))
    bot_behavior.append(createWorkshopSetting(enum["Swift Step", "Swift Step, Suzu", "Swift Step, Suzu, Kitsune Rush"], "8.3. Support Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Kiriko Bot Behavior", 1, 3))
    bot_behavior.append(createWorkshopSetting(enum["Dash", "Dash, Platform", "Dash, Platform, Life Grip", "Dash, Platform, Life Grip, Tree"], "8.3. Support Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Lifeweaver Bot Behavior", 1, 4))
    bot_behavior.append(createWorkshopSetting(enum["Speed Aura", "Speed Aura, Amp", "Speed Aura, Amp, Boop", "Speed + Healing Aura, Amp, Boop", "Speed + Healing Aura, Amp, Boop, Beat"], "8.3. Support Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Lúcio Bot Behavior", 1, 4))
    bot_behavior.append(createWorkshopSetting(enum["GA, Damage Boost", "GA, Damage + Healing Boost", "GA, Damage + Healing Boost, Valkyrie"], "8.3. Support Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Mercy Bot Behavior", 0, 5))
    bot_behavior.append(createWorkshopSetting(enum["Fade", "Fade, Damage Orb", "Fade, Damage + Heal Orb", "Fade, Damage + Heal Orb, Coalescence"], "8.3. Support Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Moira Bot Behavior", 1, 6))
    bot_behavior.append(createWorkshopSetting(enum["Volley", "Volley, Discord", "Volley, Discord, Transcendence"], "8.3. Support Bot Behavior (Certain abilities need 'Bots React' and/or 'Pressure mode' to be on)", "Zenyatta Bot Behavior", 1, 7))


rule "Initialize: Setup":

    pauseMatchTime()
    ## Disable Inspector for performance
    if show_debug_info == false:
        disableInspector()
    

rule "Initialize: Static Global Variables":
    
    data_loaded[0] = false
    data_loaded[1] = false
    data_loaded[2] = false

    hero_array_index = 0
    hero_array[hero_array_index] = Hero.DVA
    hero_proj_speed[hero_array_index] = [0,0,0,40,12]
    hero_proj_gravity[hero_array_index] = [0,0,0,0,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 7.00, 3.00]
    hero_react_eat[hero_array_index] = [0.50, 0.00, 0.00, 2.00, 0.00]
    hero_react_block[hero_array_index] = [0.50, 0.00, 0.00, 2.00, 0.90]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.90]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.25, 0.25, 0.00]
    hero_name_array[hero_array_index] = "ChoiHyoBin"
    
    hero_array_index += 1
    hero_array[hero_array_index] = Hero.DOOMFIST
    hero_proj_speed[hero_array_index] = [80,44,0,0,0]
    hero_proj_gravity[hero_array_index] = [0,0,0,0,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.60, 1.00, 1.00, 1.00]
    hero_react_eat[hero_array_index] = [0.25, 0.00, 0.00, 0.00, 0.00]
    hero_react_block[hero_array_index] = [0.25, 0.00, 0.75, 0.00, 0.90]
    hero_react_dodge[hero_array_index] = [0.00, 1.00, 0.50, 0.00, 0.90]
    hero_react_stun[hero_array_index] = [0.00, 0.50, 0.50, 0.75, 0.00]
    hero_name_array[hero_array_index] = "Danteh"
    
    hero_array_index += 1
    hero_array[hero_array_index] = Hero.JUNKER_QUEEN
    hero_proj_speed[hero_array_index] = [80,30,0,0,0]
    hero_proj_gravity[hero_array_index] = [0,9.84,0,0,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 1.00, 3.00]
    hero_react_eat[hero_array_index] = [0.50, 0.75, 0.00, 0.00, 0.00]
    hero_react_block[hero_array_index] = [0.50, 0.75, 0.00, 0.00, 0.90]
    hero_react_dodge[hero_array_index] = [0.00, 0.50, 0.00, 0.50, 0.90]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.75, 0.90]
    hero_name_array[hero_array_index] = "Hanbin"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.ORISA
    hero_proj_speed[hero_array_index] = [90,70,0,0,0]
    hero_proj_gravity[hero_array_index] = [0,9.84,0,0,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 1.00, 5.00]
    hero_react_eat[hero_array_index] = [0.50, 0.75, 0.00, 0.00, 0.00]
    hero_react_block[hero_array_index] = [0.50, 0.75, 0.00, 0.00, 0.00]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.00, 0.75, 0.90]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "Gator"
    
    hero_array_index += 1
    hero_array[hero_array_index] = Hero.RAMATTRA
    hero_proj_speed[hero_array_index] = [80,0,0,30,0]
    hero_proj_gravity[hero_array_index] = [0,0,0,9.84,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 1.00, 5.00]
    hero_react_eat[hero_array_index] = [0.50, 0.00, 0.00, 0.75, 0.00]
    hero_react_block[hero_array_index] = [0.50, 0.00, 0.00, 0.50, 0.90]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.00, 0.75, 0.90]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "Hawk"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.REINHARDT
    hero_proj_speed[hero_array_index] = [0,0,0,25,0]
    hero_proj_gravity[hero_array_index] = [0,0,0,0,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 1.00, 1.00]
    hero_react_eat[hero_array_index] = [0.00, 0.00, 0.00, 0.75, 0.00]
    hero_react_block[hero_array_index] = [0.25, 0.00, 0.00, 0.00, 0.90]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.75, 0.75, 0.90]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.75, 0.00, 0.90]
    hero_name_array[hero_array_index] = "Super"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.ROADHOG
    hero_proj_speed[hero_array_index] = [80,80,40,0,0]
    hero_proj_gravity[hero_array_index] = [0,0,0,0,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [5.00, 5.00, 5.00, 5.00, 9.00]
    hero_react_eat[hero_array_index] = [0.50, 0.50, 0.00, 0.00, 0.90]
    hero_react_block[hero_array_index] = [0.50, 0.50, 0.75, 0.00, 0.90]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.75, 0.00, 0.90]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.75, 0.00]
    hero_name_array[hero_array_index] = "Gesture"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.SIGMA
    hero_proj_speed[hero_array_index] = [50,16.5,0,37.5,0]
    hero_proj_gravity[hero_array_index] = [5.95,0,0,18.35,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 1.00, 3.00]
    hero_react_eat[hero_array_index] = [0.50, 0.00, 0.00, 0.00, 0.00]
    hero_react_block[hero_array_index] = [0.50, 0.00, 0.00, 0.75, 0.00]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.00, 0.75, 0.90]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.75, 0.00, 0.90]
    hero_name_array[hero_array_index] = "Void"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.WINSTON
    hero_proj_speed[hero_array_index] = [0,0,0,0,0]
    hero_proj_gravity[hero_array_index] = [0,0,0,0,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 1.00, 1.00]
    hero_react_eat[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_react_block[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.25, 0.00, 0.90]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.50, 0.00, 0.90]
    hero_name_array[hero_array_index] = "Fearless"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.HAMMOND
    hero_proj_speed[hero_array_index] = [0,0,0,0,0]
    hero_proj_gravity[hero_array_index] = [0,0,0,0,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 1.00, 1.00]
    hero_react_eat[hero_array_index] = [0.50, 0.00, 0.00, 0.00, 0.00]
    hero_react_block[hero_array_index] = [0.50, 0.00, 0.00, 0.00, 0.90]
    hero_react_dodge[hero_array_index] = [0.00, 0.75, 0.00, 0.00, 0.90]
    hero_react_stun[hero_array_index] = [0.00, 0.75, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "Ga9a"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.ZARYA
    hero_proj_speed[hero_array_index] = [0,25,0,0,25]
    hero_proj_gravity[hero_array_index] = [0,9.84,0,0,9.84]
    hero_proj_delta[hero_array_index] = [0,0.1,0,0,0.1]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 1.00, 1.00]
    hero_react_eat[hero_array_index] = [0.00, 0.50, 0.00, 0.00, 0.90]
    hero_react_block[hero_array_index] = [0.50, 0.50, 0.00, 0.00, 0.90]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.90]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "Hotba"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.ASHE
    hero_proj_speed[hero_array_index] = [0,0,25,0,15]
    hero_proj_gravity[hero_array_index] = [0,0,8.03,0,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 1.00, 1.00]
    hero_react_eat[hero_array_index] = [0.50, 0.00, 0.00, 0.75, 0.00]
    hero_react_block[hero_array_index] = [0.50, 0.00, 0.00, 0.75, 0.90]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.00, 0.75, 0.90]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "Shy"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.BASTION
    hero_proj_speed[hero_array_index] = [0,40,0,0,0]
    hero_proj_gravity[hero_array_index] = [0,9.84,0,0,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 6.00, 1.00, 5.00]
    hero_react_eat[hero_array_index] = [0.50, 0.75, 0.75, 0.00, 0.90]
    hero_react_block[hero_array_index] = [0.50, 0.75, 0.75, 0.00, 0.90]
    hero_react_dodge[hero_array_index] = [0.00, 0.75, 0.75, 0.00, 0.90]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "Architect"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.MCCREE
    hero_proj_speed[hero_array_index] = [0,20,0,0,0]
    hero_proj_gravity[hero_array_index] = [0,9.84,0,0,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 1.00, 5.00]
    hero_react_eat[hero_array_index] = [0.50, 0.50, 0.00, 1.00, 0.90]
    hero_react_block[hero_array_index] = [0.50, 0.50, 0.00, 1.00, 0.90]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.00, 1.00, 0.90]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "Carpe"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.ECHO
    hero_proj_speed[hero_array_index] = [75,50,0,0,0]
    hero_proj_gravity[hero_array_index] = [0,0,0,0,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 2.00, 1.00]
    hero_react_eat[hero_array_index] = [0.50, 0.75, 0.00, 0.00, 0.00]
    hero_react_block[hero_array_index] = [0.50, 0.75, 0.00, 0.75, 0.00]
    hero_react_dodge[hero_array_index] = [0.00, 0.75, 0.00, 0.75, 0.00]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "Speedily"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.GENJI
    hero_proj_speed[hero_array_index] = [60,60,50,0,0]
    hero_proj_gravity[hero_array_index] = [0,0,0,0,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 1.00, 1.00]
    hero_react_eat[hero_array_index] = [0.50, 0.50, 0.00, 0.00, 0.00]
    hero_react_block[hero_array_index] = [0.50, 0.50, 0.00, 0.00, 0.00]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.75, 0.00, 0.90]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "Sp9rk1e"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.HANZO
    hero_proj_speed[hero_array_index] = [110,0,110,0,20]
    hero_proj_gravity[hero_array_index] = [9.84,0,9.84,0,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 2.00, 1.00]
    hero_react_eat[hero_array_index] = [0.50, 0.00, 0.00, 0.75, 0.90]
    hero_react_block[hero_array_index] = [0.50, 0.00, 0.00, 0.75, 0.00]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.00, 0.75, 0.90]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "Profit"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.JUNKRAT
    hero_proj_speed[hero_array_index] = [25,0,25,17,0]
    hero_proj_gravity[hero_array_index] = [12.35,0,20.30,20.20,0]
    hero_proj_delta[hero_array_index] = [0.075,0,0.09,0.095,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 1.00, 1.00]
    hero_react_eat[hero_array_index] = [0.50, 0.00, 0.75, 0.00, 0.00]
    hero_react_block[hero_array_index] = [0.50, 0.00, 0.75, 0.00, 0.00]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.75, 0.00, 0.90]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "Jake"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.MEI
    hero_proj_speed[hero_array_index] = [20,115,0,0,20]
    hero_proj_gravity[hero_array_index] = [0,0,0,0,9.84]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [2.00, 1.00, 1.00, 1.00, 1.00]
    hero_react_eat[hero_array_index] = [0.00, 0.50, 0.00, 0.00, 0.90]
    hero_react_block[hero_array_index] = [0.75, 0.50, 0.00, 0.00, 0.00]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.90]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "Pelican"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.PHARAH
    hero_proj_speed[hero_array_index] = [35,0,0,60,45]
    hero_proj_gravity[hero_array_index] = [0,0,0,0,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 1.00, 3.00]
    hero_react_eat[hero_array_index] = [0.75, 0.00, 0.00, 0.25, 0.90]
    hero_react_block[hero_array_index] = [0.75, 0.00, 0.00, 0.25, 0.90]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.90]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.90]
    hero_name_array[hero_array_index] = "Jinmu"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.REAPER
    hero_proj_speed[hero_array_index] = [0,0,0,0,0]
    hero_proj_gravity[hero_array_index] = [0,0,0,0,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 1.00, 3.00]
    hero_react_eat[hero_array_index] = [0.50, 0.00, 0.00, 0.00, 0.90]
    hero_react_block[hero_array_index] = [0.50, 0.00, 0.00, 0.00, 0.90]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.90]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.90]
    hero_name_array[hero_array_index] = "Doha"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.SOJOURN
    hero_proj_speed[hero_array_index] = [160,0,0,30,0]
    hero_proj_gravity[hero_array_index] = [0,0,0,0,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 1.00, 5.00]
    hero_react_eat[hero_array_index] = [0.50, 0.50, 0.00, 1.00, 0.90]
    hero_react_block[hero_array_index] = [0.50, 0.50, 0.00, 1.00, 0.90]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.00, 1.00, 0.90]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "Edison"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.SOLDIER
    hero_proj_speed[hero_array_index] = [0,50,0,0,0]
    hero_proj_gravity[hero_array_index] = [0,0,0,0,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 1.00, 5.00]
    hero_react_eat[hero_array_index] = [0.50, 0.75, 0.00, 0.00, 0.90]
    hero_react_block[hero_array_index] = [0.50, 0.75, 0.00, 0.00, 0.90]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.90]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "Fleta"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.SOMBRA
    hero_proj_speed[hero_array_index] = [0,0,0,25,0]
    hero_proj_gravity[hero_array_index] = [0,0,0,20.20,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 1.00, 1.00]
    hero_react_eat[hero_array_index] = [0.50, 0.00, 0.00, 0.00, 0.00]
    hero_react_block[hero_array_index] = [0.50, 0.75, 0.00, 0.00, 0.00]
    hero_react_dodge[hero_array_index] = [0.00, 0.75, 0.00, 0.00, 0.90]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "Lip"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.SYMMETRA
    hero_proj_speed[hero_array_index] = [0,50,20,0,0]
    hero_proj_gravity[hero_array_index] = [0,0,0,0,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [5.00, 1.00, 1.00, 1.00, 1.00]
    hero_react_eat[hero_array_index] = [0.00, 0.50, 0.00, 0.00, 0.00]
    hero_react_block[hero_array_index] = [0.50, 0.50, 0.00, 0.00, 0.00]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "Happy"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.TORBJORN
    hero_proj_speed[hero_array_index] = [70,120,17,0,40]
    hero_proj_gravity[hero_array_index] = [9.84,0,20,0,30.05]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 1.00, 3.00]
    hero_react_eat[hero_array_index] = [0.50, 0.50, 0.00, 0.00, 0.90]
    hero_react_block[hero_array_index] = [0.50, 0.50, 0.00, 0.00, 0.90]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.90]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "Nero"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.TRACER
    hero_proj_speed[hero_array_index] = [0,0,0,0,15]
    hero_proj_gravity[hero_array_index] = [0,0,0,0,30.80]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0.19]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 1.00, 1.50]
    hero_react_eat[hero_array_index] = [0.50, 0.00, 0.00, 0.00, 0.90]
    hero_react_block[hero_array_index] = [0.50, 0.00, 0.00, 0.00, 0.90]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.90]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "Proper"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.WIDOWMAKER
    hero_proj_speed[hero_array_index] = [0,0,0,20,0]
    hero_proj_gravity[hero_array_index] = [0,0,0,9.84,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [2.00, 1.00, 1.00, 1.00, 1.00]
    hero_react_eat[hero_array_index] = [0.50, 0.00, 0.00, 0.00, 0.00]
    hero_react_block[hero_array_index] = [0.75, 0.00, 0.00, 0.00, 0.00]
    hero_react_dodge[hero_array_index] = [0.25, 0.00, 0.00, 0.75, 0.00]
    hero_react_stun[hero_array_index] = [0.00, 0.10, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "ANS"
    
    hero_array_index += 1
    hero_array[hero_array_index] = Hero.ANA
    hero_proj_speed[hero_array_index] = [125,0,60,30,0]
    hero_proj_gravity[hero_array_index] = [0,0,0,9.84,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 1.00, 1.00]
    hero_react_eat[hero_array_index] = [0.50, 0.00, 0.75, 0.75, 0.00]
    hero_react_block[hero_array_index] = [0.50, 0.00, 0.75, 0.75, 0.00]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.75, 0.75, 0.00]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "Shu"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.BAPTISTE
    hero_proj_speed[hero_array_index] = [0,60,0,60,0]
    hero_proj_gravity[hero_array_index] = [0,20.1,0,20.10,0]
    hero_proj_delta[hero_array_index] = [0,0.007,0,0,0.007]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 1.00, 9.00]
    hero_react_eat[hero_array_index] = [0.50, 0.00, 0.00, 0.00, 0.90]
    hero_react_block[hero_array_index] = [0.50, 0.00, 0.00, 0.00, 0.90]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.90]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "Alarm"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.BRIGITTE
    hero_proj_speed[hero_array_index] = [0,0,80,0,0]
    hero_proj_gravity[hero_array_index] = [0,0,0,0,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 1.00, 1.00]
    hero_react_eat[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_react_block[hero_array_index] = [0.00, 0.00, 0.75, 0.00, 0.00]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.75, 0.00, 0.00]
    hero_react_stun[hero_array_index] = [0.00, 0.50, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "Skewed"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.KIRIKO
    hero_proj_speed[hero_array_index] = [20,90,0,35,0]
    hero_proj_gravity[hero_array_index] = [0,0,0,9.84,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 1.00, 1.00]
    hero_react_eat[hero_array_index] = [0.00, 0.50, 0.00, 0.75, 1.00]
    hero_react_block[hero_array_index] = [0.00, 0.50, 0.00, 0.00, 1.00]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 1.00]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "Fielder"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.LIFEWEAVER
    hero_proj_speed[hero_array_index] = [0,70,40,0,0]
    hero_proj_gravity[hero_array_index] = [0,0,9.84,0,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 1.00, 1.00]
    hero_react_eat[hero_array_index] = [0.50, 0.00, 0.00, 0.00, 0.00]
    hero_react_block[hero_array_index] = [0.50, 0.00, 0.00, 0.00, 0.00]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "Rupal"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.LUCIO
    hero_proj_speed[hero_array_index] = [50,0,0,0,0]
    hero_proj_gravity[hero_array_index] = [0,0,0,0,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 1.00, 1.00]
    hero_react_eat[hero_array_index] = [0.50, 0.00, 0.00, 0.00, 0.00]
    hero_react_block[hero_array_index] = [0.50, 0.00, 0.00, 0.00, 0.00]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "FunnyAstro"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.MERCY
    hero_proj_speed[hero_array_index] = [50,0,0,0,100]
    hero_proj_gravity[hero_array_index] = [0,0,0,0,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 1.00, 1.00]
    hero_react_eat[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_react_block[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "Moth"

    hero_array_index += 1
    hero_array[hero_array_index] = Hero.MOIRA
    hero_proj_speed[hero_array_index] = [0,0,20,0,0]
    hero_proj_gravity[hero_array_index] = [0,0,0,0,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 1.00, 1.00, 2.00, 1.00]
    hero_react_eat[hero_array_index] = [0.00, 0.00, 0.00, 0.75, 0.00]
    hero_react_block[hero_array_index] = [0.00, 0.50, 0.00, 0.00, 0.00]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.00, 0.75, 0.90]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "Viol2t"

    hero_array_index += 1
    hero_array[36] = Hero.ZENYATTA
    hero_proj_speed[hero_array_index] = [90,90,90,90,0]
    hero_proj_gravity[hero_array_index] = [0,0,0,0,0]
    hero_proj_delta[hero_array_index] = [0,0,0,0,0]
    hero_react_response[hero_array_index] = [1.00, 5.00, 1.00, 1.00, 1.00]
    hero_react_eat[hero_array_index] = [0.50, 0.75, 0.00, 0.00, 0.00]
    hero_react_block[hero_array_index] = [0.50, 0.75, 0.00, 0.00, 0.00]
    hero_react_dodge[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_react_stun[hero_array_index] = [0.00, 0.00, 0.00, 0.00, 0.00]
    hero_name_array[hero_array_index] = "Jjonak"
    
    data_loaded[0] = true

    
rule "Initialize Dynamic Global Variables":
        

    # Initialize some static data here since the static rule is too large
    splash_text = [
        "Meow!", 
        "Taxi your mercy!", 
        "Good Luck, Have Fun everyone!",
        "Try Out Pressure Mode!", 
        "You're Swagging Out!",
        "Taxi your kiriko!",
        "Also Try TF2!",
        "Drink Water to Make Your Tracking Slaughter!",
        "You can do it!", 
        "Congratulations!", 
        "Fighting!", 
        "Boop!", 
        "A group of penguins is a waddle!", 
        "Believe",  
        "Nervous? Me? Never!",
        "_A__ __FF",
        "I Like Seaweed!",
        "Plentiful Sleep Make Your Flicks So Sleek!",
        "Greetings!",
        "Do you do posion?",
        "Can we get a nano going?",
        "5 Man Rez!",
        "I'm back, baby!",
        "32.33 percentage of survival!",
        "Your gun is so cute!",
        "01100111 01100111",
        "Chengdu Hunters MVP!",
        "Boo!",
        "Also Try Risk of Rain!"
        ]
    opt_array_speed = [[100, 125, 130, 155, 160, 175],
                            ["100% (Default)", "125% (Kitsune)", "130% (Lucio Passive / JQ Shout)", "155% (Lucio Passive + Kitsune)", "160% (Lucio Amp)", "175% (Speed Boost Cap)"],
                            [Color.YELLOW, Color.ROSE, Color.LIME_GREEN, Color.TURQUOISE, Color.GREEN, Color.PURPLE, Color.BLACK]]
    opt_array_abilities = ["off", "primary", "secondary", "ability 1", "ability 2", "ultimate"]
    opt_array_spawn_strings = ["Single Point", "Multipoint"] 
    opt_array_movement = [["randomized", "default", "random long strafes", "ad strafes", "Custom Distance", "Fixed Shapes (CW)", "Fixed Shapes (CCW)", "No Movement", "Forward AD Strafes", "Forward Movement Only"],
    ["Custom", "Very Easy", "Easy", "Normal", "Hard", "Very Hard"], 
    [Color.SKY_BLUE, Color.LIME_GREEN, Color.GREEN, Color.ORANGE, Color.RED, Color.BLACK],
    [custom_min_wait, 1.5, 0.75, 0.4, 0.25, 0.10],
    [custom_max_wait, 3.5, 1.75, 0.8, 0.45, 0.35]]
    opt_array_pressure = ["Off", "On", "Unkillable"]
    alt_mvmt_array = [3,7,8,9]

    # Initialize default menu colors
    default_menu_label_color = Color.WHITE
    default_menu_off_index_color = Color.WHITE
    default_menu_on_index_color = Color.TEAM_1

    # Wait until the static data has been set.
    waitUntil(data_loaded[0] == true, 9999)
    wait(2)
    ## Map Default Spawns
    if use_custom_spawn == false:
        set_map_default_spawn_pt()

    if enable_all_abilities == true:
        bot_index = 0
        while bot_index <= 35:
            bot_behavior[bot_index] = 9999
            bot_index += 1
    player_list = []

    # Build init bot hero pool
    for bot_index in range(0,len(hero_array),1):
        if default_hero_array[bot_index] ==  true:
            active_hero_array.append(hero_array[bot_index])
            hero_array_status[bot_index] = "on"
        else:
            hero_array_status[bot_index] = "off"

    del active_hero_array[0]
    active_hero_array = random.shuffle(active_hero_array)
    # Set Movement Settings
    mvmt_min_wait = opt_array_movement[3][default_bot_diff]
    mvmt_max_wait = opt_array_movement[4][default_bot_diff]
    default_turn_rate = 600

    if spawn_type == false:
        spawn_type = 0
        for bot_index in range(0, bot_count, 1):
            bot_radius_array[bot_index] = spawn_radius
            bot_pool_array[bot_index] = random.shuffle(active_hero_array)
            bot_spawn_array[bot_index] = default_spawn_pt
    else:
        spawn_type = 1

    # Starts generating all the bots
    data_loaded[1] = true
    wait(2)
    if bot_count > 0:
        create_all_bots()


# Lobby Rules
rule "Player Joined: Team 1 Defaults":
    @Event playerJoined
    @Team 1
    
    # Default settings and hud generation
    eventPlayer.disableGamemodeHud()
    waitUntil(data_loaded[1] == true, 9999)
    if show_main_hud == true:
        main_hud()
        create_settings_prompt()
    if eventPlayer == hostPlayer or show_main_hud == false:
        menu_hud()
    else:
        default_menu_variables()
    if show_main_hud == true:
        misc_hud()
    elif eventPlayer != hostPlayer:
        hudSubtext(eventPlayer, 
        "Code: VXEAT", 
        HudPosition.RIGHT, 
        -1, 
        rgb(random.randint(0,255), random.randint(0,255), random.randint(0,255)), 
        HudReeval.VISIBILITY_STRING_AND_COLOR, 
        SpecVisibility.DEFAULT)
    

rule "Player Joined: Team 2 Defaults":
    @Event playerJoined
    @Team 2

    # Set default mvmt speed
    eventPlayer.bot_ability_signal = [false, false, false, false, false]
    eventPlayer.bot_ability_lock  = [false, false, false, false, false]
    eventPlayer.bot_ability_var = false


def set_curr_hero_index():
    @Name "SUB: set_curr_hero_index"

    eventPlayer.curr_hero = eventPlayer.getCurrentHero()
    eventPlayer.curr_hero_index = 0
    while(eventPlayer.curr_hero_index < len(hero_array) and eventPlayer.curr_hero != hero_array[eventPlayer.curr_hero_index]):
            eventPlayer.curr_hero_index += 1


rule "Player Spawned":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.hasSpawned() == true
    
    set_curr_hero_index()
    # Add new player to list
    if player_list[0] == null:
        player_list[0] = eventPlayer
    else:
        player_list.append(eventPlayer)
    # Store max ammo for inf ammo setting
    eventPlayer.default_ammo = eventPlayer.getMaxAmmo(0)
    # Turn off menu
    eventPlayer.menu_visible = false
    # Allow player to use inputs
    enable_player_input()
    # Make player unkillable by default. Deaths are done in-code to reduce wait1ing time vs via the death mechanic.
    eventPlayer.setStatusEffect(eventPlayer, Status.UNKILLABLE, 9999)
    # Defaults Stats
    eventPlayer.stat_dmg_dealt = 0
    eventPlayer.stat_dmg_taken = 0
    # Variables to track player inputs and the response sensitivities to each of their abilities
    eventPlayer.player_ability_lock = 0
    eventPlayer.react_matrix   = hero_react_response[eventPlayer.curr_hero_index]
    eventPlayer.eat_cd_matrix   = hero_react_eat[eventPlayer.curr_hero_index]
    eventPlayer.block_cd_matrix = hero_react_block[eventPlayer.curr_hero_index]
    eventPlayer.dodge_cd_matrix = hero_react_dodge[eventPlayer.curr_hero_index]
    eventPlayer.stun_cd_matrix  = hero_react_stun[eventPlayer.curr_hero_index]

    eventPlayer.teleport(default_spawn_pt)

    if eventPlayer != hostPlayer and show_main_hud == true:
        wait(5)
        smallMessage(eventPlayer, "For access to the player menu, ask the host to disable the show menu hud option in the workshop settings")

rule "Player Left":
    @Event playerLeft
    @Condition eventPlayer.isDummy() == false
    
    destroyDummy(Team.1, eventPlayer.getSlot() + 6)
    player_list.remove(eventPlayer)


rule "Player Set look target":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.isAlive()

    eventPlayer.look_target = eventPlayer.getPlayerClosestToReticle(Team.2)
    wait(0.1)
    if RULE_CONDITION:
        goto RULE_START


# UI Elements
rule "Menu Controls: Toggle Menu with Interact":
    @Event eachPlayer
    @Team 1
    # Change this condition to whatever button(s) you want to trigger the main menu. 
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    @Condition (eventPlayer == hostPlayer or show_main_hud == false)
    if console_ui == true:
        wait(1)
        if eventPlayer.isHoldingButton(Button.INTERACT) == false:
            return
    # A toggle for the menu_visible flag
    if eventPlayer.menu_visible == true:
        eventPlayer.menu_visible = false
    else:
        eventPlayer.menu_visible = true


rule "Menu Controls: Toggle On Setup":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.menu_visible == true

    ring_check()
    eventPlayer.disallowButton(Button.PRIMARY_FIRE)
    eventPlayer.disallowButton(Button.SECONDARY_FIRE)
    eventPlayer.disallowButton(Button.JUMP)
    eventPlayer.disallowButton(Button.ABILITY_1)
    eventPlayer.disallowButton(Button.ABILITY_2)
    eventPlayer.disallowButton(Button.ULTIMATE)
    eventPlayer.setMoveSpeed(0)

    if speed_mode_enabled == true and eventPlayer == hostPlayer:
        stopChasingVariable(speed_timer)

rule "Menu Controls: Toggle Off Setup Player":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.menu_visible == false

    enable_player_input()
    ring_check()


rule "Menu Controls: Toggle Off Setup Game":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.menu_visible == false

    # For reasons Im not sure of the player sometimes has their movement disabled when exiting the menu after the first call, so a second is done slightly after to avoid that bug.
    if eventPlayer.menu_reset_bots == true:
        smallMessage(getAllPlayers(), "    Destroying Old Bots...")
        destroy_all_bots()
        wait(1)
        if bot_count > 0:
            smallMessage(getAllPlayers(), "    Creating New Bots...")
            create_all_bots()
        eventPlayer.menu_reset_bots = false
    if speed_mode_enabled == true and eventPlayer == hostPlayer:
        chase(speed_timer, 0, rate=1, ChaseReeval.NONE)


rule "Menu Controls: Up Scroll":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.menu_visible == true
    # We use the player's movement keys to navigate the menu.
    # If you'd like to use a button input instead, change this condition.
    @Condition (console_ui == false and eventPlayer.getThrottle() == Vector.FORWARD) or (console_ui == true and eventPlayer.isHoldingButton(Button.ULTIMATE))
    
    menu_up_check()
    while eventPlayer.item_visible[eventPlayer.menu_index] == false:
        menu_up_check()
    ring_check()


rule "Menu Controls: Down Scroll":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.menu_visible == true
    # We use the player's movement keys to navigate the menu.
    # If you'd like to use a button input instead, change this condition.
    @Condition (console_ui == false and eventPlayer.getThrottle() == Vector.BACKWARD) or (console_ui == true and eventPlayer.isHoldingButton(Button.JUMP))
    
    menu_down_check()
    while eventPlayer.item_visible[eventPlayer.menu_index] == false:
        menu_down_check()
    ring_check()

def menu_up_check():
    @Name "SUB: menu_up_check"

    # If the menu index is equal to the start of the submenu start location
    if eventPlayer.menu_index - eventPlayer.submenu_start_index[eventPlayer.submenu_index] <= 0:
        # then loop to the end of the submenu
        eventPlayer.menu_index = eventPlayer.submenu_start_index[eventPlayer.submenu_index+1] - 1
    else:
        # otherwise move up 1 on the menu.
        eventPlayer.menu_index -= 1

def menu_down_check():
        @Name "SUB: menu_down_check"    

    # If the menu index is equal to the end of our submenu
    if eventPlayer.menu_index >= eventPlayer.submenu_start_index[eventPlayer.submenu_index+1] - 1:
        # then loop to the start of the submenu
        eventPlayer.menu_index = eventPlayer.submenu_start_index[eventPlayer.submenu_index]
    else:
        # then move down 1 on the menu.
        eventPlayer.menu_index += 1


def ring_check():
    @Name "SUB: ring_check"

    if ring_effect != null:
        destroyEffect(ring_effect)
    if  eventPlayer.menu_visible == true and (eventPlayer.menu_index == 31 or eventPlayer.menu_index == 32):
        createEffect(eventPlayer, Effect.LIGHT_SHAFT, Color.ROSE,bot_spawn_array[bot_slot], bot_radius_array[bot_slot], EffectReeval.POSITION_AND_RADIUS)
        ring_effect = getLastCreatedEntity()


def enable_player_input():
    @Name "SUB: enable_player_input"
    eventPlayer.allowButton(Button.PRIMARY_FIRE)
    eventPlayer.allowButton(Button.SECONDARY_FIRE)
    eventPlayer.allowButton(Button.JUMP)
    eventPlayer.allowButton(Button.ABILITY_1)
    eventPlayer.allowButton(Button.ABILITY_2)
    eventPlayer.allowButton(Button.ULTIMATE)
    eventPlayer.setMoveSpeed(eventPlayer.custom_speed)


def default_menu_variables():
    @Name "SUB: default_menu_variables"

    # Default menu variables
    eventPlayer.menu_index = 0
    eventPlayer.submenu_index = 0
    eventPlayer.submenu_start_index[0] = 0
    eventPlayer.submenu_start_index[1] = 1
    eventPlayer.menu_max_pos = -1
    eventPlayer.menu_label_size = -1
    eventPlayer.menu_opt_size = -1
    eventPlayer.sub_size = 0
    eventPlayer.menu_off_opt_color = default_menu_off_index_color

    # Default menu option variables
    eventPlayer.infinite_ammo = false
    eventPlayer.strafe_stun_timer = 0
    eventPlayer.proj_type = 0
    eventPlayer.proj_effects = [null, null]
    eventPlayer.buff_effects = [null, null]
    eventPlayer.custom_speed = 100
    eventPlayer.menu_reset_bots = false


def create_settings_prompt():
    @Name "SUB: create_settings_prompt"
    
    # Settings Headers
    if console_ui == false:
        if eventPlayer == hostPlayer:
            hudSubheader([i for i in eventPlayer if not eventPlayer.menu_visible], 
            "Press  {0}  to open menu".format(buttonString(Button.INTERACT)), HudPosition.LEFT, 1000, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
            hudSubheader([i for i in eventPlayer if eventPlayer.menu_visible], 
            "Press  {0}  to close menu".format(buttonString(Button.INTERACT)), HudPosition.LEFT, 1001, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
           
        hudSubheader([i for i in eventPlayer if eventPlayer.menu_visible], 
        "—  Controls  —", HudPosition.LEFT, 1002, Color.BLACK, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        hudSubheader([i for i in eventPlayer if eventPlayer.menu_visible], 
        "Select: {0}".format(buttonString(Button.ABILITY_2)), HudPosition.LEFT, 1003, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        hudSubheader([i for i in eventPlayer if eventPlayer.menu_visible], 
        "Menu Up: Forward", HudPosition.LEFT, 1004, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        hudSubheader([i for i in eventPlayer if eventPlayer.menu_visible], 
        "Menu Down: Backward", HudPosition.LEFT, 1005, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        hudSubheader([i for i in eventPlayer if eventPlayer.menu_visible], 
        "Small Step: left / right", HudPosition.LEFT, 1006, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        hudSubheader([i for i in eventPlayer if eventPlayer.menu_visible], 
        "Large Step: {0} / {1}".format(buttonString(Button.ULTIMATE), buttonString(Button.ABILITY_2)), HudPosition.LEFT, 1007, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    else:
        hudSubheader([i for i in eventPlayer if not eventPlayer.menu_visible], 
        "Press  {0}  for 1 second to open menu".format(buttonString(Button.INTERACT)), HudPosition.LEFT, 1000, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        hudSubheader([i for i in eventPlayer if eventPlayer.menu_visible], 
        "Press  {0}  for 1 second to close menu".format(buttonString(Button.INTERACT)), HudPosition.LEFT, 1001, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        hudSubheader([i for i in eventPlayer if eventPlayer.menu_visible], 
        "—  Controls  —", HudPosition.LEFT, 1002, Color.BLACK, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        hudSubheader([i for i in eventPlayer if eventPlayer.menu_visible], 
        "Select: {0}".format(buttonString(Button.ABILITY_2)), HudPosition.LEFT, 1003, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        hudSubheader([i for i in eventPlayer if eventPlayer.menu_visible], 
        "Menu Up: {0}".format(buttonString(Button.ULTIMATE)), HudPosition.LEFT, 1004, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        hudSubheader([i for i in eventPlayer if eventPlayer.menu_visible], 
        "Menu Down: {0}".format(buttonString(Button.JUMP)), HudPosition.LEFT, 1005, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        hudSubheader([i for i in eventPlayer if eventPlayer.menu_visible], 
        "Small Step: {0} / {1}".format(buttonString(Button.ABILITY_1), buttonString(Button.ABILITY_2)), HudPosition.LEFT, 1006, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        hudSubheader([i for i in eventPlayer if eventPlayer.menu_visible], 
        "Large Step: {0} / {1}".format(buttonString(Button.SECONDARY_FIRE), buttonString(Button.PRIMARY_FIRE)), HudPosition.LEFT, 1007, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
def increment_for_menu_label():
    @Name "SUB: increment_menu_label"

    eventPlayer.menu_label_size += 1
    eventPlayer.menu_max_pos += 1
    eventPlayer.item_visible[eventPlayer.menu_label_size] = true


def increment_for_menu_item():
    @Name "SUB: increment_for_menu_item"

    eventPlayer.menu_opt_size += 1
    eventPlayer.menu_max_pos += 1
    eventPlayer.submenu_start_index[eventPlayer.sub_size+1] = eventPlayer.menu_opt_size+1
    eventPlayer.item_visible[eventPlayer.menu_opt_size] = true


def increment_for_submenu_item():
    @Name "SUB: increment_for_new_submenu"

    eventPlayer.sub_size += 1
    eventPlayer.menu_max_pos = -1


def new_menu_label_header():
    @Name "SUB: new_menu_label_header"

    hudHeader([i for i in eventPlayer if eventPlayer.menu_visible and eventPlayer.submenu_index == evalOnce(eventPlayer.sub_size)], 
    "{0}".format(eventPlayer.menu_label[evalOnce(eventPlayer.menu_label_size)]),
    HudPosition.TOP,
    evalOnce(eventPlayer.menu_max_pos),
    eventPlayer.menu_label_color[evalOnce(eventPlayer.menu_label_size)],
    HudReeval.VISIBILITY_STRING_AND_COLOR,
    SpecVisibility.DEFAULT)


def new_menu_label_subtext():
    @Name "SUB: new_menu_label_subtext"

    hudSubtext([i for i in eventPlayer if eventPlayer.menu_visible and eventPlayer.submenu_index == evalOnce(eventPlayer.sub_size)], 
    "{0}".format(eventPlayer.menu_label[evalOnce(eventPlayer.menu_label_size)]),
    HudPosition.TOP,
    evalOnce(eventPlayer.menu_max_pos),
    eventPlayer.menu_label_color[evalOnce(eventPlayer.menu_label_size)],
    HudReeval.VISIBILITY_STRING_AND_COLOR,
    SpecVisibility.DEFAULT)
    

def new_menu_item_selection():
    @Name "SUB: new_menu_item_selection"

    # Case: index off
    hudSubheader(
    [i for i in eventPlayer if eventPlayer.menu_visible 
        and eventPlayer.menu_index != evalOnce(eventPlayer.menu_opt_size) 
        and eventPlayer.submenu_index == evalOnce(eventPlayer.sub_size)
        and eventPlayer.item_visible[evalOnce(eventPlayer.menu_opt_size)] == true], 
    "{0}".format(eventPlayer.menu_off_opt_title[evalOnce(eventPlayer.menu_opt_size)]),
    HudPosition.TOP,
    evalOnce(eventPlayer.menu_max_pos),
    eventPlayer.menu_off_opt_color,
    HudReeval.VISIBILITY_STRING_AND_COLOR,
    SpecVisibility.DEFAULT)
    # Case: index on
    hudSubheader(
    [i for i in eventPlayer if eventPlayer.menu_visible 
        and eventPlayer.menu_index == evalOnce(eventPlayer.menu_opt_size) 
        and eventPlayer.submenu_index == evalOnce(eventPlayer.sub_size)
        and eventPlayer.item_visible[evalOnce(eventPlayer.menu_opt_size)] == true],
    "■  {0}".format(eventPlayer.menu_on_opt_title[evalOnce(eventPlayer.menu_opt_size)]),
    HudPosition.TOP,
    evalOnce(eventPlayer.menu_max_pos),
    eventPlayer.menu_on_opt_color[evalOnce(eventPlayer.menu_opt_size)],
    HudReeval.VISIBILITY_STRING_AND_COLOR,
    SpecVisibility.DEFAULT)


def new_menu_item_toggle():
    @Name "SUB: new_menu_item_toggle"

    # Case: index off
    hudSubheader(
    [i for i in eventPlayer if eventPlayer.menu_visible 
        and eventPlayer.menu_index != evalOnce(eventPlayer.menu_opt_size) 
        and eventPlayer.submenu_index == evalOnce(eventPlayer.sub_size)
        and eventPlayer.item_visible[evalOnce(eventPlayer.menu_opt_size)] == true], 
    "{0}".format(eventPlayer.menu_off_opt_title[evalOnce(eventPlayer.menu_opt_size)]),
    HudPosition.TOP,
    evalOnce(eventPlayer.menu_max_pos),
    eventPlayer.menu_off_opt_color,
    HudReeval.VISIBILITY_STRING_AND_COLOR,
    SpecVisibility.DEFAULT)

    # Case: index on, see menu_act_toggle to see how to update the menu_opt_var string.
    hudSubheader([i for i in eventPlayer if eventPlayer.menu_visible 
        and eventPlayer.menu_index == evalOnce(eventPlayer.menu_opt_size) 
        and eventPlayer.submenu_index == evalOnce(eventPlayer.sub_size)
        and eventPlayer.item_visible[evalOnce(eventPlayer.menu_opt_size)] == true],
    "■  {0}{1}".format(eventPlayer.menu_on_opt_title[evalOnce(eventPlayer.menu_opt_size)], eventPlayer.menu_opt_var[evalOnce(eventPlayer.menu_opt_size)]), 
    HudPosition.TOP,
    evalOnce(eventPlayer.menu_max_pos),
    eventPlayer.menu_on_opt_color[evalOnce(eventPlayer.menu_opt_size)],
    HudReeval.VISIBILITY_STRING_AND_COLOR,
    SpecVisibility.DEFAULT)


def new_menu_item_cycle():
    @Name "SUB: new_menu_item_cycle"

    # Case: index off
    hudSubheader(
    [i for i in eventPlayer if eventPlayer.menu_visible
        and eventPlayer.menu_index != evalOnce(eventPlayer.menu_opt_size) 
        and eventPlayer.submenu_index == evalOnce(eventPlayer.sub_size)
        and eventPlayer.item_visible[evalOnce(eventPlayer.menu_opt_size)] == true], 
    "{0}".format(eventPlayer.menu_off_opt_title[evalOnce(eventPlayer.menu_opt_size)]),
    HudPosition.TOP, 
    evalOnce(eventPlayer.menu_max_pos), 
    eventPlayer.menu_off_opt_color, 
    HudReeval.VISIBILITY_STRING_AND_COLOR, 
    SpecVisibility.DEFAULT)

    # Case: index on, see menu_act_cycle to see how to update the menu_opt_var string.
    hudSubheader(
    [i for i in eventPlayer if eventPlayer.menu_visible 
        and eventPlayer.menu_index == evalOnce(eventPlayer.menu_opt_size) 
        and eventPlayer.submenu_index == evalOnce(eventPlayer.sub_size)
        and eventPlayer.item_visible[evalOnce(eventPlayer.menu_opt_size)] == true], 
    "■ {0} ←  {1}  → ".format(eventPlayer.menu_on_opt_title[evalOnce(eventPlayer.menu_opt_size)], eventPlayer.menu_opt_var[evalOnce(eventPlayer.menu_opt_size)]),
    HudPosition.TOP, 
    evalOnce(eventPlayer.menu_max_pos), 
    eventPlayer.menu_on_opt_color[evalOnce(eventPlayer.menu_opt_size)], 
    HudReeval.VISIBILITY_STRING_AND_COLOR, 
    SpecVisibility.DEFAULT)


def new_menu_item_cycle_bar():
    @Name "SUB: new_menu_item_cycle_bar"

    # Case: index off
    hudSubheader(
    [i for i in eventPlayer if eventPlayer.menu_visible 
        and eventPlayer.menu_index != evalOnce(eventPlayer.menu_opt_size) 
        and eventPlayer.submenu_index == evalOnce(eventPlayer.sub_size)
        and eventPlayer.item_visible[evalOnce(eventPlayer.menu_opt_size)] == true], 
    "{0}".format(eventPlayer.menu_off_opt_title[evalOnce(eventPlayer.menu_opt_size)]), 
    HudPosition.TOP, 
    evalOnce(eventPlayer.menu_max_pos), 
    eventPlayer.menu_off_opt_color, 
    HudReeval.VISIBILITY_STRING_AND_COLOR, 
    SpecVisibility.DEFAULT)

    # Case: index on, see menu_act_cycle_bar to see how to update the menu_opt_var string.
    hudSubheader(
    [i for i in eventPlayer if eventPlayer.menu_visible 
        and eventPlayer.menu_index == evalOnce(eventPlayer.menu_opt_size) 
        and eventPlayer.submenu_index == evalOnce(eventPlayer.sub_size)
        and eventPlayer.item_visible[evalOnce(eventPlayer.menu_opt_size)] == true], 
    "■  {0}  {1}".format(eventPlayer.menu_on_opt_title[evalOnce(eventPlayer.menu_opt_size)], eventPlayer.menu_opt_var[evalOnce(eventPlayer.menu_opt_size)]), 
    HudPosition.TOP, 
    evalOnce(eventPlayer.menu_max_pos), 
    eventPlayer.menu_on_opt_color[evalOnce(eventPlayer.menu_opt_size)], 
    HudReeval.VISIBILITY_STRING_AND_COLOR, 
    SpecVisibility.DEFAULT)

    # Increment Menu Position
    eventPlayer.menu_max_pos += 1

    # Submenu hudheader
    hudHeader(
    [i for i in eventPlayer if eventPlayer.menu_visible 
    and eventPlayer.menu_index == evalOnce(eventPlayer.menu_opt_size) 
    and eventPlayer.submenu_index == evalOnce(eventPlayer.sub_size)
    and eventPlayer.item_visible[evalOnce(eventPlayer.menu_opt_size)] == true], 
    "{0} ←  {1}  →".format(eventPlayer.bar_title[eventPlayer.menu_index], eventPlayer.bar_var[eventPlayer.menu_index]), 
    HudPosition.TOP, 
    evalOnce(eventPlayer.menu_max_pos), 
    eventPlayer.bar_color[evalOnce(eventPlayer.menu_opt_size)], 
    HudReeval.VISIBILITY_STRING_AND_COLOR, 
    SpecVisibility.DEFAULT)


def misc_hud():
    @Name "SUB: misc_hud"
    # Kitty!
    hudSubtext([i for i in eventPlayer if eventPlayer.menu_visible],         
    " ∧,,,∧                   ∧,,,∧\n( •‿• )   vxeat   ( •‿• )\n/⊃    /⊃             ⊂\\    ⊂\\", 
    HudPosition.TOP, 
    -1, 
    rgb(255,120,255), 
    HudReeval.VISIBILITY_STRING_AND_COLOR, 
    SpecVisibility.DEFAULT)

    # Splash text
    hudSubtext([i for i in eventPlayer if eventPlayer.menu_visible], 
    "{0}".format(splash_text[random.randint(0, len(splash_text)-1)]), 
    HudPosition.RIGHT, 
    -1, 
    rgb(random.randint(0,255), random.randint(0,255), random.randint(0,255)), 
    HudReeval.VISIBILITY_STRING_AND_COLOR, 
    SpecVisibility.DEFAULT)

    # Debug info toggled via workshop settings menu
    if show_debug_info:
        hudSubheader(hostPlayer,
        "Load (Curr/Avg/Peak):  {0}  /  {1}  /  {2}".format(getServerLoad(),getAverageServerLoad(),getPeakServerLoad()), 
        HudPosition.RIGHT,
        -0.9,
        Color.WHITE,
        HudReeval.VISIBILITY_AND_STRING,
        SpecVisibility.DEFAULT)

        hudSubheader(eventPlayer,
        "Coord: ({0},{1},{2})".format(eventPlayer.getPosition().x,eventPlayer.getPosition().y,eventPlayer.getPosition().z),
        HudPosition.RIGHT,
        -0.8,
        Color.WHITE,
        HudReeval.VISIBILITY_AND_STRING,
        SpecVisibility.DEFAULT)
        
        #hudSubheader(eventPlayer, 
        #"Debug Values: {0}/{1}/{2}".format(
        #    eventPlayer.player_used_dodge_cd,
        #    eventPlayer.ability_react_chance,
        #    hero_react_dodge[hero_array_index][4]),
        #HudPosition.RIGHT,
        #-0.6,
        #Color.WHITE,
        #HudReeval.VISIBILITY_AND_STRING,
        #SpecVisibility.DEFAULT)

    # Settings Notice
    if show_main_hud == true and eventPlayer == hostPlayer:
        hudHeader(eventPlayer, "Bots will not use defensive abilities and ultimates unless you enable them in the workshop settings menu", HudPosition.TOP, -2, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
        eventPlayer.bot_ability_var = getLastCreatedText()
        wait(10)
        destroyHudText(eventPlayer.bot_ability_var)


def main_hud():
    
    # Stats that are always displayed
    hudSubtext(eventPlayer, "\n", HudPosition.LEFT, -9999, Color.WHITE, HudReeval.NONE, SpecVisibility.DEFAULT)
    hudSubtext(eventPlayer, "Elims:  {0}".format(ceil(eventPlayer.stat_kills)), HudPosition.LEFT, 0.1, Color.RED, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(eventPlayer, "Elims/min:  {0}".format(ceil(eventPlayer.stat_kills / (eventPlayer.stat_timer / 60))), HudPosition.LEFT, 0.2, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(eventPlayer, "Accuracy:  {0}  %".format(ceil(100 * eventPlayer.getHeroStatistic(eventPlayer.getCurrentHero(), HeroStat.WEAPON_ACCURACY))), HudPosition.LEFT, 0.3, Color.LIME_GREEN, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(eventPlayer, "Crit Accuracy:  {0}  %".format(ceil(100 * eventPlayer.getHeroStatistic(eventPlayer.getCurrentHero(), HeroStat.CRITICAL_HIT_ACCURACY))), HudPosition.LEFT, 0.4, Color.TURQUOISE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(eventPlayer, "Target Distance:  {0} m".format(round(distance(eventPlayer.look_target.getEyePosition(), eventPlayer.getEyePosition()))), HudPosition.LEFT, 0.5, Color.BLUE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    # Pressure Damage Data
    hudSubtext([i for i in eventPlayer if pressure_type != 0], 
    "KDR:  {0}".format(eventPlayer.stat_kills / eventPlayer.stat_deaths), HudPosition.LEFT, -0.01, Color.ROSE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext([i for i in eventPlayer if pressure_type != 0], 
    "Deaths:  {0}".format(eventPlayer.stat_deaths), HudPosition.LEFT, 0.11, Color.ORANGE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext([i for i in eventPlayer if pressure_type != 0], 
    "Net Damage:  {0}".format(eventPlayer.stat_dmg_dealt - eventPlayer.stat_dmg_taken), HudPosition.LEFT, 0.51, Color.PURPLE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext([i for i in eventPlayer if speed_mode_enabled == true], 
    "\nSpeed High Score:  {0}%".format(speed_score), HudPosition.RIGHT, -0.99, Color.BLACK, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext([i for i in eventPlayer if speed_mode_enabled == true], 
    "Speed Multiplier:  {0}%".format(speed_multi), HudPosition.RIGHT,  -0.98, Color.LIME_GREEN, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    #Speed Mode Data
    hudSubtext([i for i in eventPlayer if speed_mode_enabled == true], 
    "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n{0}".format(speed_timer), HudPosition.TOP, 666, Color.GREEN, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)


def menu_hud():
    @Name "SUB: menu_hud"
    default_menu_variables()

    increment_for_menu_label()
    eventPlayer.menu_label[eventPlayer.menu_label_size] = "Player Settings"
    eventPlayer.menu_label_color[eventPlayer.menu_label_size] = default_menu_label_color
    new_menu_label_header()

    # Change Hero Select
    increment_for_menu_item()
    eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Change Hero"
    eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size]
    eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
    eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = null
    new_menu_item_selection()

    # Assist Menu Select
    increment_for_menu_item()
    eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Assists Menu"
    eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Open Assists Menu"
    eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
    eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = null
    new_menu_item_selection()

    # Modifiers Select
    increment_for_menu_item()
    eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Modifiers Menu"
    eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Open Modifiers Menu"
    eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
    eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = null
    new_menu_item_selection()

    if eventPlayer == hostPlayer:
        # Bot Settings Label
        increment_for_menu_label()
        eventPlayer.menu_label[eventPlayer.menu_label_size] = "Bot Settings"
        eventPlayer.menu_label_color[eventPlayer.menu_label_size] = default_menu_label_color
        new_menu_label_header()
        
        # Movement Settings
        increment_for_menu_item()
        eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Movement Menu"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Open Movement Menu"
        eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
        eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = null
        new_menu_item_selection()

        # Spawn Point Settings
        increment_for_menu_item()
        eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Spawn Menu"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Open Spawn Menu"
        eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
        eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = null
        new_menu_item_selection()

        # Spawn Point Settings
        increment_for_menu_item()
        eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Game Mode Menu"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Open Mode Menu"
        eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
        eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = null
        new_menu_item_selection()


    # Help info label
    increment_for_menu_label()
    eventPlayer.menu_label[eventPlayer.menu_label_size] = "\n   For more info on settings \n Go to Workshop.codes/VXEAT\n"
    eventPlayer.menu_label_color[eventPlayer.menu_label_size] = Color.SKY_BLUE
    new_menu_label_subtext()


    # Assist Submenu
    increment_for_submenu_item()

    ## Assist Submenu Header
    increment_for_menu_label()
    eventPlayer.menu_label[eventPlayer.menu_label_size] = "Player Assists"
    eventPlayer.menu_label_color[eventPlayer.menu_label_size] = default_menu_label_color
    new_menu_label_header()

    ## Return to Main Menu
    increment_for_menu_item()
    eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Back to Main Menu"
    eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size]
    eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
    eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = 0
    new_menu_item_selection()

    # Projectile Guide
    increment_for_menu_item()
    eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Projectile Guide"
    eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = ""
    eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = "Guide Off"
    eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
    eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = 0
    eventPlayer.menu_opt_len[eventPlayer.menu_opt_size] = len(opt_array_abilities) - 1
    new_menu_item_cycle()

    ## Mercy Damage Boost Toggle
    increment_for_menu_item()
    eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Mercy Damage Boost"
    eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Damage Boost: "
    eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = "off"
    eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = Color.RED
    eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = 0
    new_menu_item_toggle()

    ## Ana Nano Boost Toggle
    increment_for_menu_item()
    eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Ana Nano Boost"
    eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Nano Boost: "
    eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = "off"
    eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = Color.RED
    eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = 0
    new_menu_item_toggle()


    ## Kitsune Toggle
    increment_for_menu_item()
    eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Kiriko Kitsune"
    eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Kitsune: "
    eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = "off"
    eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = Color.RED
    eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = 0
    new_menu_item_toggle()

    ## Show Recall
    increment_for_menu_item()
    eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Tracer Bot Recall Indicator"
    eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Show Recall: "
    eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = "off"
    eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = Color.RED
    eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = 0
    new_menu_item_toggle()


    # Modifiers Submenu
    increment_for_submenu_item()

    ## Modifiers Submenu Header
    increment_for_menu_label()
    eventPlayer.menu_label[eventPlayer.menu_label_size] = "Player Modifiers"
    eventPlayer.menu_label_color[eventPlayer.menu_label_size] = default_menu_label_color
    new_menu_label_header()

    ## Return to Main Menu
    increment_for_menu_item()
    eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Back to Main Menu"
    eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size]
    eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
    eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = 0
    new_menu_item_selection()

    ## Movement Speed Cycle
    increment_for_menu_item()
    eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Movement Speed"
    eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Speed: "
    eventPlayer.menu_index = eventPlayer.menu_opt_size
    eventPlayer.menu_opt_value = 100
    menu_speed_set_text_and_color()
    eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = 100
    eventPlayer.menu_opt_len[eventPlayer.menu_opt_size] = 1000
    new_menu_item_cycle()

    ## Infinite Ammo Toggle
    increment_for_menu_item()
    eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Infinite Ammo"
    eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Infinite Ammo: "
    eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = "off"
    eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = Color.RED
    eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = 0
    new_menu_item_toggle()

    ## Movement Speed Cycle
    increment_for_menu_item()
    eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "No Strafing Stun"
    eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Timer: "
    eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = "off"
    eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
    eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = 0
    new_menu_item_cycle()

    if eventPlayer == hostPlayer:
        # Movement Submenu
        increment_for_submenu_item()

        ## Movement Header
        increment_for_menu_label()
        eventPlayer.menu_label[eventPlayer.menu_label_size] = "Bot Movement Settings"
        eventPlayer.menu_label_color[eventPlayer.menu_label_size] = default_menu_label_color
        new_menu_label_header()
        
        ## Return to Main Menu
        increment_for_menu_item()
        eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Back to Main Menu"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size]
        eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
        eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = 0
        new_menu_item_selection()

        ## Strafe Pattern
        increment_for_menu_item()
        eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Strafe Pattern"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Pattern: "
        eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = opt_array_movement[0][default_mvmt_type]
        eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
        eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = default_mvmt_type
        eventPlayer.menu_opt_len[eventPlayer.menu_opt_size] = len(opt_array_movement[0]) - 1
        new_menu_item_cycle()

        ## Custom Min Dist Cycle
        increment_for_menu_item()
        eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Min Distance"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Min: "
        eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = "{0} m".format(custom_min_dist)
        eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
        eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = custom_min_dist
        eventPlayer.menu_opt_len[eventPlayer.menu_opt_size] = 200
        new_menu_item_cycle()
        eventPlayer.item_visible[eventPlayer.menu_opt_size] = false

        ## Custom Max Dist Cycle
        increment_for_menu_item()
        eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Max Distance"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Max: "
        eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = "{0} m".format(custom_max_dist)
        eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
        eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = custom_max_dist
        eventPlayer.menu_opt_len[eventPlayer.menu_opt_size] = 200
        new_menu_item_cycle()
        eventPlayer.item_visible[eventPlayer.menu_opt_size] = false

        ## Custom Max Dist Cycle
        increment_for_menu_item()
        eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Fixed Points"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Points: "
        eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = custom_strafe_points
        eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
        eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = custom_strafe_points - 1
        eventPlayer.menu_opt_len[eventPlayer.menu_opt_size] = 99
        new_menu_item_cycle()
        eventPlayer.item_visible[eventPlayer.menu_opt_size] = false

        ## Strafe Difficulty
        increment_for_menu_item()
        eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Strafe Difficulty"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Difficulty: "
        eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = opt_array_movement[1][default_bot_diff]
        eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = opt_array_movement[2][default_bot_diff]
        eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = default_bot_diff
        eventPlayer.menu_opt_len[eventPlayer.menu_opt_size] = len(opt_array_movement[1]) - 1
        new_menu_item_cycle()

        ## Custom Min Wait Cycle
        increment_for_menu_item()
        eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Min Strafe Wait"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Min: "
        eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = "{0} s".format(custom_min_wait)
        eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
        new_menu_item_cycle()
        eventPlayer.item_visible[eventPlayer.menu_opt_size] = false


        ## Custom Max Wait Cycle
        increment_for_menu_item()
        eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Max Strafe Wait"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Max: "
        eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = "{0} s".format(custom_max_wait)
        eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
        new_menu_item_cycle()
        eventPlayer.item_visible[eventPlayer.menu_opt_size] = false


        ## Bot Speed
        increment_for_menu_item()
        eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Movement Speed"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Speed: "
        eventPlayer.menu_index = eventPlayer.menu_opt_size
        eventPlayer.menu_opt_value = custom_bot_speed
        menu_speed_set_text_and_color()
        eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = custom_bot_speed
        eventPlayer.menu_opt_len[eventPlayer.menu_opt_size] = 1000
        new_menu_item_cycle()

        ## Boucing Bots
        increment_for_menu_item()
        eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Bouncing Bots"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Bounce: "
        if bounce_amount == 0:
            eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = "off"
        else:
            eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = bounce_amount
        eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
        eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = bounce_amount
        eventPlayer.menu_opt_len[eventPlayer.menu_opt_size] = 100
        new_menu_item_cycle()

        # General Submenu
        increment_for_submenu_item()

        ## Spawn Submenu Header
        increment_for_menu_label()
        eventPlayer.menu_label[eventPlayer.menu_label_size] = "Bot Spawn Settings"
        eventPlayer.menu_label_color[eventPlayer.menu_label_size] = default_menu_label_color
        new_menu_label_header()
        
        ## Return to Main Menu
        increment_for_menu_item()
        eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Back to Main Menu"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size]
        eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
        eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = 0
        new_menu_item_selection()

        ## Number of Bots
        increment_for_menu_item()
        eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Number of Bots"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Count: "
        eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = bot_count
        eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
        eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = bot_count
        eventPlayer.menu_opt_len[eventPlayer.menu_opt_size] = 12
        new_menu_item_cycle()

        ## Custom Spawn Toggle
        increment_for_menu_item()
        eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Spawn Type"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Type: "
        eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = opt_array_spawn_strings[spawn_type]
        eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
        eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = spawn_type
        new_menu_item_toggle()

        ## Bot Slot Cycle
        increment_for_menu_item()
        eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Bot Slot"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Slot: "
        eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = 0
        eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
        eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = 0
        eventPlayer.menu_opt_len[eventPlayer.menu_opt_size] = 5
        new_menu_item_cycle()
        if spawn_type == 0:
            eventPlayer.item_visible[eventPlayer.menu_opt_size] = false

        ## Slot Hero Pool
        
        increment_for_menu_item()
        if spawn_type == 0:
            eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Hero Pool"
        else:
            eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Slot 0 Hero Pool"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = ""
        if hero_array_status[0] != "on":
            eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = "{0} : off".format(hero_array[0])
        else:
            eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = "{0} : on".format(hero_array[0])
        eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
        eventPlayer.bar_title[eventPlayer.menu_opt_size] = ""
        eventPlayer.bar_var[eventPlayer.menu_opt_size] = heroIcon(hero_array[0])
        eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = 0
        eventPlayer.menu_opt_len[eventPlayer.menu_opt_size] = len(hero_array) - 1
        eventPlayer.menu_index = eventPlayer.menu_opt_size
        menu_hero_bar_color_set()
        eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = 0
        
        new_menu_item_cycle_bar()

        ## Spawn Radius Cycle
        increment_for_menu_item()
        if spawn_type == 0:
            eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Spawn Radius"
        else:
            eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Slot 0 Radius"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Radius: "
        eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = "{0} m".format(spawn_radius)
        eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
        eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = spawn_radius
        eventPlayer.menu_opt_len[eventPlayer.menu_opt_size] = 100
        new_menu_item_cycle()

        ## Return to Main Menu
        increment_for_menu_item()
        if spawn_type == 0:
            eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Set Spawn Point"
        else:
            eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Set Slot 0 Spawn Point"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size]
        eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
        eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = 0
        new_menu_item_selection()


        # Modes Submenu
        increment_for_submenu_item()

        ## Modes Submenu Header
        increment_for_menu_label()
        eventPlayer.menu_label[eventPlayer.menu_label_size] = "Game Mode Settings"
        eventPlayer.menu_label_color[eventPlayer.menu_label_size] = default_menu_label_color
        new_menu_label_header()
        
        ## Return to Main Menu
        increment_for_menu_item()
        eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Back to Main Menu"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size]
        eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
        eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = 0
        new_menu_item_selection()

        ## Pressure Mode Toggle
        increment_for_menu_item()
        eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Pressure Mode"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Pressure: "
        eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = opt_array_pressure[pressure_type]
        eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
        eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = pressure_type
        eventPlayer.menu_opt_len[eventPlayer.menu_opt_size] = len(opt_array_pressure) - 1
        new_menu_item_cycle()

        increment_for_menu_item()
        eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Bot Accuracy"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Accuracy: "
        eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = "{0}%".format(pressure_accuracy)

        eventPlayer.menu_index = eventPlayer.menu_opt_size
        menu_pressure_cycle_color_set()

        eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = pressure_accuracy
        eventPlayer.menu_opt_len[eventPlayer.menu_opt_size] = 99
        new_menu_item_cycle()
        if pressure_type == 0:
            eventPlayer.item_visible[eventPlayer.menu_opt_size] = false

        ## Speed Mode Toggle
        increment_for_menu_item()
        eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Speed Mode"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Speed: "
        if speed_mode_enabled == true:
        eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = "off"
        if speed_mode_enabled == true:
            eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = "on"
            eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = Color.GREEN
            eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = 1
        else:
            eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = "off"
            eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = Color.RED
            eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = 0
        new_menu_item_toggle()

        increment_for_menu_item()
        eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Speed Timer"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Time: "
        eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = "{0} s".format(speed_max_time)
        eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
        new_menu_item_cycle()
        if speed_mode_enabled == false:
            eventPlayer.item_visible[eventPlayer.menu_opt_size] = false

        increment_for_menu_item()
        eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Increment Step"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Speed: "
        eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = "{0}%".format(speed_increment)
        eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
        eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = speed_increment
        eventPlayer.menu_opt_len[eventPlayer.menu_opt_size] = 100
        new_menu_item_cycle()
        if speed_mode_enabled == false:
            eventPlayer.item_visible[eventPlayer.menu_opt_size] = false

        increment_for_menu_item()
        eventPlayer.menu_off_opt_title[eventPlayer.menu_opt_size] = "Decrement Step"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_opt_size] = "Speed: "
        eventPlayer.menu_opt_var[eventPlayer.menu_opt_size] = "{0}%".format(speed_decrement)
        eventPlayer.menu_on_opt_color[eventPlayer.menu_opt_size] = default_menu_on_index_color
        eventPlayer.menu_opt_status[eventPlayer.menu_opt_size] = speed_decrement
        eventPlayer.menu_opt_len[eventPlayer.menu_opt_size] = 100
        new_menu_item_cycle()
        if speed_mode_enabled == false:
            eventPlayer.item_visible[eventPlayer.menu_opt_size] = false

    eventPlayer.menu_index = 0
    eventPlayer.menu_opt_value = 0


def menu_speed_set_text_and_color():
    @Name "menu_speed_set_text_and_color"

    if eventPlayer.menu_opt_value == 100:
        eventPlayer.menu_opt_var[eventPlayer.menu_index] = opt_array_speed[1][0]
        eventPlayer.menu_on_opt_color[eventPlayer.menu_index] = opt_array_speed[2][0]
    elif eventPlayer.menu_opt_value == 125:
        eventPlayer.menu_opt_var[eventPlayer.menu_index] = opt_array_speed[1][1]
        eventPlayer.menu_on_opt_color[eventPlayer.menu_index] = opt_array_speed[2][1]
    elif eventPlayer.menu_opt_value == 130:
        eventPlayer.menu_opt_var[eventPlayer.menu_index] = opt_array_speed[1][2]
        eventPlayer.menu_on_opt_color[eventPlayer.menu_index] = opt_array_speed[2][2]
    elif eventPlayer.menu_opt_value == 155:
        eventPlayer.menu_opt_var[eventPlayer.menu_index] = opt_array_speed[1][3]
        eventPlayer.menu_on_opt_color[eventPlayer.menu_index] = opt_array_speed[2][3]
    elif eventPlayer.menu_opt_value == 160:
        eventPlayer.menu_opt_var[eventPlayer.menu_index] = opt_array_speed[1][4]
        eventPlayer.menu_on_opt_color[eventPlayer.menu_index] = opt_array_speed[2][4]
    elif eventPlayer.menu_opt_value == 175:
        eventPlayer.menu_opt_var[eventPlayer.menu_index] = opt_array_speed[1][5]
        eventPlayer.menu_on_opt_color[eventPlayer.menu_index] = opt_array_speed[2][5]
    else:
        eventPlayer.menu_opt_var[eventPlayer.menu_index] = "{0} %".format(eventPlayer.menu_opt_value)
        eventPlayer.menu_on_opt_color[eventPlayer.menu_index] = default_menu_on_index_color


def menu_hero_bar_color_set():
    @Name "menu_hero_bar_color_set"

    if hero_array_status[eventPlayer.menu_opt_status[eventPlayer.menu_index]] == "on":
        eventPlayer.bar_color[eventPlayer.menu_index] = Color.GREEN
    else:
        eventPlayer.bar_color[eventPlayer.menu_index] = Color.RED

def menu_pressure_cycle_color_set():
    
    if pressure_accuracy == 100:
        eventPlayer.menu_on_opt_color[eventPlayer.menu_index] = Color.BLACK
    elif pressure_accuracy >= 90:
        eventPlayer.menu_on_opt_color[eventPlayer.menu_index] = Color.RED  
    elif pressure_accuracy >= 80:
        eventPlayer.menu_on_opt_color[eventPlayer.menu_index] = Color.ROSE  
    elif pressure_accuracy >= 70:
        eventPlayer.menu_on_opt_color[eventPlayer.menu_index] = Color.ORANGE
    elif pressure_accuracy >= 50:
        eventPlayer.menu_on_opt_color[eventPlayer.menu_index] = Color.YELLOW
    elif pressure_accuracy >= 30:
        eventPlayer.menu_on_opt_color[eventPlayer.menu_index] = Color.GREEN        
    else:
        eventPlayer.menu_on_opt_color[eventPlayer.menu_index] = Color.SKY_BLUE

# Player Menu
rule "Menu Actions: Input Read":
    @Event eachPlayer
    @Condition eventPlayer.menu_visible == true
    @Condition (console_ui == false and (eventPlayer.isHoldingButton(Button.ULTIMATE) == true or eventPlayer.isHoldingButton(Button.ABILITY_2) == true or eventPlayer.getThrottle() == Vector.LEFT or eventPlayer.getThrottle() == Vector.RIGHT) == true) or (console_ui == true and (eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) or eventPlayer.isHoldingButton(Button.SECONDARY_FIRE) or eventPlayer.isHoldingButton(Button.ABILITY_1) or eventPlayer.isHoldingButton(Button.ABILITY_2)))
    
    # We use the player variable menu_input to tell the subroutines we call that the player inputed one of our selection keys.
    if console_ui == false:
        if eventPlayer.getThrottle() == Vector.LEFT:
            eventPlayer.menu_input = -1
        elif eventPlayer.getThrottle() == Vector.RIGHT:
            eventPlayer.menu_input = 1
        elif eventPlayer.isHoldingButton(Button.ABILITY_2):
            eventPlayer.menu_input = 0
        else:
            eventPlayer.menu_input = -2
    else:
        if eventPlayer.isHoldingButton(Button.ABILITY_1):
            eventPlayer.menu_input = -1
        elif eventPlayer.isHoldingButton(Button.PRIMARY_FIRE):
            eventPlayer.menu_input = 1
        elif eventPlayer.isHoldingButton(Button.ABILITY_2):
            eventPlayer.menu_input = 0
        else:
            eventPlayer.menu_input = -2

    eventPlayer.menu_substart_value = eventPlayer.submenu_start_index[eventPlayer.submenu_index]
    eventPlayer.menu_opt_value = eventPlayer.menu_opt_status[eventPlayer.menu_index]
    eventPlayer.menu_wait = 0.1

    if eventPlayer.submenu_index == 0:
        if eventPlayer.menu_index == 0 + eventPlayer.menu_substart_value:
            menu_act_change_hero()
        elif eventPlayer.menu_index == 1 + eventPlayer.menu_substart_value:
            menu_act_toggle_assists_menu()
        elif eventPlayer.menu_index == 2 + eventPlayer.menu_substart_value:
            menu_act_toggle_modifiers_menu()
        elif eventPlayer.menu_index == 3 + eventPlayer.menu_substart_value:
            menu_act_toggle_movement_menu()
        elif eventPlayer.menu_index == 4 + eventPlayer.menu_substart_value:
            menu_act_toggle_spawn_menu()
        elif eventPlayer.menu_index == 5 + eventPlayer.menu_substart_value:
            menu_act_toggle_game_modes()
    elif eventPlayer.submenu_index == 1:
        if eventPlayer.menu_index == 0 + eventPlayer.menu_substart_value:
            menu_act_toggle_assists_menu()
        elif eventPlayer.menu_index == 1 + eventPlayer.menu_substart_value:
            menu_act_proj_guide()
        elif eventPlayer.menu_index == 2 + eventPlayer.menu_substart_value:
            menu_act_toggle_mercy()
        elif eventPlayer.menu_index == 3 + eventPlayer.menu_substart_value:
            menu_act_toggle_nano()
        elif eventPlayer.menu_index == 4 + eventPlayer.menu_substart_value:
            menu_act_toggle_kitsune()
        elif eventPlayer.menu_index == 5 + eventPlayer.menu_substart_value:
            menu_act_toggle_recall()
    elif eventPlayer.submenu_index == 2:
        if eventPlayer.menu_index == 0 + eventPlayer.menu_substart_value:
            menu_act_toggle_modifiers_menu()
        elif eventPlayer.menu_index == 1 + eventPlayer.menu_substart_value:
            menu_act_cycle_player_speed()
            if eventPlayer.menu_opt_value > 200:
                eventPlayer.menu_wait = 0.01
            else:
                eventPlayer.menu_wait = 0.04
        elif eventPlayer.menu_index == 2 + eventPlayer.menu_substart_value:
            menu_act_toggle_ammo()
        elif eventPlayer.menu_index == 3 + eventPlayer.menu_substart_value:
            menu_act_strafe_stun()
            eventPlayer.menu_wait = 0.02
    elif eventPlayer.submenu_index == 3:
        if eventPlayer.menu_index == 0 + eventPlayer.menu_substart_value:
            menu_act_toggle_movement_menu()
        elif eventPlayer.menu_index == 1 + eventPlayer.menu_substart_value:
            menu_act_cycle_pattern() 
        elif eventPlayer.menu_index == 2 + eventPlayer.menu_substart_value:
            menu_act_cycle_min_dist() 
            eventPlayer.menu_wait = 0.05
        elif eventPlayer.menu_index == 3 + eventPlayer.menu_substart_value:
            menu_act_cycle_max_dist() 
            eventPlayer.menu_wait = 0.05
        elif eventPlayer.menu_index == 4 + eventPlayer.menu_substart_value:
            menu_act_cycle_points()
        elif eventPlayer.menu_index == 5 + eventPlayer.menu_substart_value:
            menu_act_cycle_difficulty()
        elif eventPlayer.menu_index == 6 + eventPlayer.menu_substart_value:
            menu_act_cycle_min_wait()
            eventPlayer.menu_wait = 0.02
        elif eventPlayer.menu_index == 7 + eventPlayer.menu_substart_value:
            menu_act_cycle_max_wait()
            eventPlayer.menu_wait = 0.02
        elif eventPlayer.menu_index == 8 + eventPlayer.menu_substart_value:
            menu_act_cycle_bot_speed()
            if eventPlayer.menu_opt_value > 200:
                eventPlayer.menu_wait = 0.01
            else:
                eventPlayer.menu_wait = 0.04
        elif eventPlayer.menu_index == 9 + eventPlayer.menu_substart_value:
            menu_act_cycle_bot_bounce()
            eventPlayer.menu_wait = 0.05
        elif eventPlayer.menu_index == 1 + eventPlayer.menu_substart_value:
    elif eventPlayer.submenu_index == 4:
        if eventPlayer.menu_index == 0 + eventPlayer.menu_substart_value:
            menu_act_toggle_spawn_menu()
        elif eventPlayer.menu_index == 1 + eventPlayer.menu_substart_value:
            menu_act_num_bots() 
        elif eventPlayer.menu_index == 2 + eventPlayer.menu_substart_value:
            menu_act_toggle_spawn_type()
        elif eventPlayer.menu_index == 3 + eventPlayer.menu_substart_value:
            menu_act_cycle_slot()
        elif eventPlayer.menu_index == 4 + eventPlayer.menu_substart_value:
            menu_act_hero_pool()
        elif eventPlayer.menu_index == 5 + eventPlayer.menu_substart_value:
            menu_act_cycle_radius()
            eventPlayer.menu_wait = 0.05
        elif eventPlayer.menu_index == 6 + eventPlayer.menu_substart_value:
            menu_act_set_spawn_pt()
    elif eventPlayer.submenu_index == 5:
        if eventPlayer.menu_index == 0 + eventPlayer.menu_substart_value:
            menu_act_toggle_game_modes()
        elif eventPlayer.menu_index == 1 + eventPlayer.menu_substart_value:
            menu_act_cycle_pressure_mode()
        elif eventPlayer.menu_index == 2 + eventPlayer.menu_substart_value: 
            menu_act_cycle_accuracy()
            eventPlayer.menu_wait = 0.05
        elif eventPlayer.menu_index == 3 + eventPlayer.menu_substart_value: 
            menu_act_toggle_speed()
        elif eventPlayer.menu_index == 4 + eventPlayer.menu_substart_value: 
            menu_act_cycle_timer()
            eventPlayer.menu_wait = 0.01
        elif eventPlayer.menu_index == 5 + eventPlayer.menu_substart_value: 
            menu_act_cycle_increment()
            eventPlayer.menu_wait = 0.05
        elif eventPlayer.menu_index == 6 + eventPlayer.menu_substart_value: 
            menu_act_cycle_decrement()
            eventPlayer.menu_wait = 0.05

    wait(eventPlayer.menu_wait)
    if RULE_CONDITION:
        goto RULE_START
            
## Menu Action helpers
def menu_status_io_toggle():

    if eventPlayer.menu_opt_value == 1:
        eventPlayer.menu_opt_value = 0
        eventPlayer.menu_opt_var[eventPlayer.menu_index] = "off"
        eventPlayer.menu_on_opt_color[eventPlayer.menu_index] = Color.RED
    else:
        eventPlayer.menu_opt_value = 1
        eventPlayer.menu_opt_var[eventPlayer.menu_index] = "on"
        eventPlayer.menu_on_opt_color[eventPlayer.menu_index] = Color.GREEN
    eventPlayer.menu_opt_status[eventPlayer.menu_index] = eventPlayer.menu_opt_value


def menu_status_cycle():
    if eventPlayer.menu_input >= 0:
        if eventPlayer.menu_opt_value == eventPlayer.menu_opt_len[eventPlayer.menu_index]:
            eventPlayer.menu_opt_value = 0
        else:
            eventPlayer.menu_opt_value += 1

    else:
        if eventPlayer.menu_opt_value == 0:
            eventPlayer.menu_opt_value = eventPlayer.menu_opt_len[eventPlayer.menu_index]
        else:
            eventPlayer.menu_opt_value -= 1
    eventPlayer.menu_opt_status[eventPlayer.menu_index] = eventPlayer.menu_opt_value

## Menu Actions
### Submenu 0 - Change Hero
def menu_act_change_hero():
    @Name "SUB: menu_act_change_hero"
    
    #reset menu variable
    destroyEffect(eventPlayer.proj_effects[0])
    destroyEffect(eventPlayer.proj_effects[1])
    #Allow Player inputs
    enable_player_input()
    # Reset Stats
    stopChasingVariable(eventPlayer.stat_timer)
    eventPlayer.stat_timer = 0
    eventPlayer.stat_kills = 0
    eventPlayer.stat_deaths = 0
    eventPlayer.stat_dmg_dealt = 0
    eventPlayer.stat_dmg_taken = 0

    # Allow Player to select hero
    eventPlayer.player_hero_list = getAllHeroes()
    eventPlayer.player_hero_list.remove(eventPlayer.getCurrentHero())
    eventPlayer.setAllowedHeroes(eventPlayer.player_hero_list)
    player_list.remove(eventPlayer)
    wait(0.1)
    eventPlayer.setAllowedHeroes(getAllHeroes())     

### Submenu 0 - Toggle Assists
def menu_act_toggle_assists_menu():
    @Name "SUB: menu_act_toggle_assists_menu"

    if eventPlayer.submenu_index == 0:
        eventPlayer.submenu_index = 1
        eventPlayer.menu_index = eventPlayer.submenu_start_index[eventPlayer.submenu_index]
    else:
        eventPlayer.submenu_index = 0
        eventPlayer.menu_index = 1 + eventPlayer.submenu_start_index[eventPlayer.submenu_index]

        
def menu_act_toggle_mercy():
    @Name "SUB: menu_act_toggle_mercy"
    
    if eventPlayer.menu_opt_value == 1:
        menu_status_io_toggle()
        smallMessage(eventPlayer, "    Deactivating Mercy Damage Boost")
        destroyEffect(eventPlayer.buff_effects[0])
        eventPlayer.buff_effects[0] = null
        if eventPlayer.buff_effects[1] == null:
            eventPlayer.setDamageDealt(100)
        else:
            eventPlayer.setDamageDealt(150)
    else:
        menu_status_io_toggle()
        smallMessage(eventPlayer, "    Activating Mercy Damage Boost")
        createEffect(eventPlayer, Effect.MERCY_DAMAGE_BOOSTED, Color.TEAM_1, eventPlayer, 1, EffectReeval.VISIBILITY)
        eventPlayer.buff_effects[0] = getLastCreatedEntity()
        if eventPlayer.buff_effects[1] == null:
            eventPlayer.setDamageDealt(130)
        else:
            eventPlayer.setDamageDealt(180)


def menu_act_toggle_nano():
    @Name "SUB: menu_act_toggle_nano"

    if eventPlayer.menu_opt_value == 1:
        menu_status_io_toggle()
        smallMessage(eventPlayer, "    Deactivating Nano Boost")
        destroyEffect(eventPlayer.buff_effects[1])
        eventPlayer.buff_effects[1] = null
        if eventPlayer.buff_effects[0] == null:
            eventPlayer.setDamageDealt(100)
        else:
            eventPlayer.setDamageDealt(130)
        eventPlayer.setDamageReceived(100)
    else:
        menu_status_io_toggle()
        smallMessage(eventPlayer, "    Activating Nano Boost")
        smallMessage(eventPlayer, "    Damage Reduction may exceed cap if also using abilities with DR")
        createEffect(eventPlayer, Effect.ANA_NANO_BOOSTED, Color.TEAM_1, eventPlayer, 1, EffectReeval.VISIBILITY)
        eventPlayer.buff_effects[1] = getLastCreatedEntity()
        if eventPlayer.buff_effects[0] == null:
            eventPlayer.setDamageDealt(150)
        else:
            eventPlayer.setDamageDealt(180)
        eventPlayer.setDamageReceived(50)


def menu_act_toggle_kitsune():
    @Name "SUB: menu_act_toggle_kitsune"

    menu_status_io_toggle()
    if eventPlayer.menu_opt_value == 0:
        smallMessage(eventPlayer, "    Deactivating Kitsune Rush")
        destroyDummy(Team.1, eventPlayer.getSlot() + 6)
        smallMessage(eventPlayer, "    Activating Kitsune Rush")
        createDummy(Hero.KIRIKO, Team.1, eventPlayer.getSlot() + 6, vect(0, 1000, 0), vect(0, 0, 0))

def menu_act_toggle_recall():
    @Name "SUB: menu_act_toggle_recall"

    menu_status_io_toggle()
    if eventPlayer.menu_opt_value == 0:
        show_recall.remove(eventPlayer)
    else:
        show_recall.append(eventPlayer)
        
rule "Assist Bot: Kiriko Kitsune Rush":
    @Event eachPlayer
    @Team 1
    @Hero kiriko
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isDummy() == true
    @Condition (getPlayersInSlot(eventPlayer.getSlot() - 6, Team.1)).isAlive() == true
    
    
    eventPlayer.setStatusEffect(null, Status.PHASED_OUT, 9999)
    eventPlayer.setInvisibility(Invis.ALL)
    eventPlayer.startFacing(directionTowards( eventPlayer.getEyePosition(), (getPlayersInSlot(eventPlayer.getSlot() - 6, Team.1)).getEyePosition()), default_turn_rate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    eventPlayer.attachTo(getPlayersInSlot(eventPlayer.getSlot() - 6, Team.1), vect(0, 0, -2))
    eventPlayer.setUltCharge(100)
    wait(0.25)
    eventPlayer.forceButtonPress(Button.ULTIMATE)
    wait(12, Wait.ABORT_WHEN_FALSE)
    goto RULE_START


def menu_act_toggle_modifiers_menu():
    @Name "SUB: menu_act_toggle_modifiers_menu"

    if eventPlayer.submenu_index == 0:
        eventPlayer.submenu_index = 2
        eventPlayer.menu_index = eventPlayer.submenu_start_index[eventPlayer.submenu_index]
    else:
        eventPlayer.submenu_index = 0
        eventPlayer.menu_index = 2 + eventPlayer.submenu_start_index[eventPlayer.submenu_index]


def menu_act_cycle_player_speed():
    @Name "SUB: menu_act_cycle_player_speed - Player Speed Toggle"
    
    if eventPlayer.menu_input == 0:
        if eventPlayer.custom_speed < 100 or eventPlayer.custom_speed >= 175:
            eventPlayer.custom_speed = 100
        elif eventPlayer.custom_speed < 125:
            eventPlayer.custom_speed = 125
        elif eventPlayer.custom_speed < 130:
            eventPlayer.custom_speed = 130
        elif eventPlayer.custom_speed < 160:
            eventPlayer.custom_speed = 160
        elif eventPlayer.custom_speed < 175:
            eventPlayer.custom_speed = 175
        eventPlayer.menu_opt_status[eventPlayer.menu_index] = eventPlayer.custom_speed
        eventPlayer.menu_opt_value = eventPlayer.custom_speed
    elif eventPlayer.menu_input == -2:
        if eventPlayer.custom_speed > 175 or eventPlayer.custom_speed <= 100:
            eventPlayer.custom_speed = 175
        elif eventPlayer.custom_speed > 160:
            eventPlayer.custom_speed = 160
        elif eventPlayer.custom_speed > 130:
            eventPlayer.custom_speed = 130
        elif eventPlayer.custom_speed > 125:
            eventPlayer.custom_speed = 125
        elif eventPlayer.custom_speed > 100:
            eventPlayer.custom_speed = 100
        eventPlayer.menu_opt_status[eventPlayer.menu_index] = eventPlayer.custom_speed
        eventPlayer.menu_opt_value = eventPlayer.custom_speed
    else:
        menu_status_cycle()
        eventPlayer.custom_speed = eventPlayer.menu_opt_value

    menu_speed_set_text_and_color()


def menu_act_toggle_ammo():
    @Name "SUB: menu_act_toggle_ammo - Infinite Ammo Toggle"
    if eventPlayer.menu_opt_value == 1:
        menu_status_io_toggle()
        eventPlayer.infinite_ammo = false
        eventPlayer.setAmmo(0, eventPlayer.default_ammo)
        eventPlayer.setMaxAmmo(0, eventPlayer.default_ammo)
        eventPlayer.setAmmo(1, eventPlayer.default_ammo)
        eventPlayer.setMaxAmmo(1, eventPlayer.default_ammo)
        smallMessage(eventPlayer, "    Infinite ammo disabled.")
    else:
        menu_status_io_toggle()
        eventPlayer.infinite_ammo = true
        eventPlayer.setAmmo(0, 100000)
        eventPlayer.setMaxAmmo(0, 100000)
        eventPlayer.setAmmo(1, 100000)
        eventPlayer.setMaxAmmo(1, 100000)
        smallMessage(eventPlayer, "    Infinite ammo enabled.")


rule "Infinite Ammo: Ammo Refresh":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.infinite_ammo == true
    @Condition eventPlayer.getAmmo(0) <= 1

    eventPlayer.setAmmo(0, 100000)
    eventPlayer.setMaxAmmo(0, 100000)
    eventPlayer.setAmmo(1, 100000)
    eventPlayer.setMaxAmmo(1, 100000)


def menu_act_strafe_stun():
    @Name "SUB: menu_act_strafe_stun"

    if eventPlayer.strafe_stun_timer > 10:
        eventPlayer.strafe_stun_timer = 0
    elif eventPlayer.strafe_stun_timer < 0:
        eventPlayer.strafe_stun_timer = 10
    elif eventPlayer.menu_input == 1:
        eventPlayer.strafe_stun_timer += 0.01
    elif eventPlayer.menu_input == 0:
        eventPlayer.strafe_stun_timer += 0.50
    elif eventPlayer.menu_input == -2:
        eventPlayer.strafe_stun_timer -= 0.50
    else:
        eventPlayer.strafe_stun_timer -= 0.01

    if eventPlayer.strafe_stun_timer == 0:
        eventPlayer.menu_opt_var[eventPlayer.menu_index] = "off"
    else:
        eventPlayer.menu_opt_var[eventPlayer.menu_index] = "{0} s".format(eventPlayer.strafe_stun_timer)


def menu_act_proj_guide():
    @Name "SUB: menu_act_proj_guide (KJRR5P)"

    menu_status_cycle()
    destroyEffect(eventPlayer.proj_effects[0])
    destroyEffect(eventPlayer.proj_effects[1])
    eventPlayer.proj_type = eventPlayer.menu_opt_value
    if eventPlayer.menu_opt_value == 0:
        eventPlayer.menu_on_opt_title[eventPlayer.menu_index] = ""
        eventPlayer.menu_opt_var[eventPlayer.menu_index] = "Guide off"
        eventPlayer.menu_on_opt_color[eventPlayer.menu_index] = Color.YELLOW
    else:
        update_projectile_data()
        eventPlayer.menu_on_opt_title[eventPlayer.menu_index] = opt_array_abilities[eventPlayer.menu_opt_value]
        eventPlayer.menu_opt_var[eventPlayer.menu_index] = "{0}m/s".format(hero_proj_speed[eventPlayer.curr_hero_index][eventPlayer.proj_type-1])
        if eventPlayer.proj_speed != 0:
            eventPlayer.menu_on_opt_color[eventPlayer.menu_index] = Color.GREEN
            createBeam(eventPlayer, Beam.GRAPPLE, eventPlayer.aim_spot, eventPlayer.aim_spot + directionTowards(eventPlayer.aim_spot, eventPlayer.getEyePosition()) * (distance(eventPlayer.getEyePosition(), eventPlayer.aim_spot) / 2), Color.WHITE, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
            eventPlayer.proj_effects[0] = getLastCreatedEntity()
            createEffect(eventPlayer, Effect.SPHERE, Color.YELLOW, eventPlayer.aim_spot, 0.15, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
            eventPlayer.proj_effects[1] = getLastCreatedEntity()
            #smallMessage(eventPlayer, "    Note: The projectile guide targets a heroes camera height, which is not necessarily their critbox.")
            if eventPlayer.curr_hero == Hero.SIGMA or eventPlayer.curr_hero == Hero.ZARYA or eventPlayer.curr_hero == Hero.ASHE or eventPlayer.curr_hero == Hero.JUNKRAT or eventPlayer.curr_hero == Hero.HANZO or eventPlayer.curr_hero == Hero.TORBJORN or eventPlayer.curr_hero == Hero.ANA or eventPlayer.curr_hero == Hero.BAPTISTE:
                smallMessage(eventPlayer, "    Bug: For arcing projectiles, the guide will underestimate aim height.")
                smallMessage(eventPlayer, "    Degree of error correlates directly with target distance and inversely with projectile speed.")
        else:
            eventPlayer.menu_on_opt_color[eventPlayer.menu_index] = Color.RED


def menu_act_toggle_movement_menu():
    @Name "SUB: menu_act_toggle_movement_menu"

    # We wait until the player releases both input buttons so the rule that control the submenu's first index action does not trigger unintendedly 
    #waitUntil(eventPlayer.isHoldingButton(Button.ABILITY_2) == false and eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) == false,9999)
    if eventPlayer.submenu_index == 0:
        eventPlayer.submenu_index = 3
        eventPlayer.menu_index = eventPlayer.submenu_start_index[eventPlayer.submenu_index]
    else:
        eventPlayer.submenu_index = 0
        eventPlayer.menu_index = 3 + eventPlayer.submenu_start_index[eventPlayer.submenu_index]


def menu_act_cycle_pattern():
    @Name "SUB: menu_act_cycle_pattern"

    menu_status_cycle()
    eventPlayer.menu_opt_var[eventPlayer.menu_index] = opt_array_movement[0][eventPlayer.menu_opt_value]
    default_mvmt_type = eventPlayer.menu_opt_value

    if eventPlayer.menu_opt_value == 4:
        eventPlayer.item_visible[eventPlayer.menu_index+1] = true
        eventPlayer.item_visible[eventPlayer.menu_index+2] = true
        eventPlayer.item_visible[eventPlayer.menu_index+3] = false
    elif eventPlayer.menu_opt_value == 5 or eventPlayer.menu_opt_value == 6:
        eventPlayer.item_visible[eventPlayer.menu_index+1] = false
        eventPlayer.item_visible[eventPlayer.menu_index+2] = false
        eventPlayer.item_visible[eventPlayer.menu_index+3] = true
    else:
        eventPlayer.item_visible[eventPlayer.menu_index+1] = false
        eventPlayer.item_visible[eventPlayer.menu_index+2] = false
        eventPlayer.item_visible[eventPlayer.menu_index+3] = false

    eventPlayer.menu_reset_bots = true


def menu_act_cycle_min_dist():
    @Name "SUB: menu_act_cycle_min_dist"

    if eventPlayer.menu_input == 0:
        custom_min_dist += 10
    elif eventPlayer.menu_input == 1:
        custom_min_dist += 1
    elif eventPlayer.menu_input == -1:
        custom_min_dist -= 1
    else:
        custom_min_dist -= 10

    if custom_min_dist > custom_max_dist:
        custom_min_dist = 0
    if custom_min_dist < 0:
        custom_min_dist = custom_max_dist

    eventPlayer.menu_opt_var[eventPlayer.menu_index] = "{0} m".format(custom_min_dist)


def menu_act_cycle_max_dist():
    @Name "SUB: menu_act_cycle_max_dist"

    if eventPlayer.menu_input == 0:
        custom_max_dist += 10
    elif eventPlayer.menu_input == 1:
        custom_max_dist += 1
    elif eventPlayer.menu_input == -1:
        custom_max_dist -= 1
    else:
        custom_max_dist -= 10

    if custom_max_dist > 200:
        custom_max_dist = custom_min_dist
    if custom_max_dist < custom_min_dist:
        custom_max_dist = 200

    eventPlayer.menu_opt_var[eventPlayer.menu_index] = "{0} m".format(custom_max_dist)


def menu_act_cycle_points():
    @Name "SUB: menu_act_cycle_points"
    
    menu_status_cycle()
    custom_strafe_points = eventPlayer.menu_opt_value + 1
    eventPlayer.menu_opt_var[eventPlayer.menu_index] = "{0}".format(custom_strafe_points)
    eventPlayer.menu_reset_bots = true


def menu_act_cycle_difficulty():
    @Name "SUB: menu_act_cycle_difficulty"

    menu_status_cycle()
    eventPlayer.menu_opt_var[eventPlayer.menu_index] = opt_array_movement[1][eventPlayer.menu_opt_value]
    eventPlayer.menu_on_opt_color[eventPlayer.menu_index] = opt_array_movement[2][eventPlayer.menu_opt_value]
    eventPlayer.item_visible[eventPlayer.menu_index+1] = true
    if eventPlayer.menu_opt_value == 0:
        eventPlayer.item_visible[eventPlayer.menu_index+1] = true
        eventPlayer.item_visible[eventPlayer.menu_index+2] = true
        mvmt_min_wait = custom_min_wait
        mvmt_max_wait = custom_max_wait
    else:
        eventPlayer.item_visible[eventPlayer.menu_index+1] = false
        eventPlayer.item_visible[eventPlayer.menu_index+2] = false
        mvmt_min_wait = opt_array_movement[3][eventPlayer.menu_opt_value]
        mvmt_max_wait = opt_array_movement[4][eventPlayer.menu_opt_value]

    smallMessage(eventPlayer, "Bots will change directions every {0} - {1} seconds.".format(mvmt_min_wait, mvmt_max_wait))


def menu_act_cycle_min_wait():
    @Name "SUB: menu_act_cycle_min_wait"

    if eventPlayer.menu_input == 0:
        custom_min_wait += 1
    elif eventPlayer.menu_input == 1:
        custom_min_wait += 0.01
    elif eventPlayer.menu_input == -1:
        custom_min_wait -= 0.01
    else:
        custom_min_wait -= 1

    if custom_min_wait > custom_max_wait:
        custom_min_wait = 0.01
    if custom_min_wait < 0.01:
        custom_min_wait = custom_max_wait
            
    eventPlayer.menu_opt_var[eventPlayer.menu_index] = "{0} s".format(custom_min_wait)
    mvmt_min_wait = custom_min_wait


def menu_act_cycle_max_wait():
    @Name "SUB: menu_act_cycle_max_wait"

    if eventPlayer.menu_input == 0:
        custom_max_wait += 1
    elif eventPlayer.menu_input == 1:
        custom_max_wait += 0.01
    elif eventPlayer.menu_input == -1:
        custom_max_wait -= 0.01
    else:
        custom_max_wait -= 1

    if custom_max_wait > 10:
        custom_max_wait = custom_min_wait
    if custom_max_wait < custom_min_wait:
        custom_max_wait = 10

    eventPlayer.menu_opt_var[eventPlayer.menu_index] = "{0} s".format(custom_max_wait)
    mvmt_max_wait = custom_max_wait

    
def menu_act_cycle_bot_speed():
    @Name "SUB: menu_act_cycle_bot_speed"

    if eventPlayer.menu_input == 0:
        if custom_bot_speed < 100 or custom_bot_speed >= 175:
            custom_bot_speed = 100
        elif custom_bot_speed < 125:
            custom_bot_speed = 125
        elif custom_bot_speed < 130:
            custom_bot_speed = 130
        elif custom_bot_speed < 160:
            custom_bot_speed = 160
        elif custom_bot_speed < 175:
            custom_bot_speed = 175
        eventPlayer.menu_opt_status[eventPlayer.menu_index] = custom_bot_speed
        eventPlayer.menu_opt_value = custom_bot_speed
    elif eventPlayer.menu_input == -2:
        if custom_bot_speed > 175 or custom_bot_speed <= 100:
            custom_bot_speed = 175
        elif custom_bot_speed > 160:
            custom_bot_speed = 160
        elif custom_bot_speed > 130:
            custom_bot_speed = 130
        elif custom_bot_speed > 125:
            custom_bot_speed = 125
        elif custom_bot_speed > 100:
            custom_bot_speed = 100
        eventPlayer.menu_opt_status[eventPlayer.menu_index] = custom_bot_speed
    else:
        menu_status_cycle()
        custom_bot_speed = eventPlayer.menu_opt_value
        eventPlayer.menu_opt_value = custom_bot_speed

    menu_speed_set_text_and_color()
    getPlayers(Team.2).setMoveSpeed(custom_bot_speed)


def menu_act_cycle_bot_bounce():
    @Name "SUB: menu_act_cycle_bot_bounce"

    if eventPlayer.menu_input == 0:
        if eventPlayer.menu_opt_value == 100:
            eventPlayer.menu_opt_status[eventPlayer.menu_index] = 0
        elif eventPlayer.menu_opt_value > 90:
            eventPlayer.menu_opt_status[eventPlayer.menu_index] = 100
        else:
            eventPlayer.menu_opt_status[eventPlayer.menu_index] += 10
        eventPlayer.menu_opt_value = eventPlayer.menu_opt_status[eventPlayer.menu_index]
    elif eventPlayer.menu_input == -2:
        if eventPlayer.menu_opt_value == 0:
            eventPlayer.menu_opt_status[eventPlayer.menu_index] = 100
        elif eventPlayer.menu_opt_value < 10:
            eventPlayer.menu_opt_status[eventPlayer.menu_index] = 0
        else:
            eventPlayer.menu_opt_status[eventPlayer.menu_index] -= 10
        eventPlayer.menu_opt_value = eventPlayer.menu_opt_status[eventPlayer.menu_index]
    else:
        menu_status_cycle()
    bounce_amount = eventPlayer.menu_opt_value
    if bounce_amount == 0:
        eventPlayer.menu_opt_var[eventPlayer.menu_index] = "off"
    else:
        eventPlayer.menu_opt_var[eventPlayer.menu_index] = bounce_amount


rule "Bouncing Bots":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isOnGround() == true
    @Condition bounce_amount > 0
    
    if eventPlayer.getPosition().x > eventPlayer.spawn_pt.x and eventPlayer.getPosition().z > eventPlayer.spawn_pt.z:
        eventPlayer.applyImpulse(vect(-1,1,-1), bounce_amount, Relativity.TO_PLAYER, Impulse.INCORPORATE_CONTRARY_MOTION)
    elif eventPlayer.getPosition().x > eventPlayer.spawn_pt.x and eventPlayer.getPosition().z < eventPlayer.spawn_pt.z:
        eventPlayer.applyImpulse(vect(-1,1,1), bounce_amount, Relativity.TO_PLAYER, Impulse.INCORPORATE_CONTRARY_MOTION)
    elif eventPlayer.getPosition().x < eventPlayer.spawn_pt.x and eventPlayer.getPosition().z > eventPlayer.spawn_pt.z:
        eventPlayer.applyImpulse(vect(1,1,-1), bounce_amount, Relativity.TO_PLAYER, Impulse.INCORPORATE_CONTRARY_MOTION)
    else:
        eventPlayer.applyImpulse(vect(1,1,1), bounce_amount, Relativity.TO_PLAYER, Impulse.INCORPORATE_CONTRARY_MOTION)
    wait(1)
    if RULE_CONDITION:
        goto RULE_START

        
def menu_act_toggle_spawn_menu():
    @Name "SUB: menu_act_toggle_spawn_menu"

    # We wait until the player releases both input buttons so the rule that control the submenu's first index action does not trigger unintendedly 
    #waitUntil(eventPlayer.isHoldingButton(Button.ABILITY_2) == false and eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) == false,9999)
    if eventPlayer.submenu_index == 0:
        eventPlayer.submenu_index = 4
        eventPlayer.menu_index = eventPlayer.submenu_start_index[eventPlayer.submenu_index]
    else:
        eventPlayer.submenu_index = 0
        eventPlayer.menu_index = 4 + eventPlayer.submenu_start_index[eventPlayer.submenu_index]


def menu_act_num_bots():
    @Name "SUB: menu_act_num_bots"

    menu_status_cycle()
    bot_count = eventPlayer.menu_opt_value
    if bot_count == 0:
        bot_slot = 0
    else:
        bot_slot = bot_count - 1

    bot_pool_array[bot_slot] = active_hero_array
    bot_radius_array[bot_slot] = spawn_radius
    bot_spawn_array[bot_slot] = default_spawn_pt

    eventPlayer.menu_opt_var[eventPlayer.menu_index] = bot_count

    eventPlayer.menu_opt_status[eventPlayer.menu_index+2] = bot_slot
    eventPlayer.menu_opt_var[eventPlayer.menu_index+2] = bot_slot
    eventPlayer.menu_opt_len[eventPlayer.menu_index+2] = bot_slot

    if eventPlayer.menu_opt_status[eventPlayer.menu_index+1] == 1:
        eventPlayer.menu_off_opt_title[eventPlayer.menu_index+3] = "Slot {0} Hero Pool".format(bot_slot)
        eventPlayer.menu_on_opt_title[eventPlayer.menu_index+3] = "Slot {0}".format(bot_slot)
        eventPlayer.menu_on_opt_title[eventPlayer.menu_index+4] = "Slot {0} Radius".format(bot_slot)
        eventPlayer.menu_off_opt_title[eventPlayer.menu_index+5] = "Set Slot {0} Spawn Point".format(bot_slot)
        eventPlayer.menu_on_opt_title[eventPlayer.menu_index+5] = "Set Slot {0} Spawn Point".format(bot_slot)
        
    eventPlayer.menu_reset_bots = true
    smallMessage(eventPlayer, "    Bot count updated. Exit menu to refresh bots.")
    

def menu_act_toggle_spawn_type():
    @Name "SUB: menu_act_toggle_spawn_type"

    if eventPlayer.menu_opt_value == 1:
        eventPlayer.menu_opt_value = 0
        eventPlayer.item_visible[eventPlayer.menu_index+1] = false
        eventPlayer.menu_off_opt_title[eventPlayer.menu_index+2] = "Hero Pool"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_index+2] = ""
        eventPlayer.menu_off_opt_title[eventPlayer.menu_index+3] = "Spawn Radius"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_index+3] = "Radius"
        eventPlayer.menu_off_opt_title[eventPlayer.menu_index+4] = "Set Spawn Point"
        eventPlayer.menu_on_opt_title[eventPlayer.menu_index+4] = "Set Spawn Point"
    else:
        eventPlayer.menu_opt_value = 1
        eventPlayer.item_visible[eventPlayer.menu_index+1] = true

        eventPlayer.menu_off_opt_title[eventPlayer.menu_index+2] = "Slot {0} Hero Pool".format(bot_slot)
        eventPlayer.menu_off_opt_title[eventPlayer.menu_index+3] = "Slot {0} Spawn Radius".format(bot_slot)
        eventPlayer.menu_on_opt_title[eventPlayer.menu_index+3] = "Slot {0} Radius".format(bot_slot)
        eventPlayer.menu_off_opt_title[eventPlayer.menu_index+4] = "Set Slot {0} Spawn Point".format(bot_slot)
        eventPlayer.menu_on_opt_title[eventPlayer.menu_index+4] = "Set Slot {0} Spawn Point".format(bot_slot)

    eventPlayer.menu_opt_status[eventPlayer.menu_index] = eventPlayer.menu_opt_value
    spawn_type = eventPlayer.menu_opt_value
    eventPlayer.menu_opt_var[eventPlayer.menu_index] = opt_array_spawn_strings[eventPlayer.menu_opt_value]
    eventPlayer.menu_opt_status[eventPlayer.menu_index] = eventPlayer.menu_opt_value
    

def menu_act_cycle_slot():
    @Name "SUB: menu_act_cycle_slot"

    menu_status_cycle()
    bot_slot = eventPlayer.menu_opt_value
    eventPlayer.menu_opt_var[eventPlayer.menu_index] = bot_slot
    eventPlayer.menu_off_opt_title[eventPlayer.menu_index+1] = "Slot {0} Hero Pool".format(bot_slot)
    #eventPlayer.menu_on_opt_title[eventPlayer.menu_index+1] = "Slot {0}".format(bot_slot)
    eventPlayer.menu_off_opt_title[eventPlayer.menu_index+2] = "Slot {0} Spawn Radius".format(bot_slot)
    eventPlayer.menu_on_opt_title[eventPlayer.menu_index+2] = "Slot {0} Radius".format(bot_slot)
    eventPlayer.menu_off_opt_title[eventPlayer.menu_index+3] = "Set Slot {0} Spawn Point".format(bot_slot)
    eventPlayer.menu_on_opt_title[eventPlayer.menu_index+3] = "Set Slot {0} Spawn Point".format(bot_slot)


def menu_act_hero_pool():
    @Name "SUB: menu_act_hero_pool"
    if eventPlayer.menu_input == 0:
        if hero_array_status[eventPlayer.menu_opt_value] == "on":
            hero_array_status[eventPlayer.menu_opt_value] = "off"
            active_hero_array.remove(hero_array[eventPlayer.menu_opt_value])
            smallMessage(eventPlayer, "    {0}  removed from the spawn pool. Exit menu to refresh bots.".format(hero_array[eventPlayer.menu_opt_value]))
        else:
            hero_array_status[eventPlayer.menu_opt_value] = "on"
            active_hero_array.append(hero_array[eventPlayer.menu_opt_value])
            smallMessage(eventPlayer, "    {0}  added to the spawn pool. Exit menu to refresh bots.".format(hero_array[eventPlayer.menu_opt_value]))
        if spawn_type == 0:
            for bot_index in range(0, bot_count, 1):
                bot_pool_array[bot_index] = active_hero_array
        else:
            bot_pool_array[bot_slot] = active_hero_array
        eventPlayer.menu_reset_bots = true
    elif eventPlayer.menu_input == -2:
        if hero_array_status[eventPlayer.menu_opt_value] == "on":
            smallMessage(eventPlayer, "    Removing all bots from the Hero Pool.")
            for hero_array_index in range (0, len(hero_array_status)):
                hero_array_status[hero_array_index] = "off"
                active_hero_array.remove(hero_array[hero_array_index])
        else:
            smallMessage(eventPlayer, "    Adding all bots to the Hero Pool.")
            for hero_array_index in range (0, len(hero_array_status)):
                hero_array_status[hero_array_index] = "on"
                active_hero_array.append(hero_array[hero_array_index])
        if spawn_type == 0:
            for bot_index in range(0, bot_count, 1):
                bot_pool_array[bot_index] = active_hero_array
        else:
            bot_pool_array[bot_slot] = active_hero_array
    else:
        menu_status_cycle()
        eventPlayer.bar_var[eventPlayer.menu_index] = heroIcon(hero_array[eventPlayer.menu_opt_value])
    eventPlayer.menu_opt_var[eventPlayer.menu_index] = "{0} : {1}".format(hero_array[eventPlayer.menu_opt_value], hero_array_status[eventPlayer.menu_opt_value])
    menu_hero_bar_color_set()
    eventPlayer.menu_reset_bots = true


def menu_act_cycle_radius():
    @Name "menu_act_cycle_radius"

    menu_status_cycle()
    spawn_radius = eventPlayer.menu_opt_value
    if spawn_type == 0:
        for bot_index in range(0, bot_count, 1):
            bot_radius_array[bot_index] = spawn_radius
    else:
        bot_radius_array[bot_slot] = spawn_radius

    eventPlayer.menu_opt_var[eventPlayer.menu_index] = "{0} m".format(spawn_radius)
    eventPlayer.menu_reset_bots = true


def menu_act_set_spawn_pt():
    @Name "menu_act_set_spawn_pt"
    default_spawn_pt = eventPlayer.getPosition()
    if spawn_type == 0:
        
        for bot_index in range(0, bot_count, 1):
            bot_spawn_array[bot_index] = default_spawn_pt
        smallMessage(eventPlayer, "    Spawn Point Set")      
    else:
        bot_spawn_array[bot_slot] = default_spawn_pt
        smallMessage(eventPlayer, "    Bot {} Spawn Point Set".format(bot_slot))
        bot_gen_index = bot_slot
    eventPlayer.menu_reset_bots = true 
        
def menu_act_toggle_game_modes():
    @Name "SUB: menu_act_toggle_game_modes"

    # We wait until the player releases both input buttons so the rule that control the submenu's first index action does not trigger unintendedly 
    #waitUntil(eventPlayer.isHoldingButton(Button.ABILITY_2) == false and eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) == false,9999)
    if eventPlayer.submenu_index == 0:
        eventPlayer.submenu_index = 5
        eventPlayer.menu_index = eventPlayer.submenu_start_index[eventPlayer.submenu_index]
    else:
        eventPlayer.submenu_index = 0
        eventPlayer.menu_index = 5 + eventPlayer.submenu_start_index[eventPlayer.submenu_index]


def menu_act_cycle_pressure_mode():
    @Name "SUB: menu_act_cycle_pressure_mode"

    eventPlayer.stat_timer = 0
    eventPlayer.stat_kills = 0
    eventPlayer.stat_deaths = 0
    eventPlayer.stat_dmg_dealt = 0
    eventPlayer.stat_dmg_taken = 0

    menu_status_cycle()
    pressure_type = eventPlayer.menu_opt_value
    eventPlayer.menu_opt_var[eventPlayer.menu_index] = opt_array_pressure[pressure_type]

    if pressure_type == 0:
        eventPlayer.item_visible[eventPlayer.menu_index+1] = false
    else:
        eventPlayer.item_visible[eventPlayer.menu_index+1] = true

def menu_act_cycle_accuracy():
    @Name "SUB: menu_act_cycle_accuracy"

    menu_status_cycle()
    pressure_accuracy = eventPlayer.menu_opt_value + 1
    eventPlayer.menu_opt_var[eventPlayer.menu_index] = "{0}%".format(pressure_accuracy)
    menu_pressure_cycle_color_set()


def menu_act_toggle_speed():
    @Name "SUB: menu_act_toggle_speed"

    menu_status_io_toggle()
    if eventPlayer.menu_opt_value == 0:
        speed_mode_enabled = false
        
        getPlayers(Team.2).setMoveSpeed(custom_bot_speed)
        eventPlayer.item_visible[eventPlayer.menu_index+1] = false
        eventPlayer.item_visible[eventPlayer.menu_index+2] = false
        eventPlayer.item_visible[eventPlayer.menu_index+3] = false
        smallMessage(eventPlayer, "    Speed Mode disabled")
    else:
        speed_mode_enabled = true
        
        speed_multi = speed_base
        speed_score = speed_base
        speed_timer = speed_max_time
        getPlayers(Team.2).setMoveSpeed(speed_base)
        eventPlayer.item_visible[eventPlayer.menu_index+1] = true
        eventPlayer.item_visible[eventPlayer.menu_index+2] = true
        eventPlayer.item_visible[eventPlayer.menu_index+3] = true
        smallMessage(eventPlayer, "    Speed Mode enabled")
        

def menu_act_cycle_timer():
    @Name "SUB: menu_act_cycle_timer"

    if speed_max_time < 0:
        speed_max_time = 60
    elif speed_max_time > 60:
        speed_max_time = 0
    elif eventPlayer.menu_input == 0:
        speed_max_time += 1
    elif eventPlayer.menu_input == 1:
        speed_max_time += 0.01
    elif eventPlayer.menu_input == -1:
        speed_max_time -= 0.01
    else:
        speed_max_time -= 1

    eventPlayer.menu_opt_var[eventPlayer.menu_index] = "{0} s".format(speed_max_time)


def menu_act_cycle_increment():
    @Name "SUB: menu_act_cycle_increment"

    menu_status_cycle()
    speed_increment = eventPlayer.menu_opt_value
    eventPlayer.menu_opt_var[eventPlayer.menu_index] = "{0}%".format(speed_increment)
    

    
def menu_act_cycle_decrement():
    @Name "SUB: menu_act_cycle_decrement"

    menu_status_cycle()
    speed_decrement = eventPlayer.menu_opt_value
    eventPlayer.menu_opt_var[eventPlayer.menu_index] = "{0}%".format(speed_decrement)


# Player Abiltity Modifiers

rule "Player Ability: Ultimate Refresh":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.getUltCharge() != 100
    @Condition eventPlayer.isUsingUltimate() == false
    
    
    eventPlayer.setUltCharge(100)


rule "Player Ability: Heal if no damage in killable":
    @Event playerTookDamage
    @Team 1
    @Condition pressure_type == 1
    @Condition heal_over_time == true
    
    wait(4, Wait.RESTART_WHEN_TRUE)
    eventPlayer.setHealth(eventPlayer.getMaxHealth())


rule "Player Ability: Heal if no damage default":
    @Event playerTookDamage
    @Team 1
    @Condition pressure_type != 1
    
    wait(0.25)
    eventPlayer.setHealth(eventPlayer.getMaxHealth())


rule "Player Ability: Elimination refresh CDs":
    @Event playerDealtFinalBlow
    @Team 1
    @Condition refresh_on_elim == true

    reset_player_resources()


rule "Player Ability: Punishment for Death":
    @Event playerTookDamage
    @Team 1
    @Condition pressure_type == 1
    @Condition eventPlayer.getHealth() <= 1
    @Condition punish_deaths == true
    
    eventPlayer.setStatusEffect(eventPlayer, Status.STUNNED, 0.5)
    if attacker.isAlive():
        attacker.setHealth(attacker.getMaxHealth())


rule "Player Ability: Elimination refresh CDs":
    @Event playerTookDamage
    @Team 1
    @Condition pressure_type == 1
    @Condition eventPlayer.getHealth() <= 1
    @Condition refresh_on_elim == true

    reset_player_resources()


rule "Player Ability: Grant Zarya Charge outside of pressure":
    @Event eachPlayer
    @Team 1
    @Hero zarya
    @Condition eventPlayer.isUsingAbility1() == true
    @Condition pressure_type == 0
    
    damage(eventPlayer, null, 200)
    eventPlayer.setHealth(eventPlayer.getMaxHealth())


rule "Player Ability: Grant Doom Power Punch outside of pressure":
    @Event eachPlayer
    @Team 1
    @Hero doomfist
    @Condition eventPlayer.isUsingAbility2() == true
    @Condition pressure_type == 0
    
    wait(0.75, Wait.ABORT_WHEN_FALSE)
    eventPlayer.startDoT(eventPlayer.look_target, 0.25, 800)
    wait(0.25, Wait.ABORT_WHEN_FALSE)
    eventPlayer.stopAllDoT()
    eventPlayer.setHealth(eventPlayer.getMaxHealth())

    
rule "Player Ability: Punish No Strafing":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.strafe_stun_timer > 0
    @Condition eventPlayer.menu_visible == false

    eventPlayer.stored_vect = eventPlayer.getThrottle()
    eventPlayer.punish_timer = eventPlayer.strafe_stun_timer
    chase(eventPlayer.punish_timer, 0, rate=1, ChaseReeval.NONE)
    waitUntil(eventPlayer.stored_vect != eventPlayer.getThrottle(), eventPlayer.strafe_stun_timer)
    if eventPlayer.punish_timer == 0:
        eventPlayer.setStatusEffect(eventPlayer, Status.STUNNED, 0.5)
        smallMessage(eventPlayer, "    Keep Strafing, Twinkle Toes!")
        wait(0.5)
    if RULE_CONDITION:
        goto RULE_START


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


def reset_player_resources():
    @Name "SUB: reset_player_resources"
    wait(0.1)
    eventPlayer.setHealth(eventPlayer.getMaxHealth())
    eventPlayer.setStatusEffect(eventPlayer, Status.INVINCIBLE,1)
    wait(1)
    eventPlayer.setAbilityCooldown(Button.PRIMARY_FIRE,0)
    eventPlayer.setAbilityCooldown(Button.SECONDARY_FIRE,0)
    eventPlayer.setAbilityCooldown(Button.ABILITY_1,0)
    eventPlayer.setAbilityCooldown(Button.ABILITY_2,0)
    

# Stat Trackers
rule "Stats: Timer Start":
    @Event playerDealtDamage
    @Team 1
    @Condition eventPlayer.stat_timer == 0
    
    chase(eventPlayer.stat_timer, 9999, rate=1, ChaseReeval.DESTINATION_AND_RATE)


rule "Stats: Elimination":
    @Event playerDealtFinalBlow
    @Team 1
    
    eventPlayer.stat_kills += 1


rule "Stats: Pressure Mode Damage Dealt":
    @Event playerDealtDamage
    @Team 1
    @Condition pressure_type != 0
    
    eventPlayer.stat_dmg_dealt += eventDamage


rule "Stats: Pressure Mode killable track deaths":
    @Event playerTookDamage
    @Team 1
    @Condition pressure_type == 1
    @Condition eventPlayer.getHealth() <= 1
    
    eventPlayer.stat_deaths += 1
    if punish_deaths == true:
        eventPlayer.punish_timer = 1
        eventPlayer.setStatusEffect(eventPlayer, Status.STUNNED, 0.5)
        attacker.setHealth(attacker.getMaxHealth())
        smallMessage(eventPlayer, "    you died.")
    eventPlayer.setHealth(eventPlayer.getMaxHealth())
    eventPlayer.setStatusEffect(eventPlayer, Status.INVINCIBLE, 1)
    eventPlayer.setAmmo(0,eventPlayer.getMaxAmmo(0))


rule "Stats: Pressure Mode Damage Recieved":
    @Event playerTookDamage
    @Team 1
    @Condition pressure_type != 0
    
    eventPlayer.stat_dmg_taken += eventDamage


rule "Show Player Damage by BluJay (https://workshop.codes/7CZFC)":
    @Event eachPlayer
    @Team 2
    @Condition dmg_to_slot_array == true
    
    createInWorldText(null if localPlayer.stat_dmg_to_slot[eventPlayer.getSlot()] == 0 or localPlayer == eventPlayer else localPlayer, round(localPlayer.stat_dmg_to_slot[eventPlayer.getSlot()]), updateEveryTick(vect(eventPlayer.getEyePosition().x, eventPlayer.getEyePosition().y + 1.4, eventPlayer.getEyePosition().z)), 2, Clip.NONE, WorldTextReeval.VISIBILITY_POSITION_AND_STRING, Color.WHITE, SpecVisibility.DEFAULT)


rule "Player Took Damage by BluJay (https://workshop.codes/7CZFC)":
    @Event playerTookDamage
    @Team 2
    @Condition dmg_to_slot_array == true
    
    attacker.stat_dmg_to_slot[victim.getSlot()] += eventDamage
    wait(1.5, Wait.RESTART_WHEN_TRUE)
    attacker.stat_dmg_to_slot[victim.getSlot()] = 0


# Bot Creation / Deletion 
def create_bot():
    @Name "SUB: BotGen: create_bot"
    if bot_pool_array[bot_gen_index][0] != null:
        createDummy(random.choice(bot_pool_array[bot_gen_index]), Team.2, bot_gen_index, bot_spawn_array[bot_gen_index], vect(0, 0, 0))


def destroy_bot():
    @Name "SUB: BotGen: destroy_bot"
    destroyDummy(Team.2, bot_gen_index)


def create_all_bots():
    @Name "SUB: BotGen: create_all_bots"

    for bot_gen_index in range(0, bot_count,1):
        create_bot()
        wait(1)
    if speed_mode_enabled == true:
        getPlayers(Team.2).setMoveSpeed(speed_multi)
    else:
        getPlayers(Team.2).setMoveSpeed(custom_bot_speed)


def destroy_all_bots():
    @Name "SUB: BotGen: destroy_all_bots"

    for bot_gen_index in range(0,getNumberOfPlayers(Team.2),1):
        destroy_bot()


# Bot Lifecycle
def initialize_bot():
    @Name "SUB: initialize_bot"

    set_curr_hero_index()
    eventPlayer.pressure_target = null
    # Reset the bots spawn and movement variables.
    eventPlayer.mvmt_rad_1 = bot_radius_array[eventPlayer.getSlot()]
    eventPlayer.mvmt_rad_2 = eventPlayer.mvmt_rad_1/2
    eventPlayer.spawn_pt = bot_spawn_array[eventPlayer.getSlot()]

    # Unlock all bot locks
    eventPlayer.mvmt_type_lock = false
    eventPlayer.mvmt_type = default_mvmt_type
    eventPlayer.bot_ability_signal = [false, false, false, false, false]
    eventPlayer.bot_ability_lock  = [false, false, false, false, false]
    eventPlayer.bot_disable_jump = false
    eventPlayer.bot_disable_crouch = false
    eventPlayer.look_target_timer = 1
    eventPlayer.is_healing_facing = false
    eventPlayer.ability_acc = 0
    eventPlayer.look_offset = vect(random.uniform(-1,1),0,random.uniform(-1,1))

    set_curr_hero_index()
    set_default_facing()
    eventPlayer.startForcingName(hero_name_array[eventPlayer.curr_hero_index])
    if hero_array[eventPlayer.curr_hero_index] == Hero.ZARYA:
        eventPlayer.bot_ability_lock[2] = 2
    elif hero_array[eventPlayer.curr_hero_index] == Hero.JUNKRAT:
        eventPlayer.bot_ability_lock[2] = 2
    elif hero_array[eventPlayer.curr_hero_index] == Hero.TRACER:
        eventPlayer.bot_ability_lock[2] = 3
    elif hero_array[eventPlayer.curr_hero_index] == Hero.MERCY:
        eventPlayer.look_target_timer = 3
        set_healing_facing()

    if eventPlayer.mvmt_type <= 2:
        set_default_pathing()
    elif eventPlayer.mvmt_type == 5 or eventPlayer.mvmt_type == 6:
        set_fixed_pathing()  


rule "Bot Spawn: Setup":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.hasSpawned() == true
    
    initialize_bot()


rule "Bot Died: Swap Hero":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isDead() == true
    
    # Select new hero
    bot_pool_array[eventPlayer.getSlot()] = random.shuffle(bot_pool_array[eventPlayer.getSlot()])
    eventPlayer.least_hero = 9999
    for bot_index in range(0,len(bot_pool_array[eventPlayer.getSlot()]),1):
        if eventPlayer.least_hero >= getNumberOfHeroes(bot_pool_array[eventPlayer.getSlot()][bot_index], Team.2):
            eventPlayer.least_hero = getNumberOfHeroes(bot_pool_array[eventPlayer.getSlot()][bot_index], Team.2)
            eventPlayer.next_hero_index = bot_index
    # res player
    wait(2)
    if getNumberOfLivingPlayers(Team.2) > 1:
        wait(2)

    waitUntil(nearestWalkablePosition(eventPlayer.getPosition()) != null, 9999)
    if len(bot_pool_array[eventPlayer.getSlot()]) == 1:
        wait()
        eventPlayer.resurrect()
    else:
        eventPlayer.startForcingHero(bot_pool_array[eventPlayer.getSlot()][eventPlayer.next_hero_index])

    eventPlayer.stopForcingButton(Button.ABILITY_1)
    eventPlayer.stopForcingButton(Button.ABILITY_2)
    eventPlayer.stopForcingButton(Button.CROUCH)
    eventPlayer.stopForcingButton(Button.JUMP)
    eventPlayer.stopForcingButton(Button.MELEE)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.stopForcingButton(Button.RELOAD)
    eventPlayer.stopForcingButton(Button.ULTIMATE)
    teleport_bot()
    eventPlayer.setHealth(eventPlayer.getMaxHealth())


rule "Teleport out of Spawn":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isInSpawnRoom()

    wait(1,Wait.ABORT_WHEN_FALSE)
    teleport_bot()


def teleport_bot():
    @Name "SUB: teleport_bot"

    if eventPlayer.mvmt_type <= 2:
        eventPlayer.teleport(nearestWalkablePosition(eventPlayer.path_pos[random.randint(0,7)]))
    elif eventPlayer.mvmt_type == 5 or eventPlayer.mvmt_type == 6:
        eventPlayer.path_dir = random.randint(0,custom_strafe_points-1)
        eventPlayer.teleport(nearestWalkablePosition(eventPlayer.path_pos[eventPlayer.path_dir]))
    else:
        eventPlayer.teleport(nearestWalkablePosition(eventPlayer.spawn_pt + vect(random.uniform(-eventPlayer.mvmt_rad_1,eventPlayer.mvmt_rad_1), 0, random.uniform(-eventPlayer.mvmt_rad_1,eventPlayer.mvmt_rad_1))))


# Bot Movement
rule "Bot Pathing: Initialization":
    @Event eachPlayer
    @Team 2

    eventPlayer.path_pos = vect(0,0,0)
    eventPlayer.path_pos.append(vect(0,0,0))
    eventPlayer.path_pos.append(vect(0,0,0))
    eventPlayer.path_pos.append(vect(0,0,0))
    eventPlayer.path_pos.append(vect(0,0,0))
    eventPlayer.path_pos.append(vect(0,0,0))
    eventPlayer.path_pos.append(vect(0,0,0))
    eventPlayer.path_pos.append(vect(0,0,0))
    eventPlayer.path_index = 0
    eventPlayer.path_index.append(1)
    eventPlayer.path_index.append(2)
    eventPlayer.path_index.append(3)
    eventPlayer.path_index.append(4)
    eventPlayer.path_index.append(5)
    eventPlayer.path_index.append(6)
    eventPlayer.path_index.append(7)

    
rule "Bot Pathing: Randomized Strafes":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true
    @Condition default_mvmt_type == 0
    @Condition eventPlayer.mvmt_type_lock == false
    
    eventPlayer.mvmt_type = random.randint(1,3)
    wait(5, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START

    
rule "Bot Pathing: Movement Handler: Movement Type 1 default Pathing":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.mvmt_type == 1

    change_pathing()
    wait(random.uniform(mvmt_min_wait, mvmt_max_wait), Wait.ABORT_WHEN_FALSE)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pathing: Movement Handler: Movement Type 2 default Pathing + rand long strafe":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.mvmt_type == 2
    
    eventPlayer.bot_pathing_var = random.randint(0, 9)
    if eventPlayer.bot_pathing_var < 3:
        change_pathing()
        wait(random.uniform(mvmt_min_wait + eventPlayer.bot_pathing_var * 0.25, mvmt_max_wait + eventPlayer.bot_pathing_var * 0.5), Wait.ABORT_WHEN_FALSE)
    else:            
        change_pathing()
        wait(random.uniform(mvmt_min_wait, mvmt_max_wait), Wait.ABORT_WHEN_FALSE)

    if RULE_CONDITION:
        goto RULE_START



rule "Bot Pathing: default pathing - Too close to path destination":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true
    @Condition (distance(eventPlayer.getPosition(), eventPlayer.path_pos[eventPlayer.path_dir]) <= 1.5)
    @Condition eventPlayer.mvmt_type == 1 or eventPlayer.mvmt_type == 2
    
    eventPlayer.path_index.remove(eventPlayer.path_dir)
    eventPlayer.path_old_dir = eventPlayer.path_dir
    eventPlayer.path_dir = random.choice(eventPlayer.path_index)
    eventPlayer.path_index.append(eventPlayer.path_old_dir)
    eventPlayer.startThrottleInDirection(localVector(eventPlayer.path_pos[eventPlayer.path_dir], eventPlayer, Transform.ROTATION_AND_TRANSLATION), 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
    wait(1, Wait.ABORT_WHEN_FALSE)
    
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pathing: Movement Handler - mvmt_type 3 AD Strafes":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.mvmt_type == 3
    
    eventPlayer.bot_pathing_var = random.randint(0, 1)
    if eventPlayer.bot_pathing_var == 0:
        eventPlayer.startThrottleInDirection(Vector.LEFT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
    else:
        eventPlayer.startThrottleInDirection(Vector.RIGHT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
    wait(random.uniform(mvmt_min_wait, mvmt_max_wait), Wait.ABORT_WHEN_FALSE)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pathing: Movement Handler - mvmt_type 4 Custom Range Strafes":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.mvmt_type == 4

    eventPlayer.bot_mvmt_var = distance(eventPlayer.look_target.getPosition(), eventPlayer.getPosition())
    if eventPlayer.bot_mvmt_var < custom_min_dist:
        eventPlayer.bot_pathing_var = random.randint(0, 2)
        if eventPlayer.bot_pathing_var == 0:
            eventPlayer.startThrottleInDirection(Vector.BACKWARD + Vector.LEFT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
        elif eventPlayer.bot_pathing_var == 1:
            eventPlayer.startThrottleInDirection(Vector.BACKWARD + Vector.RIGHT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
        else:
            eventPlayer.startThrottleInDirection(Vector.BACKWARD, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.NONE)
    elif eventPlayer.bot_mvmt_var > custom_max_dist:
        eventPlayer.bot_pathing_var = random.randint(0, 2)
        if eventPlayer.bot_pathing_var == 0:
            eventPlayer.startThrottleInDirection(Vector.FORWARD + Vector.LEFT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
        elif eventPlayer.bot_pathing_var == 1:
            eventPlayer.startThrottleInDirection(Vector.FORWARD + Vector.RIGHT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
        else:
            eventPlayer.startThrottleInDirection(Vector.FORWARD, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.NONE)
    else:
        eventPlayer.bot_pathing_var = random.randint(0, 7)
        if eventPlayer.bot_pathing_var == 0:
            eventPlayer.startThrottleInDirection(Vector.LEFT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
        elif eventPlayer.bot_pathing_var == 1:
            eventPlayer.startThrottleInDirection(Vector.RIGHT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
        elif eventPlayer.bot_pathing_var == 2:
            eventPlayer.startThrottleInDirection(Vector.FORWARD + Vector.LEFT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
        elif eventPlayer.bot_pathing_var == 3:
            eventPlayer.startThrottleInDirection(Vector.FORWARD + Vector.RIGHT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
        elif eventPlayer.bot_pathing_var == 4:
            eventPlayer.startThrottleInDirection(Vector.FORWARD, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.NONE)
        elif eventPlayer.bot_pathing_var == 5:
            eventPlayer.startThrottleInDirection(Vector.BACKWARD + Vector.LEFT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
        elif eventPlayer.bot_pathing_var == 6:
            eventPlayer.startThrottleInDirection(Vector.BACKWARD + Vector.RIGHT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
        else:
            eventPlayer.startThrottleInDirection(Vector.BACKWARD, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.NONE)

    wait(random.uniform(mvmt_min_wait, mvmt_max_wait), Wait.ABORT_WHEN_FALSE)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pathing: Movement Handler - mvmt_type 5 Fixed Shapes CW":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.mvmt_type == 5


    if distance(eventPlayer.getPosition() - vect(0,eventPlayer.getPosition().y,0), eventPlayer.path_pos[eventPlayer.path_dir] - vect(0,eventPlayer.path_pos[eventPlayer.path_dir].y,0)) <= 1:
        eventPlayer.path_dir += 1
        if eventPlayer.path_dir >= custom_strafe_points:
            eventPlayer.path_dir = 0
    eventPlayer.startThrottleInDirection(localVector(eventPlayer.path_pos[eventPlayer.path_dir], eventPlayer, Transform.ROTATION_AND_TRANSLATION), 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
    wait()

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pathing: Movement Handler - mvmt_type 6 Fixed Shapes CCW":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.mvmt_type == 6


    if distance(eventPlayer.getPosition() - vect(0,eventPlayer.getPosition().y,0), eventPlayer.path_pos[eventPlayer.path_dir] - vect(0,eventPlayer.path_pos[eventPlayer.path_dir].y,0)) <= 1:
        eventPlayer.path_dir -= 1
        if eventPlayer.path_dir < 0:
            eventPlayer.path_dir = custom_strafe_points - 1
    eventPlayer.startThrottleInDirection(localVector(eventPlayer.path_pos[eventPlayer.path_dir], eventPlayer, Transform.ROTATION_AND_TRANSLATION), 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
    wait()

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pathing: Movement Handler - mvmt_type 7 no movement":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.mvmt_type == 7

    eventPlayer.stopThrottleInDirection()
    wait(random.uniform(mvmt_min_wait, mvmt_max_wait), Wait.ABORT_WHEN_FALSE)

    if RULE_CONDITION:
        goto RULE_START
        

rule "Bot Pathing: Movement Handler - mvmt_type 8 Forward AD Strafes":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.mvmt_type == 8

    eventPlayer.bot_pathing_var = random.randint(0, 7)
    if eventPlayer.bot_pathing_var > 5:
        eventPlayer.startThrottleInDirection(Vector.FORWARD, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.NONE)
    elif eventPlayer.bot_pathing_var > 3:
        eventPlayer.startThrottleInDirection(Vector.FORWARD + Vector.LEFT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
    elif eventPlayer.bot_pathing_var > 1:
        eventPlayer.startThrottleInDirection(Vector.FORWARD + Vector.RIGHT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
    elif eventPlayer.bot_pathing_var == 1:
        eventPlayer.startThrottleInDirection(Vector.LEFT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
    else:
        eventPlayer.startThrottleInDirection(Vector.RIGHT, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
    wait(random.uniform(mvmt_min_wait, mvmt_max_wait), Wait.ABORT_WHEN_FALSE)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pathing: Movement Handler - mvmt_type 9 Forward Only":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.mvmt_type == 9

    eventPlayer.startThrottleInDirection(Vector.FORWARD, 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.NONE)



rule "Bot Default Movement: Bot jumping":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true
    @Condition default_jump_enabled == true
    @Condition eventPlayer.bot_disable_jump == false
    
    wait(random.uniform(default_jump_min, default_jump_max), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.JUMP)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Default Movement: Bot crouching":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive() == true
    @Condition default_crouch_enabled == true
    @Condition eventPlayer.bot_disable_crouch == false

    
    wait(random.uniform(default_crouch_min, default_crouch_max), Wait.ABORT_WHEN_FALSE)
    eventPlayer.startForcingButton(Button.CROUCH)
    wait(random.uniform(default_uncrouch_min, default_uncrouch_max))
    eventPlayer.stopForcingButton(Button.CROUCH)
    wait(0.35, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START

def change_pathing():
    @Name "SUB: change_pathing (default Pathing)"

    eventPlayer.path_index.remove(eventPlayer.path_dir)
    eventPlayer.path_old_dir = eventPlayer.path_dir
    eventPlayer.path_dir = random.choice(eventPlayer.path_index)
    eventPlayer.path_index.append(eventPlayer.path_old_dir)
    eventPlayer.startThrottleInDirection(localVector(eventPlayer.path_pos[eventPlayer.path_dir], eventPlayer, Transform.ROTATION_AND_TRANSLATION), 1, Relativity.TO_PLAYER, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)


def set_default_pathing():
    @Name "SUB: set_default_pathing"
    
    eventPlayer.path_dir = 0

    if eventPlayer.getSlot() == 3 or eventPlayer.getSlot() == 8:
        eventPlayer.path_pos[0] = eventPlayer.spawn_pt + vect(-eventPlayer.mvmt_rad_1,0, -eventPlayer.mvmt_rad_1)
        eventPlayer.path_pos[1] = eventPlayer.spawn_pt + vect(-eventPlayer.mvmt_rad_1, 0, -eventPlayer.mvmt_rad_2)
        eventPlayer.path_pos[2] = eventPlayer.spawn_pt + vect(-eventPlayer.mvmt_rad_1, 0, 0)
        eventPlayer.path_pos[3] = eventPlayer.spawn_pt + vect(-eventPlayer.mvmt_rad_2, 0, 0)
        eventPlayer.path_pos[4] = eventPlayer.spawn_pt + vect(0, 0, 0)
        eventPlayer.path_pos[5] = eventPlayer.spawn_pt + vect(0, 0, -eventPlayer.mvmt_rad_2)
        eventPlayer.path_pos[6] = eventPlayer.spawn_pt + vect(0, 0, -eventPlayer.mvmt_rad_1)
        eventPlayer.path_pos[7] = eventPlayer.spawn_pt + vect(-eventPlayer.mvmt_rad_2, 0, -eventPlayer.mvmt_rad_1)
    elif eventPlayer.getSlot() == 4 or eventPlayer.getSlot() == 9:
        eventPlayer.path_pos[0] = eventPlayer.spawn_pt + vect(eventPlayer.mvmt_rad_1, 0, eventPlayer.mvmt_rad_1)
        eventPlayer.path_pos[1] = eventPlayer.spawn_pt + vect(eventPlayer.mvmt_rad_1, 0, eventPlayer.mvmt_rad_2)
        eventPlayer.path_pos[2] = eventPlayer.spawn_pt + vect(eventPlayer.mvmt_rad_1, 0, 0)
        eventPlayer.path_pos[3] = eventPlayer.spawn_pt + vect(eventPlayer.mvmt_rad_2, 0, 0)
        eventPlayer.path_pos[4] = eventPlayer.spawn_pt + vect(0, 0, 0)
        eventPlayer.path_pos[5] = eventPlayer.spawn_pt + vect(0, 0, eventPlayer.mvmt_rad_2)
        eventPlayer.path_pos[6] = eventPlayer.spawn_pt + vect(0, 0, eventPlayer.mvmt_rad_1)
        eventPlayer.path_pos[7] = eventPlayer.spawn_pt + vect(eventPlayer.mvmt_rad_2, 0, eventPlayer.mvmt_rad_1)
    elif eventPlayer.getSlot() == 5 or eventPlayer.getSlot() == 10:
        eventPlayer.path_pos[0] = eventPlayer.spawn_pt + vect(-eventPlayer.mvmt_rad_1, 0, eventPlayer.mvmt_rad_1)
        eventPlayer.path_pos[1] = eventPlayer.spawn_pt + vect(-eventPlayer.mvmt_rad_1, 0, eventPlayer.mvmt_rad_2)
        eventPlayer.path_pos[2] = eventPlayer.spawn_pt + vect(-eventPlayer.mvmt_rad_1, 0, 0)
        eventPlayer.path_pos[3] = eventPlayer.spawn_pt + vect(-eventPlayer.mvmt_rad_2, 0, 0)
        eventPlayer.path_pos[4] = eventPlayer.spawn_pt + vect(0, 0, 0)
        eventPlayer.path_pos[5] = eventPlayer.spawn_pt + vect(0, 0, eventPlayer.mvmt_rad_2)
        eventPlayer.path_pos[6] = eventPlayer.spawn_pt + vect(0, 0, eventPlayer.mvmt_rad_1)
        eventPlayer.path_pos[7] = eventPlayer.spawn_pt + vect(-eventPlayer.mvmt_rad_2, 0, eventPlayer.mvmt_rad_1)
    elif eventPlayer.getSlot() == 6 or eventPlayer.getSlot() == 11:
        eventPlayer.path_pos[0] = eventPlayer.spawn_pt + vect(eventPlayer.mvmt_rad_1, 0, -eventPlayer.mvmt_rad_1)
        eventPlayer.path_pos[1] = eventPlayer.spawn_pt + vect(eventPlayer.mvmt_rad_1, 0, -eventPlayer.mvmt_rad_2)
        eventPlayer.path_pos[2] = eventPlayer.spawn_pt + vect(eventPlayer.mvmt_rad_1, 0, 0)
        eventPlayer.path_pos[3] = eventPlayer.spawn_pt + vect(eventPlayer.mvmt_rad_2, 0, 0)
        eventPlayer.path_pos[4] = eventPlayer.spawn_pt + vect(0, 0, 0)
        eventPlayer.path_pos[5] = eventPlayer.spawn_pt + vect(0, 0, -eventPlayer.mvmt_rad_2)
        eventPlayer.path_pos[6] = eventPlayer.spawn_pt + vect(0, 0, -eventPlayer.mvmt_rad_1)
        eventPlayer.path_pos[7] = eventPlayer.spawn_pt + vect(eventPlayer.mvmt_rad_2, 0, -eventPlayer.mvmt_rad_1)
    else:
        eventPlayer.path_pos[0] = eventPlayer.spawn_pt + vect(-eventPlayer.mvmt_rad_1 , 1, -eventPlayer.mvmt_rad_1)
        eventPlayer.path_pos[1] = eventPlayer.spawn_pt + vect(0, 0, -eventPlayer.mvmt_rad_1)
        eventPlayer.path_pos[2] = eventPlayer.spawn_pt + vect(eventPlayer.mvmt_rad_1, 0, -eventPlayer.mvmt_rad_1)
        eventPlayer.path_pos[3] = eventPlayer.spawn_pt + vect(eventPlayer.mvmt_rad_1, 0, 0)
        eventPlayer.path_pos[4] = eventPlayer.spawn_pt + vect(eventPlayer.mvmt_rad_1, 0, eventPlayer.mvmt_rad_1)
        eventPlayer.path_pos[5] = eventPlayer.spawn_pt + vect(0, 0, eventPlayer.mvmt_rad_1)
        eventPlayer.path_pos[6] = eventPlayer.spawn_pt + vect(-eventPlayer.mvmt_rad_1, 0, eventPlayer.mvmt_rad_1)
        eventPlayer.path_pos[7] = eventPlayer.spawn_pt + vect(-eventPlayer.mvmt_rad_1, 0, 0)

    
def set_fixed_pathing():
    @Name "SUB: set_fixed_pathing"

    for eventPlayer.bot_pathing_var in range(0,custom_strafe_points, 1):
        eventPlayer.path_pos[eventPlayer.bot_pathing_var] = eventPlayer.spawn_pt + vect(spawn_radius * cos(6.28 * eventPlayer.bot_pathing_var / custom_strafe_points),0, spawn_radius * sin(6.28 * eventPlayer.bot_pathing_var / custom_strafe_points))
    

def update_projectile_data():
    @Name "update_projectile_data"

    eventPlayer.proj_speed = hero_proj_speed[eventPlayer.curr_hero_index][eventPlayer.proj_type-1]
    eventPlayer.proj_gravity = hero_proj_gravity[eventPlayer.curr_hero_index][eventPlayer.proj_type-1]
    eventPlayer.proj_delta = hero_proj_delta[eventPlayer.curr_hero_index][eventPlayer.proj_type-1]

        
rule "Calculate Player Projectile Trajectory":
    @Event eachPlayer
    @Team 1
    @Condition eventPlayer.isAlive()
    @Condition eventPlayer.proj_type != 0
    @Condition eventPlayer.proj_speed != 0

    if eventPlayer.proj_gravity == 0:
        calc_proj_lead()
    else:
        calc_arc_proj_lead()
    wait()
    if RULE_CONDITION:
        goto RULE_START


rule "Calculate Bot Projectile Trajectory":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive()
    @Condition eventPlayer.proj_speed != 0

    if eventPlayer.proj_gravity == 0:
        calc_proj_lead()
    else:
        calc_arc_proj_lead()
    wait()
    if RULE_CONDITION:
        goto RULE_START


# Bot Facing
rule "Set Look Target":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.isAlive()

    if eventPlayer.pressure_target == null:
        eventPlayer.old_look_target = eventPlayer.look_target
        if eventPlayer.is_healing_facing == true:
            eventPlayer.look_target = sorted([player for player in getLivingPlayers(Team.2) if distance(eventPlayer.getEyePosition(), player.getEyePosition()) > 2], lambda i: distance(eventPlayer.getEyePosition(), i.getEyePosition()))[0]
            if eventPlayer.look_target == null:
                wait(1)
                eventPlayer.look_target = sorted([player for player in getLivingPlayers(Team.2)], lambda i: distance(eventPlayer.getEyePosition(), i.getEyePosition()))[0]
        else:
            eventPlayer.look_target = sorted(player_list, lambda player: distance(eventPlayer.getEyePosition(), player.getEyePosition()))[0]
        if eventPlayer.look_target == null:
            eventPlayer.look_target = eventPlayer.old_look_target
    else:
        eventPlayer.look_target = eventPlayer.pressure_target

    wait(eventPlayer.look_target_timer)

    if RULE_CONDITION:
        goto RULE_START

def set_default_facing():
    @Name "SUB: set_default_facing"

    eventPlayer.is_healing_facing = false
    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition() + eventPlayer.look_offset), default_turn_rate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)


def set_proj_facing():
    @Name "SUB: set_proj_facing"

    eventPlayer.is_healing_facing = false
    update_projectile_data()
    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), eventPlayer.aim_spot + eventPlayer.look_offset), default_turn_rate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)


def set_feet_facing():
    @Name "SUB: set_feet_facing"

    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), eventPlayer.look_target.getPosition() + eventPlayer.look_offset), default_turn_rate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)

def set_healing_facing():
    @Name "SUB: set_healing_facing"

    eventPlayer.is_healing_facing = true
    eventPlayer.look_target = sorted([player for player in getLivingPlayers(Team.2) if distance(eventPlayer.getEyePosition(), player.getEyePosition()) > 2], lambda i: distance(eventPlayer.getEyePosition(), i.getEyePosition()))[0]
    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()), default_turn_rate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)


def set_ground_facing():
    @Name "SUB: set_ground_facing"

    eventPlayer.is_healing_facing = false
    eventPlayer.startFacing(vect(0,-100,0), default_turn_rate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)


def calc_proj_lead():
    
    @Name "SUB: calc_proj_lead (KJRR5P)"

    eventPlayer.proj_delta_xz = eventPlayer.look_target.getEyePosition() - eventPlayer.getEyePosition()
    eventPlayer.proj_calc_a = dotProduct(eventPlayer.look_target.getVelocity(), eventPlayer.look_target.getVelocity()) - eventPlayer.proj_speed ** 2
    eventPlayer.proj_calc_b = -2 * dotProduct(eventPlayer.look_target.getVelocity(), eventPlayer.proj_delta_xz)
    eventPlayer.proj_calc_c = dotProduct(eventPlayer.proj_delta_xz, eventPlayer.proj_delta_xz)
    eventPlayer.proj_calc_d = eventPlayer.proj_calc_b * -1 / (2 * eventPlayer.proj_calc_a)
    eventPlayer.proj_calc_e = (sqrt(eventPlayer.proj_calc_b ** 2 - 4 * eventPlayer.proj_calc_a * eventPlayer.proj_calc_c)) / (2 * eventPlayer.proj_calc_a)
    eventPlayer.proj_calc_t1 = eventPlayer.proj_calc_d - eventPlayer.proj_calc_e
    eventPlayer.proj_calc_t2 = eventPlayer.proj_calc_d + eventPlayer.proj_calc_e
    if eventPlayer.proj_calc_t1 > eventPlayer.proj_calc_t2 and eventPlayer.proj_calc_t2 > 0:
        eventPlayer.proj_calc_t = eventPlayer.proj_calc_t2
    else:
        eventPlayer.proj_calc_t = eventPlayer.proj_calc_t1
    eventPlayer.aim_spot = eventPlayer.look_target.getEyePosition() + eventPlayer.look_target.getVelocity() * eventPlayer.proj_calc_t


def calc_arc_proj_lead():
    
    @Name "SUB: calc_arc_proj_lead (KJRR5P)"

    eventPlayer.proj_calc_a = eventPlayer.proj_speed ** 2 - dotProduct(eventPlayer.look_target.getVelocity(), eventPlayer.look_target.getVelocity())
    eventPlayer.proj_calc_b = dotProduct(eventPlayer.look_target.getVelocity(), eventPlayer.look_target.getEyePosition() - eventPlayer.getEyePosition())
    eventPlayer.proj_calc_c = dotProduct(eventPlayer.look_target.getEyePosition() - eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition() - eventPlayer.getEyePosition())
    eventPlayer.proj_calc_d = eventPlayer.proj_calc_b ** 2 + eventPlayer.proj_calc_a * eventPlayer.proj_calc_c
    if eventPlayer.proj_calc_d >= 0:
        eventPlayer.proj_calc_t = (eventPlayer.proj_calc_b + sqrt(eventPlayer.proj_calc_d)) / eventPlayer.proj_calc_a
        if eventPlayer.proj_calc_t < 0:
            eventPlayer.proj_calc_t = 0
    eventPlayer.aim_spot = eventPlayer.look_target.getEyePosition() + eventPlayer.look_target.getVelocity() * eventPlayer.proj_calc_t + 0.5 * vect(0, (216*(eventPlayer.proj_gravity/9.84))/eventPlayer.proj_speed, 0) * eventPlayer.proj_calc_t ** 2
    # This doesn't accurately adjust for delta vector, it just kinda works for most distances, errors are really noticeable long range. It seems to overestimate at close range and underestimate at long range.
    if eventPlayer.proj_delta != 0:
        eventPlayer.proj_delta_xz = distance(eventPlayer.look_target.getEyePosition(), eventPlayer.getEyePosition())
        eventPlayer.aim_spot = eventPlayer.aim_spot - vect(0,eventPlayer.proj_delta*eventPlayer.proj_delta_xz,0)


# Bot Pressure
rule "Bot Pressure: Set Pressure Bot":
    @Event eachPlayer
    @Team 1
    @Condition pressure_type != 0
    @Condition eventPlayer.menu_visible == false

    eventPlayer.pressure_target.apply_pressure = false
    eventPlayer.pressure_target.pressure_target = null
    eventPlayer.pressure_target = eventPlayer.look_target
    if eventPlayer.pressure_target.getCurrentHero() == Hero.MERCY:
        eventPlayer.pressure_target = eventPlayer.pressure_target.look_target
    eventPlayer.pressure_target.apply_pressure = true
    eventPlayer.pressure_target.pressure_target = eventPlayer
    wait(0.5, Wait.ABORT_WHEN_FALSE)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pressure: Toggle Off if not in los":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.apply_pressure == true
    @Condition len(player_list) == 1

    if getPlayersInRadius(eventPlayer.getPosition(), 200, Team.1, LosCheck.SURFACES) != eventPlayer.pressure_target:
        eventPlayer.apply_pressure = false
    wait(0.1)

    if RULE_CONDITION:
        goto RULE_START

rule "Bot Pressure: Reload after 2 seconds with no pressure":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.apply_pressure == false
    @Condition eventPlayer.getAmmo(0) < eventPlayer.getMaxAmmo(0)

    wait(2, Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Reload")
    eventPlayer.forceButtonPress(Button.RELOAD)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pressure: Toggle Off":
    @Event eachPlayer
    @Team 1
    @Condition (pressure_type == 0 or eventPlayer.menu_visible == true)

    eventPlayer.pressure_target.apply_pressure = false
    eventPlayer.pressure_target.pressure_target = null
    eventPlayer.pressure_target = null
    

rule "Bot Pressure: Set Pressure Off":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.apply_pressure == false

    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.stopForcingButton(Button.ABILITY_1)
    eventPlayer.stopForcingButton(Button.ABILITY_2)
    eventPlayer.stopForcingButton(Button.ULTIMATE)
    eventPlayer.ability_acc = 0
    eventPlayer.proj_type = 0
    if eventPlayer.getCurrentHero() != Hero.MERCY:
        set_default_facing()
    

rule "Bot Pressure: Look Offset":
    @Event eachPlayer
    @Team 2
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true

    if pressure_accuracy == 100 or random.randint(1,100) <= pressure_accuracy/log(pressure_accuracy + 1, 10):
        eventPlayer.look_vector = vect(0,0,0)
    else:
        # Read Target's velocity to determine direction of offset
        eventPlayer.stored_vect = eventPlayer.look_target.getVelocity()
        if eventPlayer.stored_vect.x > 0:
            eventPlayer.look_vector = vect(random.uniform(-0.25, 0.75),0,0)
        elif eventPlayer.stored_vect.x < 0:
            eventPlayer.look_vector = vect(random.uniform(-0.75, 0.25), random.uniform(-0.125, 0.125),0)
        else:
            eventPlayer.look_vector = vect(random.uniform(-0.50, 0.50), random.uniform(-0.125, 0.125),0)
        if eventPlayer.stored_vect.y > 0:
            eventPlayer.look_vector += vect(0,random.uniform(-0.100, 0.150),0)
        elif eventPlayer.stored_vect.y < 0:
            eventPlayer.look_vector += vect(0,random.uniform(-0.150, 0.100),0)
        else:
            eventPlayer.look_vector += vect(0,random.uniform(-0.125, 0.125),0)
        if eventPlayer.stored_vect.z > 0:
            eventPlayer.look_vector += vect(0,0,random.uniform(-0.25, 0.75))
        elif eventPlayer.stored_vect.z < 0:
            eventPlayer.look_vector += vect(0,0,random.uniform(-0.75, 0.25))
        else:
            eventPlayer.look_vector += vect(0,0,random.uniform(-0.50, 0.50))
        eventPlayer.look_vector *= 2 * log(101 - pressure_accuracy, 10) * eventPlayer.ability_acc
    chase(eventPlayer.look_offset, eventPlayer.look_vector, duration=0.5, ChaseReeval.NONE)
    #OLD: eventPlayer.look_offset = log(100 - pressure_accuracy, 10) * eventPlayer.ability_acc * vect(random.uniform(-1, 1), random.uniform(-0.25, 0.25), random.uniform(-1, 1))
    wait(0.5)

    if RULE_CONDITION:
        goto RULE_START 

rule "Bot Pressure: Unkillable Bot Enable":
    @Event eachPlayer
    @Team 2
    @Condition pressure_type == 2
    
    eventPlayer.setStatusEffect(eventPlayer, Status.UNKILLABLE, 9999)


rule "Bot Pressure: Unkillable Bot Disable":
    @Event eachPlayer
    @Team 2
    @Condition pressure_type != 2
    
    eventPlayer.clearStatusEffect(Status.UNKILLABLE)


rule "Bot Pressure: Unkillable Bot Took Damage":
    @Event playerTookDamage
    @Team 2
    @Condition pressure_type == 2
    
    wait(0.25)
    eventPlayer.setHealth(eventPlayer.getMaxHealth())


# Speed Mode
rule "Speed Mode: Kill Action (JPYHG)":
    @Event playerDealtFinalBlow
    @Team 1
    @Condition speed_mode_enabled == true
    
    speed_multi += speed_increment
    if speed_multi > speed_score:
        speed_score = speed_multi
    speed_mode_timer_reset()


rule "Speed Mode: Timer Action (JPYHG)":
    @Condition speed_timer == 0
    @Condition speed_mode_enabled == true

    if (speed_multi - speed_increment) > speed_base:
        speed_multi -= speed_decrement
    else:
        speed_multi = speed_base
    speed_mode_timer_reset()
    

rule "Speed Mode: Hack Lucio (JPYHG)":
    @Event eachPlayer
    @Team 2
    @Hero lucio
    @Condition eventPlayer.isAlive() == true
    @Condition speed_mode_enabled == true

    eventPlayer.setStatusEffect(eventPlayer,Status.HACKED,9999)


rule "Speed Mode: Clear Hack Lucio (JPYHG)":
    @Event eachPlayer
    @Team 2
    @Hero lucio
    @Condition eventPlayer.isDead() == true
    @Condition eventPlayer.hasStatusEffect(Status.HACKED)

    eventPlayer.clearStatusEffect(Status.HACKED)


def speed_mode_timer_reset():
    @Name "SUB: speed_mode_timer_reset (JPYHG)"
    
    getPlayers(Team.2).setMoveSpeed(speed_multi)
    speed_timer = speed_max_time
    chase(speed_timer, 0, rate=1, ChaseReeval.NONE)


# Player Ability Tracking
rule "Player Ability Usage Tracker - Primary":
    @Event eachPlayer
    @Team 1
    @Condition bots_react == true
    @Condition eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) == true
    @Condition eventPlayer.player_ability_lock == 0
    
    eventPlayer.player_ability_lock = 1
    eventPlayer.player_react_time   = eventPlayer.react_matrix[0] * bot_reactivity
    eventPlayer.player_used_eat_cd   = eventPlayer.eat_cd_matrix[0] * bot_reactivity
    eventPlayer.player_used_block_cd = eventPlayer.block_cd_matrix[0] * bot_reactivity
    eventPlayer.player_used_dodge_cd = eventPlayer.dodge_cd_matrix[0] * bot_reactivity
    eventPlayer.player_used_stun_cd  = eventPlayer.stun_cd_matrix[0] * bot_reactivity
    wait(eventPlayer.player_react_time)
    eventPlayer.player_ability_lock = 0
    eventPlayer.player_react_time   = 0
    eventPlayer.player_used_eat_cd   = 0
    eventPlayer.player_used_block_cd = 0
    eventPlayer.player_used_dodge_cd = 0
    eventPlayer.player_used_stun_cd  = 0

    if RULE_CONDITION:
        goto RULE_START 

rule "Player Ability Usage Tracker - Secondary":
    @Event eachPlayer
    @Team 1
    @Condition bots_react == true
    @Condition eventPlayer.isHoldingButton(Button.SECONDARY_FIRE) == true
    @Condition eventPlayer.player_ability_lock < 2

    eventPlayer.player_ability_lock = 2
    eventPlayer.ability_react_chance = random.uniform(0,1)
    eventPlayer.player_react_time   = eventPlayer.react_matrix[1] * bot_reactivity
    eventPlayer.player_used_eat_cd = eventPlayer.eat_cd_matrix[1] * bot_reactivity
    eventPlayer.player_used_block_cd = eventPlayer.block_cd_matrix[1] * bot_reactivity
    eventPlayer.player_used_dodge_cd = eventPlayer.dodge_cd_matrix[1] * bot_reactivity
    eventPlayer.player_used_stun_cd  = eventPlayer.stun_cd_matrix[1] * bot_reactivity
    wait(eventPlayer.player_react_time)
    eventPlayer.player_ability_lock = 0
    eventPlayer.player_react_time   = 0
    eventPlayer.player_used_eat_cd = 0
    eventPlayer.player_used_block_cd = 0
    eventPlayer.player_used_dodge_cd = 0
    eventPlayer.player_used_stun_cd  = 0

    if RULE_CONDITION:
        goto RULE_START 

rule "Player Ability Usage Tracker - Ability 1":
    @Event eachPlayer
    @Team 1
    @Condition bots_react == true
    @Condition eventPlayer.isHoldingButton(Button.ABILITY_1) == true
    @Condition eventPlayer.player_ability_lock < 3

    eventPlayer.player_ability_lock = 3
    eventPlayer.ability_react_chance = random.uniform(0,1)
    eventPlayer.player_react_time   = eventPlayer.react_matrix[2] * bot_reactivity
    eventPlayer.player_used_eat_cd   = eventPlayer.eat_cd_matrix[2] * bot_reactivity
    eventPlayer.player_used_block_cd = eventPlayer.block_cd_matrix[2] * bot_reactivity
    eventPlayer.player_used_dodge_cd = eventPlayer.dodge_cd_matrix[2] * bot_reactivity
    eventPlayer.player_used_stun_cd  = eventPlayer.stun_cd_matrix[2] * bot_reactivity
    wait(eventPlayer.player_react_time)
    eventPlayer.player_ability_lock = 0
    eventPlayer.player_react_time   = 0
    eventPlayer.player_used_eat_cd = 0
    eventPlayer.player_used_block_cd = 0
    eventPlayer.player_used_dodge_cd = 0
    eventPlayer.player_used_stun_cd  = 0

    if RULE_CONDITION:
        goto RULE_START 


rule "Player Ability Usage Tracker - Ability 2":
    @Event eachPlayer
    @Team 1
    @Condition bots_react == true
    @Condition eventPlayer.isHoldingButton(Button.ABILITY_2) == true
    @Condition eventPlayer.player_ability_lock < 4

    eventPlayer.player_ability_lock = 4
    eventPlayer.ability_react_chance = random.uniform(0,1)
    eventPlayer.player_react_time   = eventPlayer.react_matrix[3] * bot_reactivity
    eventPlayer.player_used_eat_cd = eventPlayer.eat_cd_matrix[3] * bot_reactivity
    eventPlayer.player_used_block_cd = eventPlayer.block_cd_matrix[3] * bot_reactivity
    eventPlayer.player_used_dodge_cd = eventPlayer.dodge_cd_matrix[3] * bot_reactivity
    eventPlayer.player_used_stun_cd  = eventPlayer.stun_cd_matrix[3] * bot_reactivity
    wait(eventPlayer.player_react_time)
    eventPlayer.player_ability_lock = 0
    eventPlayer.player_react_time = 0
    eventPlayer.player_used_eat_cd = 0
    eventPlayer.player_used_block_cd = 0
    eventPlayer.player_used_dodge_cd = 0
    eventPlayer.player_used_stun_cd  = 0

    if RULE_CONDITION:
        goto RULE_START 

    
rule "Player Ability Usage Tracker - Ultimate":
    @Event eachPlayer
    @Team 1
    @Condition bots_react == true
    @Condition eventPlayer.isHoldingButton(Button.ULTIMATE) == true
    @Condition eventPlayer.player_ability_lock < 5

    eventPlayer.player_ability_lock = 5
    eventPlayer.ability_react_chance = random.uniform(0,1)
    eventPlayer.player_react_time = eventPlayer.react_matrix[4] * bot_reactivity
    eventPlayer.player_used_eat_cd = eventPlayer.eat_cd_matrix[4] * bot_reactivity
    eventPlayer.player_used_block_cd = eventPlayer.block_cd_matrix[4] * bot_reactivity
    eventPlayer.player_used_dodge_cd = eventPlayer.dodge_cd_matrix[4] * bot_reactivity
    eventPlayer.player_used_stun_cd  = eventPlayer.stun_cd_matrix[4] * bot_reactivity
    wait(eventPlayer.player_react_time)
    eventPlayer.player_ability_lock = 0
    eventPlayer.player_react_time = 0
    eventPlayer.player_used_eat_cd = 0
    eventPlayer.player_used_block_cd = 0
    eventPlayer.player_used_dodge_cd = 0
    eventPlayer.player_used_stun_cd = 0

    if RULE_CONDITION:
        goto RULE_START 


# Bot Abilities
## Tank Bot Abilities
### D.va Bot Abilities
rule "Bot Abilities: Dva Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero dva
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.ability_acc = 3
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Dva Secondary Random (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero dva
    @Condition bots_use_abilities == true
    @Condition bot_behavior[0] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getMaxHealth() != 150
    @Condition eventPlayer.getNormalizedHealth() != 1
    @Condition eventPlayer.bot_ability_lock[1] == false

    wait(random.uniform(3, 7) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[1] = true
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(0.5)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    wait(1 / ability_freq)
    eventPlayer.bot_ability_lock[1] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Dva Secondary (BB1 + Re)":
    @Event eachPlayer
    @Team 2
    @Hero dva
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[0] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getMaxHealth() != 150
    @Condition eventPlayer.bot_ability_lock[1] == false
    @Condition eventPlayer.look_target.player_used_eat_cd > 0
    @Condition eventPlayer.look_target.player_used_eat_cd >= eventPlayer.look_target.ability_react_chance 

    wait(random.uniform(0,0.5), Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[1] = true
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    if eventPlayer.getNormalizedHealth() <= 0.4 or eventPlayer.look_target.player_react_time >= 3:
        wait(3)
    else:
        wait(eventPlayer.look_target.player_react_time)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    wait(1 / ability_freq)
    eventPlayer.bot_ability_lock[1] = false
    if RULE_CONDITION:
        goto RULE_START
    

rule "Bot Abilities: Dva Ability 1 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero dva
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getMaxHealth() != 150
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.look_target.player_used_dodge_cd > 0
    @Condition eventPlayer.look_target.player_used_eat_cd == 0

    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    eventPlayer.startFacing(vect(eventPlayer.getEyePosition().x + random.uniform(-20,20), eventPlayer.getEyePosition().y + random.uniform(-5,20), eventPlayer.getEyePosition().z + random.uniform(-20,20)), 3000, Relativity.TO_WORLD, FacingReeval.NONE)
    if eventPlayer.look_target.player_react_time < 2:
        wait(eventPlayer.look_target.player_react_time)
    else:
        wait(2)
    set_default_facing()
    wait(4 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Dva Ability 1 (H + P)":
    @Event eachPlayer
    @Team 2
    @Hero dva
    @Condition bots_use_abilities == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getMaxHealth() != 150
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.look_target.player_used_dodge_cd == 0
        
    if eventPlayer.getNormalizedHealth() > 0.5:
        wait(random.uniform(1,5 / ability_freq), Wait.ABORT_WHEN_FALSE)
        eventPlayer.bot_ability_lock[2] = true
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    else:
        wait(1 / ability_freq, Wait.ABORT_WHEN_FALSE)
        eventPlayer.bot_ability_lock[2] = true
        eventPlayer.forceButtonPress(Button.ABILITY_1)
        while eventPlayer.isUsingAbility1():
            eventPlayer.startFacing(vect(eventPlayer.getEyePosition().x + random.uniform(-100,100), eventPlayer.getEyePosition().y + random.uniform(-5,20), eventPlayer.getEyePosition().z + random.uniform(-100,100)), 3000, Relativity.TO_WORLD, FacingReeval.NONE)
            wait(random.uniform(0.2,0.5))
        set_default_facing()
    wait(4 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Dva Ability 2 (P)":
    @Event eachPlayer
    @Team 2
    @Hero dva
    @Condition bots_use_abilities == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.ability_acc = 2
    wait(random.uniform(0,5),Wait.ABORT_WHEN_FALSE)
    eventPlayer.proj_type = 4
    set_proj_facing()
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(2)
    eventPlayer.proj_type = 0
    set_default_facing()
    wait(7 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Baby Dva Ultimate (All)":
    @Event eachPlayer
    @Team 2
    @Hero dva
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getMaxHealth() == 150
    @Condition eventPlayer.bot_ability_lock[4] == false

    wait(5 / ult_freq)
    if random.randint(0,9) / ult_freq < 5:
        eventPlayer.bot_ability_lock[4] = true
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        eventPlayer.bot_ability_lock[4] = false
    
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Dva Ultimate Random (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero dva
    @Condition bots_use_abilities == true
    @Condition bot_behavior[0] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getMaxHealth() != 150
    @Condition eventPlayer.bot_ability_lock[4] == false

    wait(10 / ult_freq)
    if random.randint(0,9) / ult_freq < 3:
        dva_ult()

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Dva Ultimate for Remech (BB2 + P + H)":
    @Event eachPlayer
    @Team 2
    @Hero dva
    @Condition bots_use_abilities == true
    @Condition bot_behavior[0] >= 2
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.bot_ability_lock[4] == false
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getMaxHealth() != 150
    @Condition eventPlayer.getNormalizedHealth() < 0.25
    
    if random.randint(0,9) / ult_freq < 3:
        dva_ult()


def dva_ult():
    @Name "SUB: Dva Ultimate"

    eventPlayer.bot_ability_lock[4] = true
    eventPlayer.forceButtonPress(Button.ULTIMATE)
    wait(5)
    eventPlayer.forceButtonPress(Button.ULTIMATE)
    wait(10 / ult_freq)
    eventPlayer.bot_ability_lock[4] = false


### Doomfist Bot Abilities
rule "Bot Abilities: Doomfist Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero doomfist
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isHoldingButton(Button.SECONDARY_FIRE) == false

    eventPlayer.ability_acc = 2
    eventPlayer.proj_type = 1
    set_proj_facing()
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
    @Condition bots_use_abilities == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[1] == false

    wait(random.uniform(5,10) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.ability_acc = 2
    eventPlayer.proj_type = 2
    eventPlayer.bot_ability_lock[1] = true
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    if distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) > 15:
        wait(random.uniform(1,1.6))
    else:
        wait(random.uniform(0.2,1.6))
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.proj_type = 1
    wait(4 / ability_freq)
    eventPlayer.bot_ability_lock[1] = false
    
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Doomfist Secondary (Rs + P)":
    @Event eachPlayer
    @Team 2
    @Hero doomfist
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[1] == false
    @Condition eventPlayer.look_target.player_used_stun_cd > 0
    @Condition eventPlayer.look_target.player_used_stun_cd >= eventPlayer.look_target.ability_react_chance 
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 15

    eventPlayer.ability_acc = 2
    eventPlayer.proj_type = 2
    eventPlayer.bot_ability_lock[1] = true
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) / 15)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.proj_type = 1
    wait(4 / ability_freq)
    eventPlayer.bot_ability_lock[1] = false
    wait(2 / ability_freq)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Doomfist Ability 1 (P)":
    @Event eachPlayer
    @Team 2
    @Hero doomfist
    @Condition bots_use_abilities == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false

    wait(random.uniform(5,10) / ability_freq,Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.ability_acc = 2
    eventPlayer.proj_type = 3
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    eventPlayer.proj_type = 1
    wait(7 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Doomfist Ability 1 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero doomfist
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.look_target.player_used_stun_cd == 0
    @Condition eventPlayer.look_target.player_used_block_cd == 0
    @Condition eventPlayer.look_target.player_used_dodge_cd > 0
    @Condition eventPlayer.look_target.player_used_dodge_cd >= eventPlayer.look_target.ability_react_chance

    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.ability_acc = 2
    eventPlayer.startFacing(vect(eventPlayer.getEyePosition().x + random.uniform(-100,100), eventPlayer.getEyePosition().y + random.uniform(-5,20), eventPlayer.getEyePosition().z + random.uniform(-100,100)), 3000, Relativity.TO_WORLD, FacingReeval.NONE)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.5)
    if eventPlayer.apply_pressure == true:
        set_proj_facing()
    else:
        set_default_facing()
    wait(6.5 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Doomfist Ability 2 (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero doomfist
    @Condition bots_use_abilities == true
    @Condition bot_behavior[1] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false
    

    wait(random.uniform(5,10) / ability_freq)
    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(7 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Doomfist Ability 2 (BB1 + Rb)":
    @Event eachPlayer
    @Team 2
    @Hero doomfist
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[1] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false
    @Condition eventPlayer.look_target.player_used_block_cd > 0
    @Condition eventPlayer.look_target.player_used_stun_cd == 0
    @Condition eventPlayer.look_target.player_used_block_cd >= eventPlayer.look_target.ability_react_chance

    if eventPlayer.getNormalizedHealth() > 0.25:
        wait(random.uniform(0,2) / ability_freq)
    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(7 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Doomfist Ultimate (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero doomfist
    @Condition bots_use_abilities == true
    @Condition bot_behavior[1] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[4] == false

    wait(10 / ult_freq)
    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 3:
        #smallMessage(hostPlayer, "Debug: Doomfist ult rand")
        doomfist_ult()

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Doomfist Ultimate (BB2 + H)":
    @Event eachPlayer
    @Team 2
    @Hero doomfist
    @Condition bots_use_abilities == true
    @Condition bot_behavior[1] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.25
    @Condition eventPlayer.bot_ability_lock[4] == false

    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 3:
        #smallMessage(hostPlayer, "Debug: Doomfist ult H")
        doomfist_ult()


def doomfist_ult():
    @Name "SUB: Doomfist Ultimate"

    eventPlayer.bot_ability_lock[4] = true
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.forceButtonPress(Button.ULTIMATE)
    wait(1)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    wait(10 / ult_freq)
    eventPlayer.bot_ability_lock[4] = false


### Junker Queen Bot Abilities
rule "Bot Abilities: Junker Queen Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero junkerQueen
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.ability_acc = 3
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Junker Queen Secondary (P)":
    @Event eachPlayer
    @Team 2
    @Hero junkerQueen
    @Condition bots_use_abilities == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.ability_acc = 2
    wait(random.uniform(1,5) / ability_freq)
    eventPlayer.proj_type = 2
    set_proj_facing()
    wait(0.1)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    wait(0.2)
    eventPlayer.proj_type = 0
    set_default_facing()
    wait(random.uniform(0.5,2))
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    wait(5 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Junker Queen Ability 1 Random (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero junkerQueen
    @Condition bots_use_abilities == true
    @Condition bot_behavior[2] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() != 1
    @Condition eventPlayer.bot_ability_lock[2] == false
    
    wait(random.uniform(0, 20) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(19 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false
    
    if RULE_CONDITION:
        goto RULE_START
        
rule "Bot Abilities: Junker Queen Ability 1 (R + BB1)":
    @Event eachPlayer
    @Team 2
    @Hero junkerQueen
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[2] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.25
    @Condition eventPlayer.bot_ability_lock[2] == false

    
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(19 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Junker Queen Ability 1 (BB1 + Rd + Rb)":
    @Event eachPlayer
    @Team 2
    @Hero junkerQueen
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[2] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.look_target.player_used_block_cd > 0
    @Condition eventPlayer.look_target.player_used_block_cd >= eventPlayer.look_target.ability_react_chance * 4
    @Condition eventPlayer.look_target.player_used_dodge_cd > 0
    @Condition eventPlayer.look_target.player_used_dodge_cd >= eventPlayer.look_target.ability_react_chance * 4


    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(12 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Junker Queen Ability 2 (P)":
    @Event eachPlayer
    @Team 2
    @Hero junkerQueen
    @Condition bots_use_abilities == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 7

    eventPlayer.ability_acc = 2
    eventPlayer.mvmt_type_lock = true
    eventPlayer.mvmt_type = alt_mvmt_array[2]
    wait(random.uniform(0,3))
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(3)
    eventPlayer.mvmt_type = default_mvmt_type
    eventPlayer.mvmt_type_lock = false
    
    wait(5 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Junker Queen Ultimate (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero junkerQueen
    @Condition bots_use_abilities == true
    @Condition bot_behavior[2] >= 1
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[4] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 25

    wait(10 / ult_freq)
    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 3:
        eventPlayer.bot_ability_lock[4] = true
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(10 / ult_freq)
        eventPlayer.bot_ability_lock[4] = false
    if RULE_CONDITION:
        goto RULE_START

rule "Bot Abilities: Junker Queen Ultimate (BB2 + R)":
    @Event eachPlayer
    @Team 2
    @Hero junkerQueen
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[2] >= 1
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.25
    @Condition eventPlayer.bot_ability_lock[4] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 25

    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 3:
        eventPlayer.bot_ability_lock[4] = true
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(10 / ult_freq)
        eventPlayer.bot_ability_lock[4] = false


### Orisa Bot Abilities
rule "Bot Abilities: Orisa Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero orisa
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isUsingUltimate() == false

    eventPlayer.proj_type = 1
    set_proj_facing()
    eventPlayer.ability_acc = 2
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Orisa Secondary (P)":
    @Event eachPlayer
    @Team 2
    @Hero orisa
    @Condition bots_use_abilities == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[1] == false

    wait(random.uniform(4,7) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.proj_type = 2
    wait(0.1)
    eventPlayer.bot_ability_lock[1] = true
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    wait(0.1)
    eventPlayer.proj_type = 1
    wait(5.9 / ability_freq)
    eventPlayer.bot_ability_lock[1] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Orisa Secondary (P + Rs)":
    @Event eachPlayer
    @Team 2
    @Hero orisa
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[1] == false
    @Condition eventPlayer.look_target.player_used_stun_cd > 0
    @Condition eventPlayer.look_target.player_used_stun_cd >= eventPlayer.look_target.ability_react_chance 


    eventPlayer.proj_type = 2
    wait(0.1)
    eventPlayer.bot_ability_lock[1] = true
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    wait(0.1)
    eventPlayer.proj_type = 1
    wait(5.9 / ability_freq)
    eventPlayer.bot_ability_lock[1] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Orisa Ability 1 (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero orisa
    
    @Condition bots_use_abilities == true
    @Condition bot_behavior[3] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    
    wait(random.uniform(10, 20) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(12 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false
    
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Orisa Ability 1 (BB1 + R)":
    @Event eachPlayer
    @Team 2
    @Hero orisa
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[3] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.5
    @Condition eventPlayer.bot_ability_lock[2] == false
    
    eventPlayer.general_randomizer = random.randint(0,1)
    if eventPlayer.general_randomizer == 0:
        eventPlayer.bot_ability_lock[2] = true
        eventPlayer.forceButtonPress(Button.ABILITY_1)
        wait(12 / ability_freq)
        eventPlayer.bot_ability_lock[2] = false


rule "Bot Abilities: Orisa Ability 1 (BB1 + Rb)":
    @Event eachPlayer
    @Team 2
    @Hero orisa

    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[3] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.look_target.player_used_block_cd > 0
    @Condition eventPlayer.look_target.player_used_block_cd >= eventPlayer.look_target.ability_react_chance

    
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.bot_ability_signal[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(12 / ability_freq)
    eventPlayer.bot_ability_signal[2] = false
    eventPlayer.bot_ability_lock[2] = false
    # Randomize Time Until Retriggerable
    wait(random.uniform(1,5) / ability_freq)
    
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Orisa Ability 2 (BB1 + Re)":
    @Event eachPlayer
    @Team 2
    @Hero orisa
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[3] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false
    @Condition eventPlayer.look_target.player_used_eat_cd > 0
    @Condition eventPlayer.look_target.player_used_eat_cd >= eventPlayer.look_target.ability_react_chance 

    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(7 / ability_freq)
    wait(random.uniform(1,5) / ability_freq)
    eventPlayer.bot_ability_lock[3] = false
    
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Orisa Ability 2 (BB1 + Rb)":
    @Event eachPlayer
    @Team 2
    @Hero orisa
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[3] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false
    @Condition eventPlayer.bot_ability_signal[2] == true
    @Condition eventPlayer.look_target.player_used_block_cd > 0
    @Condition eventPlayer.look_target.player_used_block_cd >= eventPlayer.look_target.ability_react_chance * 4

    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(7 / ability_freq)
    wait(random.uniform(1,5) / ability_freq)
    eventPlayer.bot_ability_lock[3] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Orisa Ultimate (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero orisa
    @Condition bots_use_abilities == true
    @Condition bot_behavior[3] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[4] == false

    wait(10 / ult_freq)
    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 3:
        eventPlayer.bot_ability_lock[4] = true
        eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(random.uniform(1,5))
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
        wait(10 / ult_freq)
        eventPlayer.bot_ability_lock[4] = false
        
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Orisa Ultimate (BB2 + R)":
    @Event eachPlayer
    @Team 2
    @Hero orisa
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[3] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.25
    @Condition eventPlayer.bot_ability_lock[4] == false

    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 3:
        eventPlayer.bot_ability_lock[4] = true
        eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(random.uniform(1,5))
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
        wait(10 / ult_freq)
        eventPlayer.bot_ability_lock[4] = false


### Ramattra Bot Abilities
rule "Bot Abilities: Ramattra Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero ramattra
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.proj_type = 1
    set_proj_facing()
    eventPlayer.ability_acc = 2
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START

rule "Bot Abilities: Ramattra Secondary Shield (BB2 + Rb)":
    @Event eachPlayer
    @Team 2
    @Hero ramattra
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[4] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[1] == false
    @Condition eventPlayer.look_target.player_used_block_cd > 0
    @Condition eventPlayer.look_target.player_used_block_cd >= eventPlayer.look_target.ability_react_chance

    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), sorted(player_list, lambda player: distance(eventPlayer.getEyePosition(), player.getEyePosition()))[0].getPosition() - vect(0,2,0)), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(0.25)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    if eventPlayer.apply_pressure == true:
        set_proj_facing()
    else:
        set_default_facing()
    wait(12 / ability_freq)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ramattra Secondary Block (BB2 + R)":
    @Event eachPlayer
    @Team 2
    @Hero ramattra
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[4] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[1] == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.25

    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(4)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ramattra Secondary Block (BB2 + Rb)":
    @Event eachPlayer
    @Team 2
    @Hero ramattra
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[4] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[1] == true
    @Condition eventPlayer.look_target.player_used_block_cd > 0
    @Condition eventPlayer.look_target.player_used_block_cd >= eventPlayer.look_target.ability_react_chance * 2

    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(eventPlayer.look_target.player_react_time, Wait.ABORT_WHEN_FALSE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ramattra Ability 1 (BB1 + R)":
    @Event eachPlayer
    @Team 2
    @Hero ramattra
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[4] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.getNormalizedHealth() <= 0.50

    wait(random.uniform(0,5) / ability_freq)
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    eventPlayer.bot_ability_lock[1] = true
    wait(8 / ability_freq)
    eventPlayer.bot_ability_lock[1] = false
    wait(8 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ramattra Ability 1 (BB1 + R)":
    @Event eachPlayer
    @Team 2
    @Hero ramattra
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[4] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 10

    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    eventPlayer.bot_ability_lock[1] = true
    wait(8 / ability_freq)
    eventPlayer.bot_ability_lock[1] = false
    wait(8 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ramattra Ability 2 (BB2 + P)":
    @Event eachPlayer
    @Team 2
    @Hero ramattra
    @Condition bots_use_abilities == true
    @Condition bot_behavior[4] >= 2
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true

    wait(random.uniform(0,10) / ability_freq)
    eventPlayer.proj_type = 4
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.1)
    eventPlayer.proj_type = 1
    wait(12 / ability_freq)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ramattra Ultimate (BB3)":
    @Event eachPlayer
    @Team 2
    @Hero ramattra
    @Condition bots_use_abilities == true
    @Condition bot_behavior[4] >= 3
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[4] == false

    wait(10 / ult_freq)
    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 3:
        eventPlayer.bot_ability_lock[4] = true
        eventPlayer.bot_ability_lock[1] = true
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        while eventPlayer.isUsingUltimate():
            wait(1)
        eventPlayer.bot_ability_lock[1] = false
        wait(10 / ult_freq)
        eventPlayer.bot_ability_lock[4] = false

    if RULE_CONDITION:
        goto RULE_START

        
rule "Bot Abilities: Ramattra Ultimate (BB3 + R)":
    @Event eachPlayer
    @Team 2
    @Hero ramattra
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[4] >= 3
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[4] == false
    @Condition eventPlayer.bot_ability_lock[2] == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.50

    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 3:
        eventPlayer.bot_ability_lock[4] = true
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(20 / ability_freq)
        eventPlayer.bot_ability_lock[4] = false


### Reinhardt Bot Abilities
rule "Bot Abilities: Reinhardt Primary + Ability 2 (Pn)":
    @Event eachPlayer
    @Team 2
    @Hero reinhardt
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.apply_pressure == false
    
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(random.uniform(3, 6))
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    wait(3 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Reinhardt Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero reinhardt
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 7
    
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(random.uniform(2,5))
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Reinhardt Secondary (BB1 + Rb)":
    @Event eachPlayer
    @Team 2
    @Hero reinhardt
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[5] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.look_target.player_used_block_cd > 0
    @Condition eventPlayer.look_target.player_used_block_cd >= eventPlayer.look_target.ability_react_chance 

    if eventPlayer.isUsingAbility1():
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    if eventPlayer.getNormalizedHealth() <= 0.25:
        wait(eventPlayer.look_target.player_react_time * 4)
    else:
        wait(eventPlayer.look_target.player_react_time * 2)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    wait(random.uniform(0.5,2) / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Reinhardt Ability 1 (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero reinhardt
    @Condition bots_use_abilities == true
    @Condition bot_behavior[5] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() != 1
    @Condition eventPlayer.bot_ability_lock[2] == false
    
    wait(random.uniform(5, 10) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(0.75, 3))
    if eventPlayer.isUsingAbility1():
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(7 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Reinhardt Ability 1 (BB1 + P)":
    @Event eachPlayer
    @Team 2
    @Hero reinhardt
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[5] >= 1
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) > 7 
    
    wait(random.uniform(0, 5) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.mvmt_type_lock = true
    eventPlayer.mvmt_type = alt_mvmt_array[2]
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    eventPlayer.general_randomizer = random.uniform(0,1)
    if eventPlayer.general_randomizer >= 0.80:
        wait(distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) / 10)
    else:
        wait(3)
    if eventPlayer.isUsingAbility1():
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    eventPlayer.general_randomizer = random.uniform(1,7)
    wait(eventPlayer.general_randomizer)
    eventPlayer.mvmt_type = default_mvmt_type
    eventPlayer.mvmt_type_lock = false
    wait((7 - eventPlayer.general_randomizer) / ability_freq)
    eventPlayer.bot_ability_lock[2] = false
    wait(2)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Reinhardt Ability 2 (P)":
    @Event eachPlayer
    @Team 2
    @Hero reinhardt
    @Condition bots_use_abilities == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    
    wait(random.uniform(0, 3) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.ability_acc = 2
    eventPlayer.proj_type = 4
    set_proj_facing()
        eventPlayer.forceButtonPress(Button.ABILITY_2)
        eventPlayer.general_randomizer = random.uniform(1,12)
        wait(eventPlayer.general_randomizer / ability_freq)
        eventPlayer.forceButtonPress(Button.ABILITY_2)
        wait((12 - eventPlayer.general_randomizer) / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Reinhardt Ultimate (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero reinhardt
    @Condition bots_use_abilities == true
    @Condition bot_behavior[5] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[4] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 20


    wait(10 / ult_freq)
    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 3:
        if eventPlayer.apply_pressure == true:
            set_default_facing()
        eventPlayer.bot_ability_lock[4] = true
        wait(0.1)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        eventPlayer.bot_ability_lock[4] = false
        wait(10 / ult_freq)
        
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Reinhardt Ultimate (BB1 + R)":
    @Event eachPlayer
    @Team 2
    @Hero reinhardt
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[5] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.65
    @Condition eventPlayer.bot_ability_lock[4] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 20

    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 4:
        if eventPlayer.apply_pressure == true:
            set_default_facing()
        eventPlayer.setUltCharge(100)
        wait(0.1)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        if eventPlayer.apply_pressure == true:
            set_proj_facing()
        wait(10 / ult_freq)
        
    if RULE_CONDITION:
        goto RULE_START


### Roadhog Bot Abilities
rule "Bot Abilities: Roadhog Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero roadhog
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) <= 8

    eventPlayer.ability_acc = 2
    eventPlayer.proj_type = 1
    set_proj_facing()
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Roadhog Secondary (P)":
    @Event eachPlayer
    @Team 2
    @Hero roadhog
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[1] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) > 8

    eventPlayer.ability_acc = 2
    eventPlayer.proj_type = 2
    set_proj_facing()
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Roadhog Ability 1 (P + R)":
    @Event eachPlayer
    @Team 2
    @Hero roadhog
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 20
    

    wait(random.uniform(0, 5) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.proj_type = 4
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    if distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) <= 8:
        eventPlayer.proj_type = 1
    else:
        eventPlayer.proj_type = 2
    wait(6 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Roadhog Ability 2 (R)":
    @Event eachPlayer
    @Team 2
    @Hero roadhog
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[3] >= 1
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 50
    
    wait(random.uniform(1, 5) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(8 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Roadhog Ultimate (BB2 + P)":
    @Event eachPlayer
    @Team 2
    @Hero roadhog
    @Condition bots_use_abilities == true
    @Condition bot_behavior[3] >= 2
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[4] == false

    wait(10 / ult_freq)
    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 3:
        eventPlayer.bot_ability_lock[4] = true
        eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
        set_default_facing()
        eventPlayer.bot_ability_lock[1] = true
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
        wait(8)
        set_proj_facing()
        eventPlayer.bot_ability_lock[1] = false
        wait(10 / ult_freq)
        eventPlayer.bot_ability_lock[4] = false
        
    if RULE_CONDITION:
        goto RULE_START


### Sigma Bot Abilities
rule "Bot Abilities: Sigma Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero sigma
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.ability_acc = 2
    eventPlayer.proj_type = 1
    set_proj_facing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sigma Secondary (BB1 + Rb)":
    @Event eachPlayer
    @Team 2
    @Hero sigma
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[7] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[1] == false
    @Condition eventPlayer.look_target.player_used_block_cd > 0
    @Condition (eventPlayer.look_target.player_used_eat_cd == 0 or eventPlayer.bot_ability_signal[2] == true)
    @Condition eventPlayer.look_target.player_used_block_cd >= eventPlayer.look_target.ability_react_chance 
    
    eventPlayer.bot_ability_lock[1] = true
    #smallMessage(hostPlayer, "Debug: Sig Shield")
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.general_randomizer = random.randint(0,1)
    if eventPlayer.general_randomizer == 0:
        wait(distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) / 25)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.bot_ability_lock[1] = false
    wait(eventPlayer.look_target.player_react_time * 1.5)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(0.1)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    wait(random.uniform(2,5) / ability_freq)
    if RULE_CONDITION:
        goto RULE_START



rule "Bot Abilities: Sigma Ability 1 (BB1 + Re)":
    @Event eachPlayer
    @Team 2
    @Hero sigma
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[7] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[1] == false
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.look_target.player_used_eat_cd > 0
    @Condition eventPlayer.look_target.player_used_eat_cd >= eventPlayer.look_target.ability_react_chance 
    
    wait(random.uniform(0,0.5))
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(2)
    eventPlayer.bot_ability_signal[2] = true 
    wait(12 / ability_freq)
    eventPlayer.bot_ability_signal[2] = false
    wait(random.uniform(1,5) / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sigma Ability 2 (Rs + P)":
    @Event eachPlayer
    @Team 2
    @Hero sigma
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false
    @Condition eventPlayer.look_target.player_used_stun_cd > 0
    @Condition eventPlayer.look_target.player_used_stun_cd >= eventPlayer.look_target.ability_react_chance 
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 20
    
    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.proj_type = 4
    set_proj_facing()
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    eventPlayer.proj_type = 1
    set_proj_facing()    
    wait(10 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sigma Ability 2 Random (P)":
    @Event eachPlayer
    @Team 2
    @Hero sigma
    @Condition bots_use_abilities == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 20
    
    wait(random.uniform(5, 10) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.proj_type = 4
    set_proj_facing()
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    eventPlayer.proj_type = 1
    set_proj_facing()    
    wait(10 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false
    if RULE_CONDITION:
        goto RULE_START
 

rule "Bot Abilities: Sigma Ultimate (Default)":
    @Event eachPlayer
    @Team 2
    @Hero sigma
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() != 1

    wait(10 / ult_freq)
    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 3:
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        if eventPlayer.isUsingUltimate() == true:
            eventPlayer.startForcingButton(Button.JUMP)
            if eventPlayer.apply_pressure == true:
                set_default_facing()
            else:
                eventPlayer.startFacing(eventPlayer.spawn_pt + vect(random.uniform(-10,10),random.uniform(-10,0),random.uniform(-10,10)), default_turn_rate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
            wait(random.uniform(0.5,3.5))
            eventPlayer.stopForcingButton(Button.JUMP)
            eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
            if eventPlayer.apply_pressure == true:
                set_proj_facing()
            else:
                set_default_facing()
            eventPlayer.general_randomizer = random.randint(0,3)
            if eventPlayer.general_randomizer == 0:
                eventPlayer.startForcingButton(Button.JUMP)
                wait(random.uniform(0,2))
                eventPlayer.stopForcingButton(Button.JUMP)
        wait(1)
        if eventPlayer.apply_pressure == true:
            eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
        wait(10 / ult_freq)
    if RULE_CONDITION:
        goto RULE_START


## Winston Bot Abilities
rule "Bot Abilities: Winston Primary (p)":
    @Event eachPlayer
    @Team 2
    @Hero winston
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[4] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 9

    eventPlayer.ability_acc = 2
    set_default_facing()
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Winston Secondary (p)":
    @Event eachPlayer
    @Team 2
    @Hero winston
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[4] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) >= 9

    eventPlayer.ability_acc = 2
    set_default_facing()
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
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() != 1
    @Condition eventPlayer.bot_ability_lock[2] == false
    
    wait(random.uniform(1, 5) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x , random.uniform(-20,20) + eventPlayer.getEyePosition().y ,random.uniform(-20,20) + eventPlayer.getEyePosition().z), default_turn_rate, Relativity.TO_WORLD, FacingReeval.NONE)
    wait(0.5)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.1)
    set_default_facing()
    wait(6 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Winston Ability 1 (P)":
    @Event eachPlayer
    @Team 2
    @Hero winston
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) >= 9
    
    wait(random.uniform(0, 2.5) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(6 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Winston Ability 2 (BB2 + R)":
    @Event eachPlayer
    @Team 2
    @Hero winston
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[8] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false
    @Condition eventPlayer.getNormalizedHealth() <= 0.25


    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(12 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false
    wait(random.uniform(1,5))
    
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Winston Ability 2 (BB2 + Rb)":
    @Event eachPlayer
    @Team 2
    @Hero winston
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[8] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false
    @Condition eventPlayer.look_target.player_used_block_cd > 0
    @Condition eventPlayer.look_target.player_used_block_cd >= eventPlayer.look_target.ability_react_chance 

    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(12 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false
    wait(5 / ability_freq)
    
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Winston Ultimate Random (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero winston
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[8] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() != 1.00
    @Condition eventPlayer.bot_ability_lock[4] == false

    wait(10 / ult_freq)
    winston_ult()
        
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Winston Ultimate (BB1 + R)":
    @Event eachPlayer
    @Team 2
    @Hero winston
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[8] >= 1
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.25
    @Condition eventPlayer.bot_ability_lock[4] == false

    winston_ult()


def winston_ult():
    @Name "winston_ult"

    if random.randint(0,9) / ult_freq < 3:
        #smallMessage(hostPlayer, "Debug: Angry Monke 1")
        eventPlayer.bot_ability_lock[4] = true
        eventPlayer.mvmt_type_lock = true
        eventPlayer.mvmt_type = alt_mvmt_array[2]
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
        eventPlayer.bot_ability_lock[2] = true
        eventPlayer.forceButtonPress(Button.ABILITY_1)
        while eventPlayer.isUsingUltimate():
            wait(random.uniform(2,3))
            eventPlayer.forceButtonPress(Button.ABILITY_1)
        eventPlayer.mvmt_type = default_mvmt_type
        eventPlayer.mvmt_type_lock = false
        eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        eventPlayer.bot_ability_lock[4] = false
        wait(10 / ult_freq)
        eventPlayer.bot_ability_lock[4] = false


### Wrecking Ball Bot Abilities
rule "Bot Pressure: Wrecking Ball Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero hammond
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isInAlternateForm() == false

    eventPlayer.ability_acc = 3
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Wrecking Ball Crouch + Impluse (All)":
    @Event eachPlayer
    @Team 2
    @Hero hammond
    @Condition bots_use_abilities == true
    @Condition bot_behavior[9] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[1] == false
    
    wait(random.uniform(2, 7) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[1] = true
    if eventPlayer.isInAlternateForm() == false:
        eventPlayer.bot_ability_lock[2] = true
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    eventPlayer.applyImpulse(Vector.UP, random.uniform(10,20), Relativity.TO_WORLD, Impulse.INCORPORATE_CONTRARY_MOTION)
    wait(random.uniform(1, 2))
    eventPlayer.forceButtonPress(Button.CROUCH)
    wait(2)
    if eventPlayer.isInAlternateForm() == true:
        eventPlayer.bot_ability_lock[2] = false
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(6 / ability_freq)
    eventPlayer.bot_ability_lock[1] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Wrecking Ball Ability 1 Randomized (All)":
    @Event eachPlayer
    @Team 2
    @Hero hammond
    @Condition bots_use_abilities == false
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    
    wait(random.uniform(5, 10) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(1, 5))
    if eventPlayer.isInAlternateForm() == true:
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(2 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false
    if RULE_CONDITION:
        goto RULE_START

        
rule "Bot Abilities: Wrecking Ball Ability 1 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero hammond
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.look_target.player_used_dodge_cd > 0
    @Condition eventPlayer.look_target.player_used_dodge_cd > eventPlayer.look_target.ability_react_chance

    #smallMessage(hostPlayer, "Ball A1 Rd")
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.mvmt_type_lock = true
    eventPlayer.mvmt_type = alt_mvmt_array[0]
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(eventPlayer.look_target.player_react_time * 2)
    eventPlayer.mvmt_type = default_mvmt_type
    eventPlayer.mvmt_type_lock = false
    if eventPlayer.isInAlternateForm() == true:
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(4 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false

    if RULE_CONDITION:
        goto RULE_START



rule "Bot Abilities: Wrecking Ball Ability 2 (BB2 + Rb)":
    @Event eachPlayer
    @Team 2
    @Hero hammond
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[9] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.look_target.player_used_block_cd > 0
    @Condition eventPlayer.look_target.player_used_block_cd > eventPlayer.look_target.ability_react_chance
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) <= 10

    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(12 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false
    
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Wrecking Ball Ultimate + Crouch (BB3)":
    @Event eachPlayer
    @Team 2
    @Hero hammond
    @Condition bots_use_abilities == true
    @Condition bot_behavior[9] >= 3
    @Condition eventPlayer.isAlive() == true

    wait(10 / ult_freq)
    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 3:
        #smallMessage(getAllPlayers(), "Debug: Ball go")
        if eventPlayer.bot_ability_lock[1] == false:
            if eventPlayer.isInAlternateForm() == false:
                eventPlayer.bot_ability_lock[2] = true
                eventPlayer.forceButtonPress(Button.ABILITY_1)
            eventPlayer.bot_ability_lock[1] = true
            eventPlayer.applyImpulse(Vector.UP, random.uniform(10,20), Relativity.TO_WORLD, Impulse.INCORPORATE_CONTRARY_MOTION)
            wait(random.uniform(1,2))
            eventPlayer.startForcingButton(Button.ULTIMATE)
            eventPlayer.startForcingButton(Button.CROUCH)
            wait(random.uniform(1,2))
            eventPlayer.stopForcingButton(Button.ULTIMATE)
            eventPlayer.stopForcingButton(Button.CROUCH)
            if eventPlayer.isInAlternateForm() == true:
                eventPlayer.bot_ability_lock[2] = true
                eventPlayer.forceButtonPress(Button.ABILITY_1)
            wait(10)
            eventPlayer.bot_ability_lock[1] = false
        else:
            eventPlayer.forceButtonPress(Button.ULTIMATE)
            wait(10 / ult_freq)
    
    if RULE_CONDITION:
        goto RULE_START


### Zarya Bot Abilities
rule "Bot Pressure: Zarya Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero zarya
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 15
    @Condition eventPlayer.bot_ability_lock[1] == false

    eventPlayer.ability_acc = 3
    eventPlayer.proj_type = 0
    set_default_facing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pressure: Zarya Secondary Close (P)":
    @Event eachPlayer
    @Team 2
    @Hero zarya
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 15

    wait(random.uniform(2,5) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.ability_acc = 2
    eventPlayer.proj_type = 2
    set_proj_facing()
    eventPlayer.bot_ability_lock[1] = true
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    set_feet_facing()
    wait(0.1)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    wait(1.1)
    eventPlayer.general_randomizer = random.randint(0,1)
    if eventPlayer.general_randomizer == 0:
        eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
        wait(1.1)
    eventPlayer.bot_ability_lock[1] = false
    wait(2 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pressure: Zarya Secondary Far (P)":
    @Event eachPlayer
    @Team 2
    @Hero zarya
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) >= 15

    eventPlayer.ability_acc = 2
    eventPlayer.proj_type = 2
    set_proj_facing()
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    wait(1.1, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Zarya Ability 1 + 2 Handler A (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero zarya
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[10] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] < 2

    wait(10 / ability_freq)
    eventPlayer.bot_ability_lock[2] += 1
    #smallMessage(hostPlayer, "Debug: zar +1 cd")


rule "Bot Abilities: Zarya Ability 1 (BB1 + Rb)":
    @Event eachPlayer
    @Team 2
    @Hero zarya
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[10] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] > 0
    @Condition eventPlayer.look_target.player_used_block_cd > 0
    @Condition eventPlayer.look_target.player_used_block_cd > eventPlayer.look_target.ability_react_chance

    if eventPlayer.bot_ability_lock[2] == false:
        eventPlayer.bot_ability_lock[2] = 0
    eventPlayer.bot_ability_lock[2] -= 1
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(2.1,5))
    
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Zarya Jump (All)":
    @Event eachPlayer
    @Team 2
    @Hero zarya
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() != 1

    wait(random.uniform(1, 10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x, eventPlayer.getEyePosition().y - 100, random.uniform(-20,20) + eventPlayer.getEyePosition().z), default_turn_rate, Relativity.TO_WORLD, FacingReeval.NONE)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    wait(0.5)
    eventPlayer.forceButtonPress(Button.JUMP)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    if eventPlayer.apply_pressure == true and distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 15:
        eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    set_default_facing()
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Zarya Ultimate (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero zarya
    @Condition bots_use_abilities == true
    @Condition bot_behavior[10] >= 2
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[4] == false

    wait(10 / ult_freq)
    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 3:
        eventPlayer.proj_type = 5
        set_proj_facing()
        wait(0.1)
        eventPlayer.bot_ability_lock[4] = true
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        if distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 15:
            set_default_facing()
        else:
            eventPlayer.proj_type = 2
        wait(10 / ult_freq)
        eventPlayer.bot_ability_lock[4] = false
        
    if RULE_CONDITION:
        goto RULE_START
        
        
## DPS Bot Abilities
### Ashe Bot Abilities
rule "Bot Abilities: Ashe Scope (Pn)":
    @Event eachPlayer
    @Team 2
    @Hero ashe
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.apply_pressure == false
    
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
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 10

    eventPlayer.ability_acc = 2
    set_default_facing()
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.general_randomizer = random.randint(1,11)
    while eventPlayer.getAmmo(0) >= eventPlayer.general_randomizer:
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
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) >= 10

    eventPlayer.ability_acc = 2
    set_default_facing()
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(0.5)
    eventPlayer.general_randomizer = random.randint(1,11)
    while eventPlayer.getAmmo(0) >= eventPlayer.general_randomizer:
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
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false

    wait(random.uniform(3,7), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: ashe a1 a")
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x , random.uniform(-20,0) + eventPlayer.getEyePosition().y ,random.uniform(-20,20) + eventPlayer.getEyePosition().z), 1000, Relativity.TO_WORLD, FacingReeval.NONE)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.1)
    set_default_facing()
    wait(10 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ashe Ability 1 (R)":
    @Event eachPlayer
    @Team 2
    @Hero ashe
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() < 0.5
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 5

    wait(random.uniform(1,2) / ability_freq, Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: ashe a1 R")
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x , random.uniform(-20,0) + eventPlayer.getEyePosition().y ,random.uniform(-20,20) + eventPlayer.getEyePosition().z), 1000, Relativity.TO_WORLD, FacingReeval.NONE)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.1)
    set_default_facing()
    wait(10 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ashe Ability 1 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero ashe
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.look_target.player_used_dodge_cd > 0
    @Condition eventPlayer.look_target.player_used_dodge_cd >= eventPlayer.look_target.ability_react_chance

    #smallMessage(hostPlayer, "Debug: ashe a1 Rd")
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x , random.uniform(-20,0) + eventPlayer.getEyePosition().y ,random.uniform(-20,20) + eventPlayer.getEyePosition().z), 1000, Relativity.TO_WORLD, FacingReeval.NONE)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.1)
    set_default_facing()
    wait(10 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ashe Ability 2 (P)":
    @Event eachPlayer
    @Team 2
    @Hero ashe
    @Condition bots_use_abilities == true
    @Condition bot_behavior[11] >= 1
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.bot_ability_lock[3] == false

    wait(random.uniform(3,7) / ability_freq, Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug ashe a2")
    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.bot_ability_var = eventPlayer.look_target.getEyePosition()
    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), eventPlayer.bot_ability_var), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.75)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    eventPlayer.bot_ability_lock[3] = false
    wait(12 / ability_freq)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ashe Ultimate (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero ashe
    @Condition bots_use_abilities == true
    @Condition bot_behavior[11] >= 2
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[4] == false

    wait(10 / ult_freq)
    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 3:
        eventPlayer.proj_type = 5
        set_proj_facing()
        wait(0.1)
        eventPlayer.bot_ability_lock[4] = true
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        set_default_facing()
        wait(10 / ult_freq)
        eventPlayer.bot_ability_lock[4] = false
        
    if RULE_CONDITION:
        goto RULE_START


### Bastion Bot Abilities
rule "Bot Abilities: Bastion Primary":
    @Event eachPlayer
    @Team 2
    @Hero bastion
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.ability_acc = 3
    set_default_facing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Bastion Secondary":
    @Event eachPlayer
    @Team 2
    @Hero bastion
    @Condition bots_use_abilities == true
    @Condition bot_behavior[12] >= 1
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.ability_acc = 2
    wait(random.uniform(5,7) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.proj_type = 2
    set_proj_facing()
    wait(0.1)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    wait(0.1)
    eventPlayer.proj_type = 0
    set_default_facing()
    wait(8 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Bastion Ability 1":
    @Event eachPlayer
    @Team 2
    @Hero bastion
    @Condition bots_use_abilities == true
    @Condition bot_behavior[12] >= 1
    @Condition eventPlayer.isAlive() == true
    
    wait(random.uniform(0, 7) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(10 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Bastion Jump":
    @Event eachPlayer
    @Team 2
    @Hero bastion
    @Condition bots_use_abilities == true
    @Condition bot_behavior[12] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[1] == false

    wait(random.uniform(3,7), Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[1] = true
    eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x , -100 + eventPlayer.getEyePosition().y ,random.uniform(-20,20) + eventPlayer.getEyePosition().z), default_turn_rate, Relativity.TO_WORLD, FacingReeval.NONE)
    wait(0.5)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    set_default_facing()
    eventPlayer.general_randomizer = random.uniform(0.5,1.5)
    wait(eventPlayer.general_randomizer)
    eventPlayer.forceButtonPress(Button.JUMP)
    wait(8 - eventPlayer.general_randomizer)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Bastion Ultimate":
    @Event eachPlayer
    @Team 2
    @Hero bastion
    @Condition bots_use_abilities == true
    @Condition bot_behavior[12] >= 3
    @Condition eventPlayer.isAlive() == true
    
    wait(10 / ult_freq)
    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 3:
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(1)
        eventPlayer.mvmt_type_lock = true
        eventPlayer.mvmt_type = alt_mvmt_array[3]
        eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        wait(random.uniform(0.5,1))
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
        wait(random.uniform(0.5,1))
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
        wait(random.uniform(0.5,1))
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
        eventPlayer.mvmt_type = default_mvmt_type
        eventPlayer.mvmt_type_lock = false
        if eventPlayer.apply_pressure == true:
            eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
        wait(10 / ult_freq)

    if RULE_CONDITION:
        goto RULE_START

        
### Cassidy Bot Abilities
rule "Bot Abilities: Cassidy Primary":
    @Event eachPlayer
    @Team 2
    @Hero mccree
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[4] == false

    eventPlayer.ability_acc = 2
    set_default_facing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Cassidy Ability 1 (All)":
    @Event eachPlayer
    @Team 2
    @Hero mccree
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    
    wait(random.uniform(5, 10) / ability_freq, Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Cass A1 A")
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(6 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Cassidy Ability 1 (R)":
    @Event eachPlayer
    @Team 2
    @Hero mccree
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.getAmmo(0) == 1
    
    eventPlayer.general_randomizer = random.randint(0,3)
    if eventPlayer.general_randomizer == 0:
        #smallMessage(hostPlayer, "Debug: Cass A1 R")
        eventPlayer.bot_ability_lock[2] = true
        eventPlayer.forceButtonPress(Button.ABILITY_1)
        wait(6 / ability_freq)
        eventPlayer.bot_ability_lock[2] = false


rule "Bot Abilities: Cassidy Ability 1 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero mccree
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.look_target.player_used_dodge_cd > 0
    @Condition eventPlayer.look_target.player_used_dodge_cd >= eventPlayer.look_target.ability_react_chance
    
    
    #smallMessage(hostPlayer, "Debug: Cass A1 Rd")
    eventPlayer.bot_ability_lock[2] = true
    wait(random.uniform(0.5,eventPlayer.look_target.player_react_time))
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(6 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Cassidy Ability 2 (BB1 + R)":
    @Event eachPlayer
    @Team 2
    @Hero mccree
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition eventPlayer.apply_pressure == true
    @Condition bot_behavior[13] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer.getEyePosition(), Team.1)) < 13
    
    wait(random.uniform(0, 2), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(10 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Cassidy Ultimate (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero mccree
    @Condition bots_use_abilities == true
    @Condition bot_behavior[13] >= 2
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    
    wait(10 / ult_freq)
    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 3:
        eventPlayer.bot_ability_lock[4] = true
        eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(random.uniform(2,5))
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
        eventPlayer.bot_ability_lock[4] = false
        wait(10 / ult_freq)

    if RULE_CONDITION:
        goto RULE_START



### Echo Bot Abilities
rule "Bot Abilities: Echo Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero echo
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.ability_acc = 2
    eventPlayer.proj_type = 1
    set_proj_facing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Echo Secondary (P)":
    @Event eachPlayer
    @Team 2
    @Hero echo
    @Condition bots_use_abilities == true
    @Condition bot_behavior[14] >= 1 
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    

    eventPlayer.ability_acc = 2
    eventPlayer.proj_type = 2
    wait(random.uniform(0,5) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    eventPlayer.proj_type = 1
    wait(6 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Echo Ability 1 (All)":
    @Event eachPlayer
    @Team 2
    @Hero echo
    @Condition bots_use_abilities == true
    @Condition eventPlayer.getAltitude() < 3
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    
    wait(random.uniform(3,5) / ability_freq, Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Echo a1 All")
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.general_randomizer = random.randint(0,9)
    if eventPlayer.general_randomizer != 0:
        eventPlayer.startForcingButton(Button.JUMP)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    if eventPlayer.general_randomizer <= 1 and eventPlayer.isUsingAbility1():
        wait(0.1)
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    else:
        wait(3)
    wait(6 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Echo Ability 1 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero echo
    @Condition bots_use_abilities == true
    @Condition eventPlayer.getAltitude() < 3
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.look_target.player_used_dodge_cd > 0
    @Condition eventPlayer.look_target.player_used_dodge_cd >= eventPlayer.look_target.ability_react_chance
    
    #smallMessage(hostPlayer, "Debug: Echo a1 Rd")
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.general_randomizer = random.randint(0,9)
    if eventPlayer.general_randomizer != 0:
        eventPlayer.startForcingButton(Button.JUMP)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    if eventPlayer.general_randomizer <= 1 and eventPlayer.isUsingAbility1():
        wait(0.1)
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    else:
        wait(3)
    wait(6 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Echo Hover Stop (All)":
    @Event eachPlayer
    @Team 2
    @Hero echo
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isOnGround() == true
    
    eventPlayer.stopForcingButton(Button.JUMP)


rule "Bot Abilities: Echo Ability 2 (P + R)":
    @Event eachPlayer
    @Team 2
    @Hero echo
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[14] >= 2
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 16
    @Condition eventPlayer.look_target.getNormalizedHealth() <= 0.6
                                
    set_default_facing()
    eventPlayer.startForcingButton(Button.ABILITY_2)
    wait(2)
    set_proj_facing()
    wait(10 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


### Genji
rule "Bot Abilities: Genji Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero genji
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) > 10
    @Condition eventPlayer.isUsingUltimate() == false

    eventPlayer.ability_acc = 2
    eventPlayer.proj_type = 1
    set_proj_facing()
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Genji Secondary (P)":
    @Event eachPlayer
    @Team 2
    @Hero genji
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) <= 10
    @Condition eventPlayer.isUsingUltimate() == false

    eventPlayer.ability_acc = 2
    eventPlayer.proj_type = 2
    set_proj_facing()
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START



rule "Bot Abilities: Genji Jump (All)":
    @Event eachPlayer
    @Team 2
    @Hero genji
    @Condition default_jump_enabled == true
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
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.isUsingUltimate() == false
    @Condition eventPlayer.isUsingAbility2() == false

    wait(random.uniform(4,7) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[2] = true
    #smallMessage(hostPlayer, "Debug: genji a1 A")
    eventPlayer.general_randomizer = random.randint(0, 9)
    if eventPlayer.general_randomizer < 7:
        eventPlayer.proj_type = 3
        set_proj_facing()
    else:
        eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x ,random.uniform(-5,20) + eventPlayer.getEyePosition().y ,random.uniform(-20,20) + eventPlayer.getEyePosition().z), default_turn_rate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait(0.25)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.25)
    if eventPlayer.apply_pressure == true:
        eventPlayer.proj_type = 1
        set_proj_facing()
    else:
        set_default_facing()    
    wait(8 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Genji Ability 1 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero genji
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.isUsingUltimate() == false
    @Condition eventPlayer.isUsingAbility2() == false
    @Condition eventPlayer.look_target.player_used_dodge_cd > 0
    @Condition eventPlayer.look_target.player_used_dodge_cd >= eventPlayer.look_target.ability_react_chance
    
    eventPlayer.bot_ability_lock[2] = true
    #smallMessage(hostPlayer, "Debug: genji a1 Rd")
    eventPlayer.general_randomizer = random.randint(0, 9)
    if eventPlayer.general_randomizer < 3:
        eventPlayer.proj_type = 3
        set_proj_facing()
    else:
        eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x ,random.uniform(-5,20) + eventPlayer.getEyePosition().y ,random.uniform(-20,20) + eventPlayer.getEyePosition().z), default_turn_rate, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait(0.25)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.25)
    if eventPlayer.apply_pressure == true:
        eventPlayer.proj_type = 1
        set_proj_facing()
    else:
        set_default_facing()    
    wait(8 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Genji Ability 1 (R + P)":
    @Event eachPlayer
    @Team 2
    @Hero genji
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.isUsingUltimate() == false
    @Condition eventPlayer.isUsingAbility2() == false
    @Condition eventPlayer.look_target.getNormalizedHealth() <= 0.4
    
    eventPlayer.bot_ability_lock[2] = true
    #smallMessage(hostPlayer, "Debug: genji a1 R")
    eventPlayer.proj_type = 3
    set_proj_facing()
    wait(0.25)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.25)
    eventPlayer.proj_type = 1
    set_proj_facing()
    wait(8 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Genji Ability 2 (All)":
    @Event eachPlayer
    @Team 2
    @Hero genji
    @Condition bots_use_abilities == true
    @Condition bot_behavior[15] >= 1
    @Condition eventPlayer.isAlive() == true
    
    wait(random.uniform(5, 10), Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[3] = true
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(8 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Genji Ability 2 (Rb)":
    @Event eachPlayer
    @Team 2
    @Hero genji
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[15] >= 1
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false
    @Condition eventPlayer.look_target.player_used_block_cd > 0
    @Condition eventPlayer.look_target.player_used_block_cd >= eventPlayer.look_target.ability_react_chance
    
    wait(random.uniform(0,0.5))
    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(8 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Genji Ultimate (All)":
    @Event eachPlayer
    @Team 2
    @Hero genji
    @Condition bots_use_abilities == true
    @Condition bot_behavior[15] >= 2
    @Condition eventPlayer.isAlive() == true

    wait(10 / ult_freq)
    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 3:
        eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        eventPlayer.mvmt_type_lock = true
        eventPlayer.mvmt_type = alt_mvmt_array[2]
        while eventPlayer.isUsingUltimate():
            wait(random.uniform(0,1))
            eventPlayer.proj_type = 3
            set_proj_facing()
            wait(0.25)
            eventPlayer.forceButtonPress(Button.ABILITY_1)
            if eventPlayer.apply_pressure == true:
                set_default_facing()
                eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
            wait(random.uniform(2,3), Wait.ABORT_WHEN_FALSE)
        eventPlayer.mvmt_type = default_mvmt_type
        eventPlayer.mvmt_type_lock = false
        if eventPlayer.apply_pressure == true:
            eventPlayer.proj_type = 1
            set_proj_facing()
        else:
            set_default_facing()
        wait(10 / ult_freq)

    if RULE_CONDITION:
        goto RULE_START


### Hanzo Bot Abilities
rule "Bot Abilities: Hanzo Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero hanzo
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.ability_acc = 2
    eventPlayer.proj_type = 1
    set_proj_facing()
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
    @Condition bots_use_abilities == true
    @Condition bot_behavior[16] >= 1
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true


    eventPlayer.ability_acc = 2
    wait(random.uniform(5,10) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(10 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Hanzo Ultimate (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero hanzo
    @Condition bots_use_abilities == true
    @Condition bot_behavior[16] >= 2
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    
    wait(10 / ult_freq)
    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 3:
        eventPlayer.bot_ability_lock[4] = true
        eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition() + vect(random.uniform(-20,20),0,random.uniform(-20,20))), 1000, Relativity.TO_WORLD, FacingReeval.NONE)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(2)
        if eventPlayer.apply_pressure == true:
            set_proj_facing()
        else:
            set_default_facing()
        eventPlayer.bot_ability_lock[4] = false
        wait(10 / ult_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Hanzo Jump (All)":
    @Event eachPlayer
    @Team 2
    @Hero hanzo
    @Condition default_jump_enabled == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isOnGround() == true
    @Condition eventPlayer.bot_ability_lock[1] == false
    
    wait(random.uniform(4,7) / ability_freq, Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Hanzo jump All")
    eventPlayer.bot_ability_lock[1] = true
    wait(random.uniform(0.4, 0.9))
    eventPlayer.forceButtonPress(Button.JUMP)
    wait(random.uniform(0.2, 0.5))
    eventPlayer.forceButtonPress(Button.JUMP)
    wait(4 / ability_freq)
    eventPlayer.bot_ability_lock[1] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Hanzo Jump (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero hanzo
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isOnGround() == true
    @Condition eventPlayer.bot_ability_lock[1] == false
    @Condition eventPlayer.look_target.player_used_dodge_cd > 0
    @Condition eventPlayer.look_target.player_used_dodge_cd >= eventPlayer.look_target.ability_react_chance

    #smallMessage(hostPlayer, "Debug: Hanzo jump Rd")
    eventPlayer.bot_ability_lock[1] = true
    wait(random.uniform(0, eventPlayer.look_target.player_react_time))
    eventPlayer.forceButtonPress(Button.JUMP)
    wait(random.uniform(0.2, 0.5))
    eventPlayer.forceButtonPress(Button.JUMP)
    wait(4 / ability_freq)
    eventPlayer.bot_ability_lock[1] = false
    
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Hanzo Draw (Pn)":
    @Event eachPlayer
    @Team 2
    @Hero hanzo
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.apply_pressure == false
    
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
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.ability_acc = 2
    eventPlayer.proj_type = 1
    set_proj_facing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Junkrat Ability 1 Handler (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero junkrat
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] < 2

    wait(8 / ability_freq)
    eventPlayer.bot_ability_lock[2] += 1
    #smallMessage(hostPlayer, "Debug: junkrat +1 cd")


rule "Bot Abilities: Junkrat Ability 1 + Secondary (P)":
    @Event eachPlayer
    @Team 2
    @Hero junkrat
    @Condition bots_use_abilities == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] > 0

    wait(random.uniform(3,7) / ability_freq, Wait.ABORT_WHEN_FALSE)
    if eventPlayer.bot_ability_lock[2] == false:
        eventPlayer.bot_ability_lock[2] = 0
    eventPlayer.bot_ability_lock[2] -= 1
    eventPlayer.ability_acc = 2
    eventPlayer.proj_type = 2
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.1)
    eventPlayer.proj_type = 1
    wait(random.uniform(0.5,2))
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    wait(5 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START



rule "Bot Abilities: Junkrat Ability 1 + Secondary Movement (All)":
    @Event eachPlayer
    @Team 2
    @Hero junkrat
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] > 0

    wait(random.uniform(10, 20) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[2] -= 1
    set_ground_facing()
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(0.1,1))
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    if eventPlayer.bot_ability_lock[2] > 0 and random.randint(0,1) == 0:
        eventPlayer.bot_ability_lock[2] -= 1
        wait(random.uniform(0.1,0.5))
        eventPlayer.forceButtonPress(Button.ABILITY_1)
        wait(random.uniform(0.1,0.3))
        eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    if eventPlayer.apply_pressure == true:
        set_proj_facing()
    else:
        set_default_facing()

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Junkrat Ability 2 (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero junkrat
    @Condition bots_use_abilities == true
    @Condition bot_behavior[17] >= 1
    @Condition eventPlayer.isAlive() == true

    wait(random.uniform(3,7) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(10 / ability_freq)

    if RULE_CONDITION:
        goto RULE_START

        

rule "Bot Abilities: Junkrat Ultimate":
    @Event eachPlayer
    @Team 2
    @Hero junkrat
    @Condition bots_use_abilities == true
    @Condition bot_behavior[17] >= 2
    @Condition eventPlayer.isAlive() == true
    
    wait(10 / ult_freq)
    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 3:
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        while eventPlayer.isUsingUltimate():
            eventPlayer.startFacing(vect(random.uniform(-100,100),random.uniform(-100,100),random.uniform(-100,100)), 1000, Relativity.TO_WORLD, FacingReeval.NONE)
            wait(0.5)
            eventPlayer.general_randomizer = random.uniform(0,9)
            if eventPlayer.general_randomizer == 0:
                eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
        wait(10 / ult_freq)

    if RULE_CONDITION:
        goto RULE_START


### Mei Bot Abilities
rule "Bot Pressure: Mei Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero mei
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.bot_ability_lock[3] == false
    @Condition eventPlayer.bot_ability_lock[4] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 10

    eventPlayer.ability_acc = 2
    if distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 5:
        set_default_facing()
    else:
        eventPlayer.proj_type = 1
        set_proj_facing()
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(2, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pressure: Mei Secondary (P)":
    @Event eachPlayer
    @Team 2
    @Hero mei
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.bot_ability_lock[3] == false
    @Condition eventPlayer.bot_ability_lock[4] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) >= 10

    eventPlayer.ability_acc = 2
    eventPlayer.proj_type = 2
    set_proj_facing()
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(2, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Mei Ability 1 (R)":
    @Event eachPlayer
    @Team 2
    @Hero mei
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[18] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.getNormalizedHealth() <= 0.5
    
    wait(random.uniform(0, 5) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(1,3))
    eventPlayer.bot_ability_lock[2] = false
    wait(12 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Pressure: Mei Ability 2 (R)":
    @Event eachPlayer
    @Team 2
    @Hero mei
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[18] >= 2
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 12

    wait(random.uniform(1,5) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.proj_type = 0
    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), eventPlayer.look_target.getPosition() + vect(0,0.18,0)), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    wait(0.1)
    set_default_facing()
    eventPlayer.bot_ability_lock[3] = false
    wait(12 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Mei Ultimate (All)":
    @Event eachPlayer
    @Team 2
    @Hero mei
    @Condition bots_use_abilities == true
    @Condition bot_behavior[18] >= 3
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[4] == false
    
    wait(10 / ult_freq)
    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 3:
        eventPlayer.bot_ability_lock[4] = true
        eventPlayer.proj_type = 5
        set_proj_facing()
        wait(0.1)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        set_default_facing()
        eventPlayer.bot_ability_lock[4] = false
        wait(10 / ult_freq)
    if RULE_CONDITION:
        goto RULE_START


### Pharah Bot Abilities
rule "Bot Pressure: Pharah Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero pharah
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.ability_acc = 2
    eventPlayer.proj_type = 1
    set_proj_facing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Pharah Ability 1 (All)":
    @Event eachPlayer
    @Team 2
    @Hero pharah
    @Condition bots_use_abilities == true
    @Condition eventPlayer.getAltitude() < 5.5
    @Condition eventPlayer.isAlive() == true
    
    
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(3 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Pharah Ability 2 (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero pharah
    @Condition bots_use_abilities == true
    @Condition bot_behavior[19] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false
    
    #smallMessage(hostPlayer, "Debug: Pharah a2 all")
    wait(random.uniform(3,7) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.proj_type = 4
    set_proj_facing()
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.1)
    if eventPlayer.apply_pressure == true:
        eventPlayer.proj_type = 1
        set_proj_facing()
    else:
        set_default_facing()
    wait(9 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Pharah Ability 2 (BB1 + Rd)":
    @Event eachPlayer
    @Team 2
    @Hero pharah
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[19] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false
    @Condition eventPlayer.look_target.player_used_dodge_cd > 0
    @Condition eventPlayer.look_target.player_used_dodge_cd >= eventPlayer.look_target.ability_react_chance
    
    #smallMessage(hostPlayer, "Debug: Pharah a2 Rd")
    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.proj_type = 4
    set_proj_facing()
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.1)
    if eventPlayer.apply_pressure == true:
        eventPlayer.proj_type = 1
        set_proj_facing()
    else:
        set_default_facing()
    wait(9)
    eventPlayer.bot_ability_lock[3] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Pharah Ultimate (P)":
    @Event eachPlayer
    @Team 2
    @Hero pharah
    @Condition bots_use_abilities == true
    @Condition bot_behavior[19] >= 2
    @Condition eventPlayer.isAlive() == true
    
    wait(10 / ult_freq)
    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 3:
        eventPlayer.proj_type = 5
        set_proj_facing()
        wait(0.1)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(2.5)
        if eventPlayer.apply_pressure == true:
            eventPlayer.proj_type = 1
            set_proj_facing()
        else:
            set_default_facing()
        wait(10 / ult_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Pharah Hover Falling (All)":
    @Event eachPlayer
    @Team 2
    @Hero pharah
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isOnGround() == false
    @Condition eventPlayer.getVerticalSpeed() < -5.7
    
    eventPlayer.startForcingButton(Button.JUMP)


rule "Bot Abilities: Pharah Hover Too much hover (All)":
    @Event eachPlayer
    @Team 2
    @Hero pharah
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isOnGround() == false
    @Condition eventPlayer.getVerticalSpeed() > 3.5
    
    eventPlayer.stopForcingButton(Button.JUMP)


### Reaper Bot Abilities
rule "Bot Abilities: Reaper Primary":
    @Event eachPlayer
    @Team 2
    @Hero reaper
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.bot_ability_lock[3] == false

    eventPlayer.ability_acc = 3
    set_default_facing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Reaper Ability 1 (All)":
    @Event eachPlayer
    @Team 2
    @Hero reaper
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.getNormalizedHealth() != 0
    
    wait(random.uniform(5, 10) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(0.4,3))
    if eventPlayer.isUsingAbility1():
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    eventPlayer.bot_ability_lock[2] = false
    wait(8 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Reaper Ability 1 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero reaper
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.look_target.player_used_dodge_cd > 0
    @Condition eventPlayer.look_target.player_used_dodge_cd >= eventPlayer.look_target.ability_react_chance
    
    wait(random.uniform(0.5, eventPlayer.look_target.player_react_time), Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(0.4,3))
    if eventPlayer.isUsingAbility1():
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    eventPlayer.bot_ability_lock[2] = false
    wait(8 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Reaper Ability 2":
    @Event eachPlayer
    @Team 2
    @Hero reaper
    @Condition bots_use_abilities == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition bot_behavior[20] >= 1
    @Condition eventPlayer.bot_ability_lock[3] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) > 15

    wait(random.uniform(3,7) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.startFacing(directionTowards(eventPlayer.getEyePosition(), sorted(player_list, lambda player: distance(eventPlayer.getEyePosition(), player.getEyePosition()))[0].getPosition() + vect(random.uniform(-1,1),-0.15,random.uniform(-1,1))), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    wait(0.1)
    set_default_facing()
    eventPlayer.bot_ability_lock[3] = false
    wait(10 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Reaper Ultimate (All)":
    @Event eachPlayer
    @Team 2
    @Hero reaper
    @Condition bots_use_abilities == true
    @Condition bot_behavior[20] >= 2
    @Condition eventPlayer.isAlive() == true
    
    wait(10 / ult_freq)
    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 3:
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(10 / ult_freq)

    if RULE_CONDITION:
        goto RULE_START


### Sojourn Bot Abilities
rule "Bot Abilities: Sojourn Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero sojourn
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.ability_acc = 2
    eventPlayer.proj_type = 1
    set_proj_facing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sojourn Secondary (P)":
    @Event eachPlayer
    @Team 2
    @Hero sojourn
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.ability_acc = 2
    if eventPlayer.isUsingUltimate() == false:
        wait(random.uniform(1,5) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.proj_type = 0
    set_default_facing()
    wait(0.1)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    eventPlayer.proj_type = 1
    set_proj_facing()
    eventPlayer.ability_acc = 2
    if eventPlayer.isUsingUltimate() == false:
        wait(5 / ability_freq)
    else:
        wait(random.uniform(0.5,2) / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sojourn Ability 1 (All)":
    @Event eachPlayer
    @Team 2
    @Hero sojourn
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    
    wait(random.uniform(5, 10) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(0, 1))
    eventPlayer.general_randomizer = random.randint(0,9)
    if eventPlayer.general_randomizer > 0:
        eventPlayer.forceButtonPress(Button.JUMP)
    wait(7 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sojourn Ability 1 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero sojourn
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.look_target.player_used_dodge_cd > 0
    @Condition eventPlayer.look_target.player_used_dodge_cd >= eventPlayer.look_target.ability_react_chance
    
    wait(random.uniform(0.5, eventPlayer.look_target.player_react_time))
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(0, 1))
    if eventPlayer.general_randomizer > 0:
        eventPlayer.forceButtonPress(Button.JUMP)
    wait(7 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sojourn Ability 2 (All)":
    @Event eachPlayer
    @Team 2
    @Hero sojourn
    @Condition bots_use_abilities == true
    @Condition eventPlayer.apply_pressure == true
    @Condition bot_behavior[21] >= 1
    @Condition eventPlayer.isAlive() == true

    wait(random.uniform(5, 10) / ability_freq, Wait.ABORT_WHEN_FALSE)
    set_feet_facing()
    wait(0.1)
    eventPlayer.startForcingButton(Button.ABILITY_2)
    wait(0.1)
    set_proj_facing()
    wait(10 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sojourn Ultimate (All)":
    @Event eachPlayer
    @Team 2
    @Hero sojourn
    @Condition bots_use_abilities == true
    @Condition bot_behavior[21] >= 2
    @Condition eventPlayer.isAlive() == true
    
    wait(10 / ult_freq)
    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 3:
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(10 / ult_freq)

    if RULE_CONDITION:
        goto RULE_START


### Solider 76 Bot Abilities
rule "Bot Abilities: Soldier Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero soldier
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.ability_acc = 2
    set_default_facing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Soldier Secondary (P)":
    @Event eachPlayer
    @Team 2
    @Hero soldier
    @Condition bots_use_abilities == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
   

    wait(random.uniform(2,5),Wait.ABORT_WHEN_FALSE)
    set_feet_facing()
    wait(0.1)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    set_default_facing()
    wait(5 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START

        
rule "Bot Abilities: Soldier Ability 1 (R)":
    @Event eachPlayer
    @Team 2
    @Hero soldier
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[22] >= 1
    @Condition eventPlayer.isAlive()
    @Condition distance(eventPlayer.getPosition(), eventPlayer.look_target.getPosition()) > 25

    #smallMessage(hostPlayer, "Debug: S76 a1 R")
    eventPlayer.mvmt_type_lock = true
    eventPlayer.mvmt_type = alt_mvmt_array[3]
    eventPlayer.bot_disable_jump = true
    eventPlayer.bot_disable_crouch = true
    eventPlayer.startForcingButton(Button.ABILITY_1)
    wait(random.uniform(1,2))
    eventPlayer.stopForcingButton(Button.ABILITY_1)
    eventPlayer.mvmt_type = default_mvmt_type
    eventPlayer.mvmt_type_lock = false
    eventPlayer.bot_disable_jump = false
    eventPlayer.bot_disable_crouch = false
    wait(5 / ability_freq)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Soldier Ability 1 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero soldier
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[22] >= 1
    @Condition eventPlayer.isAlive()
    @Condition eventPlayer.look_target.player_used_dodge_cd > 0
    @Condition eventPlayer.look_target.player_used_dodge_cd >= eventPlayer.look_target.ability_react_chance

    #smallMessage(hostPlayer, "Debug: S76 a1 Rd")
    eventPlayer.mvmt_type_lock = true
    eventPlayer.mvmt_type = alt_mvmt_array[3]
    eventPlayer.bot_mvmt_var = 0
    eventPlayer.bot_disable_jump = true
    eventPlayer.bot_disable_crouch = true
    eventPlayer.startForcingButton(Button.ABILITY_1)
    while eventPlayer.isAlive() and eventPlayer.bot_mvmt_var < 3:
        eventPlayer.startFacing(vect(eventPlayer.getPosition().x + 500, eventPlayer.getPosition().x - 10, eventPlayer.getPosition().x + 500), 500, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
        wait(random.uniform(0.25,0.75))
        eventPlayer.startFacing(vect(eventPlayer.getPosition().x - 500, eventPlayer.getPosition().x - 10, eventPlayer.getPosition().x - 500), 500, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
        wait(random.uniform(0.25,0.75))
        eventPlayer.bot_mvmt_var += 1
    set_default_facing()
    eventPlayer.stopForcingButton(Button.ABILITY_1)
    eventPlayer.mvmt_type = default_mvmt_type
    eventPlayer.mvmt_type_lock = false
    eventPlayer.bot_disable_jump = false
    eventPlayer.bot_disable_crouch = false
    wait(5 / ability_freq)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Solider Ability 2 (R)":
    @Event eachPlayer
    @Team 2
    @Hero soldier
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[22] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.5

    wait(random.uniform(0,2), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(15 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Soldier Ultimate (All)":
    @Event eachPlayer
    @Team 2
    @Hero soldier
    @Condition bots_use_abilities == true
    @Condition bot_behavior[22] >= 3
    @Condition eventPlayer.isAlive() == true
    
    wait(10 / ult_freq)
    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 3:
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(10 / ult_freq)

    if RULE_CONDITION:
        goto RULE_START


### Sombra Bot Abilities
rule "Bot Abilities: Sombra Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero sombra
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.ability_acc = 2
    set_default_facing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sombra Secondary (P + R)":
    @Event eachPlayer
    @Team 2
    @Hero sombra
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[23] >= 2
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[1] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 12

    wait(random.uniform(2, 5) / ability_freq, Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Sombra hack rand")
    eventPlayer.bot_ability_lock[1] = true
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(1)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    wait(10 / ability_freq)
    eventPlayer.bot_ability_lock[1] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sombra Secondary (P + Rs)":
    @Event eachPlayer
    @Team 2
    @Hero sombra
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[23] >= 2
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[1] == false
    @Condition eventPlayer.look_target.player_used_stun_cd > 0
    @Condition eventPlayer.look_target.player_used_stun_cd >= eventPlayer.look_target.ability_react_chance 
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 12

    eventPlayer.bot_ability_lock[1] = true
    #smallMessage(hostPlayer, "Debug: Sombra hack Rs")
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(1)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    wait(10 / ability_freq)
    eventPlayer.bot_ability_lock[1] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sombra Ability 1 (All)":
    @Event eachPlayer
    @Team 2
    @Hero sombra
    @Condition bots_use_abilities == true
    @Condition bot_behavior[23] >= 1
    @Condition eventPlayer.apply_pressure == false
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    
    wait(random.uniform(5, 10) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(1, 5))
    if eventPlayer.isUsingAbility1():
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(10 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sombra Ability 1 (P)":
    @Event eachPlayer
    @Team 2
    @Hero sombra
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[23] >= 1
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) > 12

    wait(random.uniform(1,2) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(1, 5))
    if eventPlayer.isUsingAbility1():
        eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(10 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false
    if RULE_CONDITION:
        goto RULE_START

rule "Bot Abilities: Sombra Ability 2 (All)":
    @Event eachPlayer
    @Team 2
    @Hero sombra
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false
    
    wait(random.uniform(5, 10) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x ,random.uniform(-5,20) + eventPlayer.getEyePosition().y ,random.uniform(-20,20) + eventPlayer.getEyePosition().z), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.1)
    set_default_facing()
    wait(random.uniform(0.5, 3))
    if eventPlayer.isUsingAbility2():
        eventPlayer.general_randomizer = random.randint(0,9)
        if eventPlayer.general_randomizer == 0:
            eventPlayer.forceButtonPress(Button.INTERACT)
        else:
            eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(10 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false
    if RULE_CONDITION:
        goto RULE_START

rule "Bot Abilities: Sombra Ability 2 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero sombra
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false
    @Condition eventPlayer.look_target.player_used_dodge_cd > 0
    @Condition eventPlayer.look_target.player_used_dodge_cd >= eventPlayer.look_target.ability_react_chance
    
    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x ,random.uniform(-5,20) + eventPlayer.getEyePosition().y ,random.uniform(-20,20) + eventPlayer.getEyePosition().z), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.1)
    set_default_facing()
    wait(random.uniform(0.5, eventPlayer.look_target.player_react_time))
    if eventPlayer.isUsingAbility2():
        eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(10 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Sombra Ultimate (All)":
    @Event eachPlayer
    @Team 2
    @Hero sombra
    @Condition bots_use_abilities == true
    @Condition bot_behavior[23] >= 3
    @Condition eventPlayer.isAlive() == true
    
    wait(10 / ult_freq)
    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 3:
        #smallMessage(hostPlayer, "Debug: Sombra ult")
        if eventPlayer.isUsingAbility1():
            eventPlayer.forceButtonPress(Button.ABILITY_1)
            wait(0.5)
        if eventPlayer.bot_ability_lock[3] == false:
            eventPlayer.bot_ability_lock[3] = true
            eventPlayer.startFacing(vect(random.uniform(-20,20) + eventPlayer.getEyePosition().x ,random.uniform(-5,20) + eventPlayer.getEyePosition().y ,random.uniform(-20,20) + eventPlayer.getEyePosition().z), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
            wait(0.1)
            eventPlayer.forceButtonPress(Button.ABILITY_2)
            wait(0.1)
            set_default_facing()
            wait(random.uniform(0.25, 0.75))
            if eventPlayer.isUsingAbility2():
                eventPlayer.forceButtonPress(Button.ABILITY_2)
            wait(0.25)
            eventPlayer.startForcingButton(Button.ULTIMATE)
            wait(0.25)
            eventPlayer.stopForcingButton(Button.ULTIMATE)
            wait(10)
            eventPlayer.bot_ability_lock[3] = false
        else:
            eventPlayer.startForcingButton(Button.ULTIMATE)
            wait(0.25)
            eventPlayer.stopForcingButton(Button.ULTIMATE)
            wait(10 / ability_freq)

    if RULE_CONDITION:
        goto RULE_START


### Symmetra Bot Abilities
rule "Bot Abilities: Symmetra Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero symmetra
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false
    @Condition eventPlayer.bot_ability_lock[4] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 12

    eventPlayer.ability_acc = 2
    set_default_facing()
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Symmetra Secondary (P)":
    @Event eachPlayer
    @Team 2
    @Hero symmetra
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false
    @Condition eventPlayer.bot_ability_lock[4] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) >= 12

    eventPlayer.ability_acc = 2
    eventPlayer.proj_type = 2
    set_proj_facing()
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
    @Condition bots_use_abilities == true
    @Condition bot_behavior[24] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false

    wait(random.uniform(5,10) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.mvmt_type_lock = true
    eventPlayer.mvmt_type = alt_mvmt_array[1]
    eventPlayer.startFacing(eventPlayer.getPosition() + vect(random.uniform(-20,20), 0, random.uniform(-20,20)), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    set_default_facing()
    eventPlayer.startForcingButton(Button.INTERACT)
    wait(1)
    eventPlayer.stopForcingButton(Button.INTERACT)
    eventPlayer.mvmt_type = default_mvmt_type
    eventPlayer.mvmt_type_lock = false
    eventPlayer.bot_ability_lock[3] = false
    wait(7 / ability_freq)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Symmetra Ultimate (All)":
    @Event eachPlayer
    @Team 2
    @Hero symmetra
    @Condition bots_use_abilities == true
    @Condition bot_behavior[24] >= 2
    @Condition eventPlayer.bot_ability_lock[4] == false
    @Condition eventPlayer.isAlive()

    wait(10 / ult_freq)
    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 3:
        eventPlayer.bot_ability_lock[4] = true
        eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
        set_ground_facing()
        wait(0.1)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        if eventPlayer.general_randomizer >= 8:
            eventPlayer.forceButtonPress(Button.ULTIMATE)
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
        set_default_facing()
        eventPlayer.bot_ability_lock[4] = false

    if RULE_CONDITION:
        goto RULE_START


### Torbjorn Bot Abilities
rule "Bot Abilities: Torbjorn Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero torbjorn
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[4] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) >= 10

    eventPlayer.ability_acc = 2
    eventPlayer.proj_type = 1
    set_proj_facing()
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Torbjorn Secondary (P)":
    @Event eachPlayer
    @Team 2
    @Hero torbjorn
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[4] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 10

    eventPlayer.ability_acc = 2
    eventPlayer.proj_type = 2
    set_proj_facing()
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Torbjorn Ability 2 (R)":
    @Event eachPlayer
    @Team 2
    @Hero torbjorn
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.5
    @Condition eventPlayer.bot_ability_lock[3] == false

    wait(random.uniform(0.5,2) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(15 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Torbjorn Ability 2 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero torbjorn
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false
    @Condition eventPlayer.look_target.player_used_dodge_cd > 0
    @Condition eventPlayer.look_target.player_used_dodge_cd >= eventPlayer.look_target.ability_react_chance
    
    wait(random.uniform(0.5,2) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(15 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Torbjorn Ultimate (BB1 + P)":
    @Event eachPlayer
    @Team 2
    @Hero torbjorn
    @Condition bots_use_abilities == true
    @Condition bot_behavior[25] >= 1
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.bot_ability_lock[4] == false
    @Condition eventPlayer.isAlive()

    wait(10 / ult_freq)
    eventPlayer.general_randomizer = random.randint(0,9) / ult_freq
    if eventPlayer.general_randomizer < 3:
        eventPlayer.bot_ability_lock[4] = true
        eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        eventPlayer.bot_ability_var = 0
        while eventPlayer.bot_ability_var < 10:
            eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
            wait(random.uniform(0.25,0.75))
            eventPlayer.bot_ability_var += 1
        if eventPlayer.apply_pressure == false:
            set_default_facing()
        eventPlayer.bot_ability_lock[4] = false
        wait(10 / ult_freq)

    if RULE_CONDITION:
        goto RULE_START


### Tracer Bot Abilities
rule "Bot Pressure: Tracer Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero tracer
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.ability_acc = 2
    set_default_facing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Tracer Ability 1 Handler":
    @Event eachPlayer
    @Team 2
    @Hero tracer
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] < 3

    wait(3 / ability_freq)
    eventPlayer.bot_ability_lock[2] += 1
    #smallMessage(hostPlayer, "Debug: tracer +1 cd")

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Tracer Ability 1 (Random All)":
    @Event eachPlayer
    @Team 2
    @Hero tracer
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] > 0
    
    wait(random.uniform(2,5) / ability_freq, Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: tracer a1 rand")
    eventPlayer.bot_ability_lock[2] -= 1
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(2 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Tracer Ability 1 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero tracer
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] > 0
    @Condition eventPlayer.look_target.player_used_dodge_cd > 0
    @Condition eventPlayer.look_target.player_used_dodge_cd >= eventPlayer.look_target.ability_react_chance
    
    wait(random.uniform(0, eventPlayer.look_target.player_react_time), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: tracer a1 rd")
    eventPlayer.bot_ability_lock[2] -= 1
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(2,5) / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Tracer Ability 1 Blink Melee (R)":
    @Event eachPlayer
    @Team 2
    @Hero tracer
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] > 0
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) <= 9
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) >= 6
    
    wait(random.uniform(0.25,1) / ability_freq, Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: tracer a1 bm1")
    eventPlayer.bot_ability_lock[2] -= 1
    eventPlayer.mvmt_type_lock = true
    eventPlayer.mvmt_type = alt_mvmt_array[3]
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.25)
    eventPlayer.forceButtonPress(Button.MELEE)
    eventPlayer.mvmt_type = default_mvmt_type
    eventPlayer.mvmt_type_lock = false
    wait(0.1)
    if eventPlayer.bot_ability_lock[2] > 0:
        if random.randint(0,9) < 5:
            #smallMessage(hostPlayer, "Debug: tracer a1 bm2")
            eventPlayer.bot_ability_lock[2] -= 1
            eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(random.uniform(3,7) / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Tracer Ability 2 (R)":
    @Event eachPlayer
    @Team 2
    @Hero tracer
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[26] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false
    @Condition eventPlayer.getNormalizedHealth() <= 0.5
    
    wait(random.uniform(0.25, 2) / ability_freq, Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: tracer a2 rand")
    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(13 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Tracer Ability 2 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero tracer
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[26] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == 0
    @Condition eventPlayer.bot_ability_lock[3] == false
    @Condition eventPlayer.look_target.player_used_dodge_cd > 0
    @Condition eventPlayer.look_target.player_used_dodge_cd >= eventPlayer.look_target.ability_react_chance

    wait(random.uniform(0.5, eventPlayer.look_target.player_react_time), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: tracer a2 rd")
    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(13 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Tracer Ultimate (All)":
    @Event eachPlayer
    @Team 2
    @Hero tracer
    @Condition bots_use_abilities == true
    @Condition bot_behavior[26] >= 2
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true

    wait(10 / ult_freq)
    if random.randint(0,9) < 3:
        #smallMessage(hostPlayer, "Debug: tracer ult")
        eventPlayer.mvmt_type_lock = true
        eventPlayer.mvmt_type = alt_mvmt_array[3]
        while (distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) >= 5 and eventPlayer.bot_ability_lock[2] > 0):
            eventPlayer.bot_ability_lock[2] -= 1
            eventPlayer.forceButtonPress(Button.ABILITY_1)
            wait(0.1)
            #smallMessage(hostPlayer, "Debug: tracer ult a1")
        eventPlayer.mvmt_type = default_mvmt_type
        eventPlayer.mvmt_type_lock = false
        if distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 7.5:
            wait(0.1)
            eventPlayer.forceButtonPress(Button.ULTIMATE)
            wait(0.5)
        if eventPlayer.bot_ability_lock[3] == false:
            eventPlayer.forceButtonPress(Button.ABILITY_2)
            #smallMessage(hostPlayer, "Debug: tracer ult a2")
    wait(10 / ult_freq)

    if RULE_CONDITION:
        goto RULE_START


rule "Tracer: Recall Tracker":
    @Event eachPlayer
    @Team 2
    @Hero tracer
    @Condition len(show_recall) > 0

    eventPlayer.recall_pos_array.append(eventPlayer.getPosition())
    if len(eventPlayer.recall_pos_array) >= 30:
        eventPlayer.recall_pos_array.remove(eventPlayer.recall_pos_array[0])
    wait(0.1)

    if RULE_CONDITION:
        goto RULE_START


rule "Tracer: Recall Tracker Display":
    @Event eachPlayer
    @Team 2
    @Hero tracer
    @Condition len(show_recall) > 0
    @Condition eventPlayer.isUsingAbility2() == true

    createEffect(show_recall, Effect.LIGHT_SHAFT, Color.ORANGE, eventPlayer.recall_pos_array[1], 0.5, EffectReeval.NONE)
    eventPlayer.recall_effect = getLastCreatedEntity()
    wait(1)
    destroyEffect(eventPlayer.recall_effect)


### Widowmaker Bot Abilities
rule "Bot Abilities: Widowmaker Primary Close (P)":
    @Event eachPlayer
    @Team 2
    @Hero widowmaker
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 7.5

    eventPlayer.ability_acc = 2
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Widowmaker Primary + Secondary Far (P)":
    @Event eachPlayer
    @Team 2
    @Hero widowmaker
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition())  >= 7.5

    eventPlayer.ability_acc = 1.75
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
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.apply_pressure == false
    
    wait(random.uniform(0, 2), Wait.ABORT_WHEN_FALSE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(0.9)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    if RULE_CONDITION:
        goto RULE_START

rule "Bot Abilities Widowmaker Ability 1 Simulation (All)":
    @Event eachPlayer
    @Team 2
    @Hero widowmaker
    @Condition bots_use_abilities == true
    @Condition bot_behavior[27] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false

    wait(random.uniform(3, 7) / ability_freq)
    #smallMessage(hostPlayer, "Debug: widow a1 sim")
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.general_randomizer = random.randint(0,2)
    if eventPlayer.general_randomizer == 0:
        eventPlayer.applyImpulse(Vector.UP, random.uniform(10,20), Relativity.TO_WORLD, Impulse.INCORPORATE_CONTRARY_MOTION)
    elif eventPlayer.general_randomizer == 1:
        eventPlayer.applyImpulse(Vector.UP * random.uniform(0,1) + Vector.LEFT * random.uniform(0,1), random.uniform(10,20), Relativity.TO_WORLD, Impulse.INCORPORATE_CONTRARY_MOTION)
    else: 
        eventPlayer.applyImpulse(Vector.UP * random.uniform(0,1) + Vector.RIGHT * random.uniform(0,1), random.uniform(10,20), Relativity.TO_WORLD, Impulse.INCORPORATE_CONTRARY_MOTION)
    wait(12 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false

    
rule "Bot Abilities: Widowmaker Ability 2 (R)":
    @Event eachPlayer
    @Team 2
    @Hero widowmaker
    @Condition bots_use_abilities == true
    @Condition bot_behavior[27] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false
    
    wait(random.uniform(3, 7) / ability_freq, Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: widow a2 rand")
    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(15 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false

    if RULE_CONDITION:
        goto RULE_START


## Support Bot Abilities
### Ana Bot Abilties
rule "Bot Abilities: Ana Primary Close (P)":
    @Event eachPlayer
    @Team 2
    @Hero ana
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_signal[2] == false
    @Condition eventPlayer.bot_ability_signal[3] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 15

    eventPlayer.ability_acc = 2
    eventPlayer.proj_type = 1
    set_proj_facing()
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ana Primary + Secondary Far (P)":
    @Event eachPlayer
    @Team 2
    @Hero ana
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_signal[2] == false
    @Condition eventPlayer.bot_ability_signal[3] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition())  >= 15

    eventPlayer.ability_acc = 2
    eventPlayer.proj_type = 0
    set_default_facing()
    eventPlayer.general_randomizer = random.randint(0,2)
    if eventPlayer.general_randomizer != 0:
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
    @Condition bots_use_abilities == true
    @Condition eventPlayer.apply_pressure == false
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
    @Condition bots_use_abilities == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    
    wait(random.uniform(5,10) / ability_freq, Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Ana a1 rand")
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.bot_ability_signal[2] = true
    eventPlayer.ability_acc = 2 
    eventPlayer.proj_type = 3
    set_proj_facing()
    wait(0.5)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.5)
    eventPlayer.bot_ability_signal[2] = false
    wait(14 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ana Ability 1 (P + Rs)":
    @Event eachPlayer
    @Team 2
    @Hero ana
    @Condition bots_use_abilities == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.look_target.player_used_stun_cd > 0
    @Condition eventPlayer.look_target.player_used_stun_cd >= eventPlayer.look_target.ability_react_chance 
    
    wait(random.uniform(0.5, eventPlayer.look_target.player_react_time))
    #smallMessage(hostPlayer, "Debug: Ana a1 rs")
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.bot_ability_signal[2] = true
    eventPlayer.ability_acc = 2 
    eventPlayer.proj_type = 3
    set_proj_facing()
    wait(0.5)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.5)
    eventPlayer.bot_ability_signal[2] = false
    wait(14 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ana Ability 2 Damage (P)":
    @Event eachPlayer
    @Team 2
    @Hero ana
    @Condition bots_use_abilities == true
    @Condition bot_behavior[28] >= 1
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false

    wait(random.uniform(3,7) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.bot_ability_signal[3] = true
    eventPlayer.ability_acc = 2 
    eventPlayer.proj_type = 4
    set_proj_facing()
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    eventPlayer.bot_ability_signal[3] = false
    wait(10 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Ana Ability 2 Heal (R)":
    @Event eachPlayer
    @Team 2
    @Hero ana
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[28] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false
    @Condition eventPlayer.getNormalizedHealth() <= 0.50

    wait(random.uniform(0.25,1))
    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.bot_ability_signal[3] = true
    eventPlayer.ability_acc = 2 
    set_ground_facing()
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.1)
    if eventPlayer.apply_pressure == false:
        set_default_facing()
    eventPlayer.bot_ability_signal[3] = false
    wait(10 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false

    if RULE_CONDITION:
        goto RULE_START


### Baptiste Bot Abilities
rule "Bot Abilities: Baptiste Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero baptiste
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_signal[4] == false

    eventPlayer.ability_acc = 3
    set_default_facing()
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
    @Condition bots_use_abilities == true
    @Condition bot_behavior[29] >= 1
    @Condition eventPlayer.bot_ability_lock[3] == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.5

    wait(random.uniform(1,2), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Bap a1 H")
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(15 / ability_freq)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Baptiste Ability 2 (BB2 + H)":
    @Event eachPlayer
    @Team 2
    @Hero baptiste
    @Condition bots_use_abilities == true
    @Condition bot_behavior[29] >= 2
    @Condition eventPlayer.bot_ability_lock[3] == false
    @Condition eventPlayer.getNormalizedHealth() <= 0.4

    wait(random.uniform(0.5,1), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Bap a2 H")
    eventPlayer.bot_ability_lock[3] = true
    set_ground_facing()
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    set_default_facing()
    wait(25 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Baptiste Ultimate (BB3)":
    @Event eachPlayer
    @Team 2
    @Hero baptiste
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[29] >= 3
    @Condition eventPlayer.apply_pressure == true


    wait(10 / ult_freq)
    if random.randint(0,9) < 3:
        #smallMessage(hostPlayer, "Debug: Bap ult")
        eventPlayer.bot_ability_signal[4] = true
        eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        set_ground_facing()
        wait(0.1)
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(0.1)
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
        set_default_facing()
        eventPlayer.bot_ability_signal[4] = false
        wait(10 / ult_freq)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Baptiste Jump":
    @Event eachPlayer
    @Team 2
    @Hero baptiste
    @Condition default_jump_enabled == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isOnGround() == true
    
    wait(random.uniform(1, 3) / ability_freq, Wait.ABORT_WHEN_FALSE)
    if random.randint(0,9) < 7:
        eventPlayer.startForcingButton(Button.CROUCH)
        wait(random.uniform(0.5, 0.9))
        eventPlayer.stopForcingButton(Button.CROUCH)
        wait(random.uniform(0.1, 0.5))
        eventPlayer.forceButtonPress(Button.JUMP)
    else:
        eventPlayer.mvmt_type_lock = true
        eventPlayer.mvmt_type = alt_mvmt_array[0]
        for eventPlayer.bot_mvmt_var in range(0,20,1):
            eventPlayer.startForcingButton(Button.CROUCH)
            wait(random.uniform(0.05,0.35))
            eventPlayer.stopForcingButton(Button.CROUCH)
            wait(random.uniform(0.1,0.2))
        eventPlayer.mvmt_type = default_mvmt_type
        eventPlayer.mvmt_type_lock = false
    wait(5 / ability_freq)

    if RULE_CONDITION:
        goto RULE_START


### Brigitte Bot Abilities
rule "Bot Abilities: Brig Primary":
    @Event eachPlayer
    @Team 2
    @Hero brigitte
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_signal[1] == false
    @Condition eventPlayer.bot_ability_signal[2] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 7
    
    eventPlayer.ability_acc = 2
    set_default_facing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999, Wait.ABORT_WHEN_FALSE)

    if RULE_CONDITION:
        goto RULE_START

        
rule "Bot Abilities: Brig Secondary (H)":
    @Event eachPlayer
    @Team 2
    @Hero brigitte
    @Condition bots_use_abilities == true
    @Condition bot_behavior[30] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[1] == false
    @Condition eventPlayer.getNormalizedHealth() <= 0.25

    #smallMessage(hostPlayer, "Debug: Brig Shield H")
    wait(random.uniform(0.1,0.5))
    eventPlayer.bot_ability_signal[1] = true
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(random.uniform(3,7))
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.bot_ability_signal[1] = false
    wait(random.uniform(2,5) / ability_freq)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Brig Secondary (Rb)":
    @Event eachPlayer
    @Team 2
    @Hero brigitte
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[30] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[1] == false
    @Condition eventPlayer.look_target.player_used_block_cd > 0
    @Condition eventPlayer.look_target.player_used_block_cd >= eventPlayer.look_target.ability_react_chance
    
    if eventPlayer.look_target.player_used_stun_cd == 0 or eventPlayer.bot_ability_lock[1] == true:
        #smallMessage(hostPlayer, "Debug: Brig Shield Rb")
        wait(random.uniform(0.1,0.5))
        eventPlayer.bot_ability_signal[1] = true
        eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
        eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
        wait(random.uniform(1, eventPlayer.look_target.player_react_time * 2))
        eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
        eventPlayer.bot_ability_signal[1] = false
    wait(random.uniform(3,7) / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Brig Secondary Combo Random (P)":
    @Event eachPlayer
    @Team 2
    @Hero brigitte
    @Condition bots_use_abilities == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[1] == false
    
    wait(random.uniform(3,7) / ability_freq, Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Brig Bash P")
    eventPlayer.bot_ability_lock[1] = true
    brig_bash_combo()
    eventPlayer.bot_ability_lock[1] = false
    if random.randint(0,3) == 0 and eventPlayer.bot_ability_lock[2] == false and eventPlayer.look_target.getNormalizedHealth() <= 0.5:
        #smallMessage(hostPlayer, "Debug: Brig Bash P w")
        eventPlayer.bot_ability_lock[2] = true
        brig_whip_shot()
        wait(4 / ability_freq)
        eventPlayer.bot_ability_lock[2] = false
        wait(1 / ability_freq)
    else:
        wait(5 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Secondary Combo (Rd Rs)":
    @Event eachPlayer
    @Team 2
    @Hero brigitte
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[1] == false
    @Condition (eventPlayer.look_target.player_used_dodge_cd > 0 or eventPlayer.look_target.player_used_stun_cd > 0)
    @Condition (eventPlayer.look_target.player_used_dodge_cd >= eventPlayer.look_target.ability_react_chance or eventPlayer.look_target.player_used_stun_cd >= eventPlayer.look_target.ability_react_chance )
    
    #smallMessage(hostPlayer, "Debug: Brig Bash Rd/s")
    eventPlayer.bot_ability_var = distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition())
    if eventPlayer.look_target.player_used_stun_cd == 0 or eventPlayer.bot_ability_var > 12:
        wait(random.uniform(0.25, eventPlayer.look_target.player_react_time))
        eventPlayer.startFacing(vect(eventPlayer.getEyePosition().x + random.uniform(-20,20), eventPlayer.getEyePosition().y + random.uniform(-5,20), eventPlayer.getEyePosition().z + random.uniform(-20,20)), 3000, Relativity.TO_WORLD, FacingReeval.NONE)
    else:
        wait(random.uniform(eventPlayer.look_target.player_react_time / 2, eventPlayer.look_target.player_react_time * 2))
    eventPlayer.bot_ability_lock[1] = true
    brig_bash_combo()
    wait(5 / ability_freq)
    eventPlayer.bot_ability_lock[1] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Brigitte Ability 1 (P)":
    @Event eachPlayer
    @Team 2
    @Hero brigitte
    @Condition bots_use_abilities == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 20

    
    wait(random.uniform(3, 7) / ability_freq, Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Brig a1 p")
    eventPlayer.bot_ability_lock[2] = true
    brig_whip_shot()
    eventPlayer.bot_ability_lock[2] = false
    wait(4 / ability_freq)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Brigitte Ability 1 (P + H)":
    @Event eachPlayer
    @Team 2
    @Hero brigitte
    @Condition bots_use_abilities == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.getNormalizedHealth() <= 0.5
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 7

    wait(random.uniform(1, 3) / ability_freq, Wait.ABORT_WHEN_FALSE)

    #smallMessage(hostPlayer, "Debug: Brig a1 p H")
    eventPlayer.bot_ability_lock[2] = true
    brig_whip_shot()
    eventPlayer.bot_ability_lock[2] = false
    wait(4 / ability_freq)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Ablities: Brigitte Ultimate":
    @Event eachPlayer
    @Team 2
    @Hero brigitte
    @Condition bots_use_abilities == true
    @Condition bot_behavior[30] >= 2
    @Condition eventPlayer.isAlive() == true

    wait(10 / ult_freq)
    if random.randint(0,9) < 3:
        #smallMessage(hostPlayer, "Debug: Brig ult")
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(10 / ult_freq)
    if RULE_CONDITION:
        goto RULE_START


def brig_bash_combo():
    @Name "SUB: brig_bash_combo"

    eventPlayer.bot_ability_signal[1] = true
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(0.1)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    set_default_facing()
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.bot_ability_signal[1] = false


def brig_whip_shot():
    @Name "SUB: brig_whip_shot"

    eventPlayer.bot_ability_signal[2] = true
    eventPlayer.proj_type = 3
    set_proj_facing()
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(0.1)
    set_default_facing()
    eventPlayer.bot_ability_signal[2] = false


### Kiriko Bot Abilities
rule "Bot Abilities: Kiriko Secondary (P)":
    @Event eachPlayer
    @Team 2
    @Hero kiriko
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.ability_acc = 3
    eventPlayer.proj_type = 2
    set_proj_facing()
    wait(0.5)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Ablities: Kiriko Ability 1 (H)":
    @Event eachPlayer
    @Team 2
    @Hero kiriko
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.7
    
    #smallMessage(hostPlayer, "Debug: Kiri a1 H")
    set_healing_facing()
    wait(random.uniform(0.5,1.5))
    if eventPlayer.look_target == null:
        goto RULE_START
    eventPlayer.startForcingButton(Button.ABILITY_1)
    wait(1)
    eventPlayer.stopForcingButton(Button.ABILITY_1)
    if eventPlayer.apply_pressure == true:
        set_proj_facing()
    else:
        set_default_facing()
    wait(7 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Ablities: Kiriko Ability 2 (H)":
    @Event eachPlayer
    @Team 2
    @Hero kiriko
    @Condition bots_use_abilities == true
    @Condition bot_behavior[31] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.4
    @Condition eventPlayer.is_healing_facing == false
    @Condition eventPlayer.bot_ability_lock[3] == false
    
    wait(random.uniform(0.25, 1), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Kiri a2 H")
    eventPlayer.bot_ability_lock[3] = true
    set_ground_facing()
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.1)
    if eventPlayer.apply_pressure == true:
        set_proj_facing()
    else:
        set_default_facing()
    wait(14 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Ablities: Kiriko Ability 2 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero kiriko
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[31] >= 1
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false
    @Condition eventPlayer.look_target.player_used_dodge_cd > 0
    @Condition eventPlayer.look_target.player_used_dodge_cd >= eventPlayer.look_target.ability_react_chance * 2
    
    wait(random.uniform(0.25, 1), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Kiri a2 Rd")
    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    set_ground_facing()
    wait(0.5)
    if eventPlayer.apply_pressure == true:
        set_proj_facing()
    else:
        set_default_facing()
    wait(14 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false
    if RULE_CONDITION:
        goto RULE_START
        

rule "Bot Ablities: Kiriko Ultimate (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero kiriko
    @Condition bots_use_abilities == true
    @Condition bot_behavior[31] >= 2
    @Condition eventPlayer.isAlive() == true

    wait(10 / ult_freq)
    if random.randint(0,9) < 3:
        #smallMessage(hostPlayer, "Debug: Kiri ult")
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(10 / ult_freq)
    if RULE_CONDITION:
        goto RULE_START



### Lifeweaver Bot Abilities
rule "Bot Abilities Lifeweaver 2nd Weapon Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero lifeweaver
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_signal[1] == false

   eventPlayer.ability_acc = 2
   eventPlayer.proj_type = 2
   set_proj_facing()
   eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
   wait(9999, Wait.ABORT_WHEN_FALSE)
   if RULE_CONDITION:
       goto RULE_START


rule "Bot Abilities Lifeweaver Ability 1 (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero lifeweaver
    @Condition bots_use_abilities == true
    @Condition bot_behavior[32] >= 1
    @Condition eventPlayer.isAlive() == true
 
    wait(random.uniform(5,10) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_signal[1] = true
    set_ground_facing()
    wait(0.1)
    eventPlayer.startForcingButton(Button.ABILITY_1)
    wait(0.1)
    if eventPlayer.apply_pressure == true:
        set_proj_facing()
    else:
        set_default_facing()
    eventPlayer.bot_ability_signal[1] = false
    wait(12 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities Lifeweaver Jump (All)":
    @Event eachPlayer
    @Team 2
    @Hero lifeweaver
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false

    wait(random.uniform(4,7) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[2] = true
    #smallMessage(hostPlayer, "Debug: LW Jump All")
    wait(random.uniform(0.4, 0.9))
    eventPlayer.forceButtonPress(Button.JUMP)
    wait(random.uniform(0.2, 0.5))
    eventPlayer.forceButtonPress(Button.JUMP)
    wait(5 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false
    
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities Lifeweaver Jump (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero lifeweaver
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.look_target.player_used_dodge_cd > 0
    @Condition eventPlayer.look_target.player_used_dodge_cd >= eventPlayer.look_target.ability_react_chance
 
    wait(random.uniform(0.25,1), Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[2] = true
    #smallMessage(hostPlayer, "Debug: LW Jump Reactive")
    wait(random.uniform(0.4, 0.9))
    eventPlayer.forceButtonPress(Button.JUMP)
    wait(random.uniform(0.2, 0.5))
    eventPlayer.forceButtonPress(Button.JUMP)
    wait(5 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false

    if RULE_CONDITION:
        goto RULE_START

rule "Bot Abilities Lifeweaver Ability 2 (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero lifeweaver
    @Condition bots_use_abilities == true
    @Condition bot_behavior[32] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false
 
    wait(random.uniform(5,10) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.bot_ability_signal[1] = true
    set_healing_facing()
    wait(0.1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.1)
    if eventPlayer.apply_pressure == true:
        set_proj_facing()
    else:
        set_default_facing()
    eventPlayer.bot_ability_signal[1] = false
    wait(20 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities Lifeweaver Ultimate (BB3)":
    @Event eachPlayer
    @Team 2
    @Hero lifeweaver
    @Condition bots_use_abilities == true
    @Condition bot_behavior[32] >= 3
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[4] == false
 
    wait(10 / ult_freq)
    if random.randint(0,9) < 3:
        #smallMessage(hostPlayer, "debug: lifeweaver ult")
        eventPlayer.bot_ability_lock[4] = true
        eventPlayer.bot_ability_signal[1] = true
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(0.5)
        eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
        wait(0.5)
        eventPlayer.bot_ability_signal[1] = false
        wait(10 / ult_freq)
        eventPlayer.bot_ability_lock[4] = false
    if RULE_CONDITION:
        goto RULE_START


### Lucio Bot Abilities
rule "Bot Abilities: Lucio Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero lucio
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.ability_acc = 2
    eventPlayer.proj_type = 1
    set_proj_facing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START



rule "Bot Abilities: Lucio Secondary (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero lucio
    @Condition bots_use_abilities == true
    @Condition bot_behavior[33] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() != 1
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) < 7.75
    
    wait(random.uniform(0.25, 1.5), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Lucio m2")
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    wait(6 / ability_freq)
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
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition bot_behavior[32] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false
    @Condition eventPlayer.look_target.player_used_dodge_cd > 0
    @Condition eventPlayer.look_target.player_used_dodge_cd >= eventPlayer.look_target.ability_react_chance * 2
    
    wait(random.uniform(0.25, 1), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Lucio a2 Rd")
    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(15 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Lucio Ability 2 Random (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero lucio
    @Condition bots_use_abilities == true
    @Condition bot_behavior[32] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false
    
    wait(random.uniform(5, 10) / ability_freq, Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Lucio a2 rand")
    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(15 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Lucio Ability 2 Heal (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero lucio
    @Condition bots_use_abilities == true
    @Condition bot_behavior[33] >= 3
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false
    @Condition eventPlayer.getNormalizedHealth() <= 0.5

    wait(random.uniform(0.5,2), Wait.ABORT_WHEN_FALSE)
    #smallMessage(hostPlayer, "Debug: Lucio a2 Heal")
    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(5 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Ablities: Lucio Ultimate Random (BB4)":
    @Event eachPlayer
    @Team 2
    @Hero lucio
    @Condition bots_use_abilities == true
    @Condition bot_behavior[33] >= 4
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[4] == false

    wait(10 / ult_freq)
    if random.randint(0,9) < 2:
        eventPlayer.bot_ability_lock[4] = true
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(10 / ult_freq)
        eventPlayer.bot_ability_lock[4] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Ablities: Lucio Ultimate AJAX Simulator (BB4 + H)":
    @Event eachPlayer
    @Team 2
    @Hero lucio
    @Condition bots_use_abilities == true
    @Condition bot_behavior[33] >= 4
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.25
    @Condition eventPlayer.bot_ability_lock[4] == false

    wait(10 / ult_freq)
    if random.randint(0,9) < 3:
        eventPlayer.bot_ability_lock[4] = true
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(10 / ult_freq)
        eventPlayer.bot_ability_lock[4] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Lucio AD Turnaround (Random Strafe)":
    @Event eachPlayer
    @Team 2
    @Hero lucio
    @Condition bots_use_abilities == true
    @Condition default_mvmt_type == 0
    @Condition eventPlayer.isAlive() == true
    
    eventPlayer.mvmt_type_lock = true
    eventPlayer.mvmt_type = alt_mvmt_array[0]
    eventPlayer.bot_mvmt_var = 0
    wait(random.uniform(5,20) / ability_freq, Wait.ABORT_WHEN_FALSE)
        if eventPlayer.apply_pressure == true:
            eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
            eventPlayer.proj_type = 0
        while eventPlayer.bot_mvmt_var < 15:
            if not RULE_CONDITION:
                return   
            eventPlayer.startFacing(vect(eventPlayer.getPosition().x + 1000, eventPlayer.getPosition().x - 10, eventPlayer.getPosition().x + 1000), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
            wait(random.uniform(0.25,0.5), Wait.ABORT_WHEN_FALSE)
            eventPlayer.startFacing(vect(eventPlayer.getPosition().x - 1000, eventPlayer.getPosition().x - 10, eventPlayer.getPosition().x - 1000), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
            wait(random.uniform(0.25,0.5), Wait.ABORT_WHEN_FALSE)
            eventPlayer.bot_mvmt_var += 1  
        eventPlayer.mvmt_type = default_mvmt_type
        eventPlayer.mvmt_type_lock = false
        if eventPlayer.apply_pressure == true:
            eventPlayer.proj_type = 1
            set_proj_facing()
            eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
        else:
            set_default_facing()
    wait(15)
    if RULE_CONDITION:
        goto RULE_START


### Mercy Bot Abilities
rule "Bot Ablities: Mercy Target (All)`":
    @Event eachPlayer
    @Team 2
    @Hero mercy
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.old_look_target != eventPlayer.look_target

    eventPlayer.setWeapon(1)
    set_healing_facing()
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    wait(0.25, Wait.ABORT_WHEN_FALSE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)


rule "Bot Ablities: Mercy Healing (BB1)":
    @Event eachPlayer
    @Team 2
    @Hero mercy
    @Condition bot_behavior[34] >= 1
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.look_target.getNormalizedHealth() <= 0.90
    
    eventPlayer.setWeapon(1)
    set_healing_facing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    waitUntil(eventPlayer.look_target.getNormalizedHealth() == 1, 9999)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)

    if RULE_CONDITION:
        goto RULE_START


rule "Bot Ablities: Mercy Ability 1 (All)":
    @Event eachPlayer
    @Team 2
    @Hero mercy
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    
    
    eventPlayer.setWeapon(1)
    set_healing_facing()
    wait(random.uniform(2.5, 5) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.startForcingButton(Button.ABILITY_1)
    wait(random.uniform(0.5, 2))
    eventPlayer.general_randomizer = random.randint(0,9)
    if eventPlayer.isUsingUltimate():
        eventPlayer.general_randomizer -= 3
    if eventPlayer.isUsingAbility1():
        if eventPlayer.general_randomizer < 3:
            eventPlayer.forceButtonPress(Button.CROUCH)
        elif eventPlayer.general_randomizer < 6:
            eventPlayer.startFacing(vect(eventPlayer.getEyePosition().x + random.uniform(-100,100), eventPlayer.getEyePosition().y + random.uniform(-5,20), eventPlayer.getEyePosition().z + random.uniform(-100,100)), 3000, Relativity.TO_WORLD, FacingReeval.NONE)
            wait(0.1)
            eventPlayer.forceButtonPress(Button.JUMP)
            wait(0.1)
            set_healing_facing()
    eventPlayer.stopForcingButton(Button.ABILITY_1)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Ablities: Mercy Start Hover (All)":
    @Event eachPlayer
    @Team 2
    @Hero mercy
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isUsingAbility1() == false
    @Condition eventPlayer.isOnGround() == false
    
    eventPlayer.startForcingButton(Button.JUMP)


rule "Bot Ablities: Mercy Stop Hover (All)":
    @Event eachPlayer
    @Team 2
    @Hero mercy
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isOnGround() == true
    
    eventPlayer.stopForcingButton(Button.JUMP)


rule "Bot Ablities: Mercy Ultimate (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero mercy
    @Condition bots_use_abilities == true
    @Condition bot_behavior[34] >= 2
    @Condition eventPlayer.isAlive() == true

    wait(10 / ult_freq)
    if random.randint(0,9) < 3:
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(10 / ult_freq)
    if RULE_CONDITION:
        goto RULE_START


### Moira Bot Abilities
rule "Bot Abilities: Moira Secondary":
    @Event eachPlayer
    @Team 2
    @Hero moira
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true

    eventPlayer.ability_acc = 3
    set_default_facing()
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Moira Ability 1 (All)":
    @Event eachPlayer
    @Team 2
    @Hero moira
    @Condition bots_use_abilities == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.getNormalizedHealth() <= 0.33
    
    wait(random.uniform(0, 2), Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(7 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Moira Ability 1 (Rd)":
    @Event eachPlayer
    @Team 2
    @Hero moira
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[2] == false
    @Condition eventPlayer.look_target.player_used_dodge_cd > 0
    @Condition eventPlayer.look_target.player_used_dodge_cd > eventPlayer.look_target.ability_react_chance * 2

    
    wait(random.uniform(0.25, 1), Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_lock[2] = true
    eventPlayer.forceButtonPress(Button.ABILITY_1)
    wait(7 / ability_freq)
    eventPlayer.bot_ability_lock[2] = false
    if RULE_CONDITION:
        goto RULE_START

        
rule "Bot Abilities: Moira Ability 2 Damage (BB1 + P)":
    @Event eachPlayer
    @Team 2
    @Hero moira
    @Condition bots_use_abilities == true
    @Condition bot_behavior[35] >= 1
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_lock[3] == false

    wait(random.uniform(3,7) / ability_freq,Wait.ABORT_WHEN_FALSE)
    eventPlayer.proj_type = 4
    set_proj_facing()
    wait(0.1)
    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.5)
    eventPlayer.forceButtonPress(Button.SECONDARY_FIRE)
    wait(0.5)
    eventPlayer.proj_type = 0
    set_default_facing()
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(8 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Moira Ability 2 Heal (BB2)":
    @Event eachPlayer
    @Team 2
    @Hero moira
    @Condition bots_use_abilities == true
    @Condition bot_behavior[35] >= 2
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.getNormalizedHealth() <= 0.5
    @Condition eventPlayer.bot_ability_lock[3] == false

    wait(random.uniform(0.5, 1.5))
    eventPlayer.bot_ability_lock[3] = true
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(0.5)
    eventPlayer.forceButtonPress(Button.PRIMARY_FIRE)
    wait(0.5)
    set_default_facing()
    if eventPlayer.apply_pressure == true:
        eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(8 / ability_freq)
    eventPlayer.bot_ability_lock[3] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Moira Ulitmate (BB3)":
    @Event eachPlayer
    @Team 2
    @Hero moira
    @Condition bots_use_abilities == true
    @Condition bot_behavior[35] >= 3
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true

    wait(10 / ult_freq)
    if random.randint(0,9) < 3:
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(8)
        wait(10 / ult_freq)
    if RULE_CONDITION:
        goto RULE_START


### Zenyatta Bot Abilities
rule "Bot Pressure: Zenyatta Primary (P)":
    @Event eachPlayer
    @Team 2
    @Hero zenyatta
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.bot_ability_signal[1] == false

    eventPlayer.ability_acc = 3
    eventPlayer.proj_type = 1
    set_proj_facing()
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(9999,Wait.ABORT_WHEN_FALSE)
    if RULE_CONDITION:
        goto RULE_START



rule "Bot Abilities: Zenyatta Secondary (All)":
    @Event eachPlayer
    @Team 2
    @Hero zenyatta
    @Condition eventPlayer.isAlive() == true
    
    wait(random.uniform(5,10) / ability_freq, Wait.ABORT_WHEN_FALSE)
    eventPlayer.bot_ability_signal[1] = true
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    wait(random.uniform(1,2.5))
    if eventPlayer.apply_pressure == false:
        eventPlayer.forceButtonPress(Button.MELEE)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.bot_ability_signal[1] = false
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Zenyatta Ability 2 (BB1 + P)":
    @Event eachPlayer
    @Team 2
    @Hero zenyatta
    @Condition bots_use_abilities == true
    @Condition bot_behavior[36] >= 1
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isUsingAbility2() == false
    
    eventPlayer.forceButtonPress(Button.ABILITY_2)
    wait(2 / ability_freq)
    if RULE_CONDITION:
        goto RULE_START

rule "Bot Abilities: Zenyatta Melee (R)":

    @Event eachPlayer
    @Team 2
    @Hero zenyatta
    @Condition bots_use_abilities == true
    @Condition bots_react == true
    @Condition eventPlayer.apply_pressure == true
    @Condition eventPlayer.isAlive() == true
    @Condition distance(eventPlayer.getEyePosition(), eventPlayer.look_target.getEyePosition()) <= 2.5
    
    wait(random.uniform(0.25,1), Wait.ABORT_WHEN_FALSE)
    eventPlayer.forceButtonPress(Button.MELEE)
    wait(3 / ability_freq)
    
    if RULE_CONDITION:
        goto RULE_START


rule "Bot Abilities: Zenyatta Ultimate Random (BB3)":
    @Event eachPlayer
    @Team 2
    @Hero zenyatta
    @Condition bots_use_abilities == true
    @Condition bot_behavior[36] >= 2
    @Condition eventPlayer.isAlive() == true

    wait(10 / ult_freq)
    if random.randint(0,9) < 3:
        eventPlayer.forceButtonPress(Button.ULTIMATE)
        wait(6)
        wait(10 / ult_freq)
    if RULE_CONDITION:
        goto RULE_START