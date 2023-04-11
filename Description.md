# Customizable Aim Trainer. 

A very cool CAT.
&nbsp;∧,,,∧
( •‿• )
/つ   づ

## Features
* ==Projectile guide== - Learn to lead projectiles
* ==Pressure mode== - Bots shoot back! Select from 4 difficulty levels
* ==Custom spawn location== - Train on any map
* ==Reactive bots== - Input Reading, just like Morgott!
* ==Customizable movement== - Choose between different strafe patterns, strafe timing and movement speeds.
* ==Bots can use offensive, defensive, and ultimate abilities for nearly every hero.==

## Settings
![](https://cdn.workshop.codes/60zbu917mheaggb02gk9ay916fwi)

### Player Settings
These settings are available to all players in the lobby.

| Menu Option | Description |
| -------- | -------- |
| ==Change Hero== |  Return to hero select screen. |
| ==Mercy Damage Boost== | Toggles Mercy damage boost effect on player. |
| ==Nano Boost== | Toggles Nano boost effect on player. Inaccurate damage reduction when stacking DR abilities. |
| ==Kitsune Rush== | Toggles Kiriko's kitsune rush. Refreshes until disabled. |
|==Player Movement Speed== | Toggle to enable/disable player speed boost.  Use left/right movement to select the speed effect. |
| ==Projectile Guide== | Toggles a orb showing where to lead a projectile of your hero, based on the bots current velocity. Use left/right movement inputs to select the ability you want to practice |
| ==Infinite Ammo== | Toggles Infinite Ammo. |

### Bot Settings
These settings are only available to the host of the lobby.

| Menu Option | Description |
| -------- | -------- |
| ==Change Bot Count== | Toggling increases the number of bots in the lobby up to 12. Incrementing past 12 will reset the count to 1. Left/right movement can also be used to change the count. |
| ==Bot Movement Pattern== | Use left and right movement keys to select the type of strafe pattern you would like bots to use. |
| ==Bot Movement Difficulty== | Use left/right movement to select the frequency bots change strafe directions. |
| ==Bot Movement Speed== | Toggle to enable/disable bot speed boost.  Use left/right movement to select the speed effect.  |
| ==Set Custom Spawn Point== | Toggle to set bots to spawn at your current position. Use left/right movement to change the boundary where bots are allowed to move in. |
| ==Select Bot Heroes== | Use left and right movement keys to navigate. Use Toggle to enable/disable the displayed hero. This can also be done in the workshop settings menu if you would like to save the list of bots in a preset. |

### Game Modes
This setting is only available to the host of the lobby.

| Menu Option | Description |
| -------- | -------- |
| ==Pressure Mode== | Toggle to start a game mode where the bot closest to your crosshair will attack you. Additional stats will be added to the top left HUD. Use left/right movement to change bot accuracy.|

## Controls
![](https://cdn.workshop.codes/8w7j3vghbw6yos6mclqjk5v36235)

| Button | Action |
| -------- | -------- |
| ==Interact== | Open / Close the menu. |
| ==WASD / Left Joystick== | Used to navigate up/down the rows of the menu and left/right to configure certain menu options. |
| ==Primary Fire / Ability 2== | Toggle the menu row currently highlighted. |

## Feature Tutorials
### Custom Aim Training Location

Using the ==Set Custom Spawn Point== option you can set bots to spawn at any point on any map. Perfect for practicing cover usage and shooting at different elevation.

![](https://cdn.workshop.codes/4hvzzvzw7oqus3yatv4u6484dm7k)


1. Import this code into a custom game lobby.
2. Select the map tile in the custom game settings menu.
3. Scroll to the map you wish to practice on, and toggle the off button to on. _To select a specific point on a control map return to the settings menu, select the modes tile, then the skirmish tile, then assign "Limit Valid Control Points" to the point you would like to practice on._
4. Start the game mode.
5. Select a hero.
6. Navigate to the center location where you would like your bots to spawn.
7. Press Interact to open up the menu.
8. Scroll down the menu until ==Set Custom Spawn Point== is highlighted in  yellow.
9. Press Primary Fire or Ability 2 to toggle this setting on.
10. You may now use left/right movement to decrease/increase the boundary radius of the bots.
11. Press Interact to close the menu.
12. The bots will now respawn at the location you have assigned.

### Leading Target for Projectile Abilities
Using the ==Projectile Guide== option creates a predictive target for projctile aim.
![](https://cdn.workshop.codes/vvvwlwtv6covzu5ezpy6wuhmb37b)

1. Import this code into a custom game lobby.
2. Start the game mode.
3. Select a hero.
4. Press Interact to open up the menu.
5. Scroll down the menu until ==Projectile Guide== is highlighted.
6. Press Primary Fire or Ability 2 to toggle this setting on.
7. Use left/right movement to select which ability you would like to practice. _If the text is highlighted green, then the selected ability is a projectile for your hero . If the text is highlighted red, the selected ability is not a projectile for the hero you selected._
8. Press Interact to close the menu.
9. A black dot outlined by a yellow orb should now appear near the target closest to your crosshair. Aiming for the black dot will result in a hit, assuming the target does not change the direction it is strafing.


* I recommend navigating to the ==Bot Movement== menu and using left movement inputs to set it to "Custom" on to test out this feature.
* Note: The target aims for the targets camera, which may slightly different from the targets crit box.
* Bug: The target is slightly too low for arcing projectiles at ranges greater than 20 meters.

### Bots Shoot at You During Training (Pressure Mode)
![](https://cdn.workshop.codes/mwk2qaotpbwtub307bumjkbm17yi)
1. Import this code into a custom game lobby.
2. Start the game mode.
3. Select a hero.
4. Press Interact to open up the menu.
5. Scroll down the menu until ==Pressure Mode== is highlighted.
6. Press Primary Fire or Ability 2 to toggle this setting on. _Toggle again to make the bots unkillable. This is useful for practicing 1v1s since you do not have to wait for the bot to respawn._
7. Use left/right movement to select the accuracy of the bots.
9. New stats (KDR, Deaths, Net Damage) should appear on the top left of your screen.

* Projectile heroes will try to read your movement and lead their shots when aiming for you, though it will not account for gravity on projectiles.
* Bots will use react to your input if ==Bots React== is set to on in the workshop settings menu.
* Bots will use offensive abilities if the setting "Use Abilities" is set to true under the ==Bot Movement== menu option.
* Bots will use defensive abilities and ultimates if enabled in under the setting 7.x. in the workshop settings menu.
* By default this code has no cooldowns for abilities. If you want to use this setting I recommend setting under 'Heroes -> General -> Ability Cooldown Time' to 100% so that your cooldown timers will be similar to an actual game. 
* Also note that Echo's flight and Doomfist's slam are set to 10% by default because of a weird interaction when canceling these abilties with 0% cooldowns. If practicing these heroes go to 'Heroes -> Doomfist  / Echo-> Seismic Slam Cooldown Time / Flight Cooldown Time' and set them to 100%

## Workshop Settings Menu
### UI Settings
| Setting | Description |
| -------- | -------- |
| ==Show Damage Numbers== | Show Damage Numbers above the targeted bots head. |
| ==Show Server Load and Coordinates== | Shows the server load and the player's current coordinates. Useful for getting the numbers for the Custom Bot Spawn setting. |
| ==Show Startup Message== | Toggle to disable the help message that appears at the start of the game mode. |
### Number of Bot Setting
| Setting | Description |
| -------- | -------- |
| ==Number of Bots== | The default number of bots that will spawn when you start the game mode. |
### Bot Ability Settings
| Setting | Description |
| -------- | -------- |
| ==Bots will use abilities== | Toggle for bots to use abilities. |
| ==Bots React== | Bots will read the players input and have a chance of using their own abilities in response. |
| ==Multiplier for Bots React== | Modifies how likely bots will use their abilities in response to thei player's input |
| ==Multiplier for Bot Ultimates== | Modifies how often bots use their ultimates. The default is a 30% chance every 10 seconds for most bots. |
### Bot Movement Settings
| Setting | Description |
| -------- | -------- |
| ==Strafe Pattern== | The type of strafe pattern you would like bots to use. |
| ==Difficulty== | How often bots swap strafe directions. |
| ==Bot Movement Speed== | Lets you change the movement speed for the bots, as if they were under the effect of one of the abilities in the list. |
| ==Randomly Change Strafe Patterns== | Every 5 seconds there is a 50% chance for bots to switch to one of the first 4 strafe pattern options. |
### Bot Movement Modifiers Settings
| Setting | Description |
| -------- | -------- |
| ==Custom Strafe Pattern - Minimum Wait== | The min time for a bot to wait before changing direction in the 'long strafe / custom' difficulty. |
| ==Custom Strafe Pattern - Maximum Wait== | The max time for a bot to wait before changing direction in the 'long strafe / custom' difficulty. |
| ==Bot Jumping== | Toggle for bots to randomly jump. |
| ==Bot Jumping - Minimum Wait== | The min time for a bot to wait before jumping. |
| ==Bot Jumping - Maximum Wait== | The max time for a bot to wait before jumping. |
| ==Bot Crouching== | Toggle for bots to randomly jump. |
| ==Bot Crouching - Maximum Wait== | The max time for a bot to wait before crouching. |

### Pressure Mode Settings
| Setting | Description |
| -------- | -------- |
| ==Bots Apply Pressure== | A toggle for the pressure mode to be enabled when starting the game mode |
| ==Bots Pressure Difficulty== | The accuracy of the bots applying pressure. |

### Pressure Mode Modifier Settings
| Setting | Description |
| -------- | -------- |
| ==Eliminations Reset Cooldowns== | Killing a bot will restore your health and reset all of your cooldowns, if supported by the workshop. Makes practicing 1v1s more fair. |
| ==Reset Health After Not Taking Damage== | Resets your health to full after not taking damage for 4 second in the killable bots pressure mode. |
| ==Punish Player Deaths== | The player is stunned for 0.5 seconds and the attacker is healed to full when the player dies in the killable bots pressure mode. |

### Speed Mode Settings
| Setting | Description |
| -------- | -------- |
| ==Increment Bot Movement Speed Every Elimination (JPYHG)== | A toggle to recreate a gamemode similar to ioStux DPO Aim Trainer |
| ==Speed Mode Timer== | How long to wait before going down a level. |
| ==Speed Mode Increment Percent Amount== | The percent amount to increase bot speed after an elimination. |
| ==Speed Mode Decrement Percent Amount== | The percent amount to decrease bot speed after failing to achieve an elimination. If set to zero the decrement amount will be the same as the increment amount. |

### Custom Spawn Settings
| Setting | Description |
| -------- | -------- |
| ==Use Custom Spawn Point== | A toggle to use the default spawn settings or customized spawn settings. |
| ==Spawn Size== | The custom radius bots attempt to traverse. |
| ==Spawn x coord== | The x coordinate of the custom spawn location. |
| ==Spawn y coord== | The y coordinate of the custom spawn location. |
| ==Spawn z coord== | The z coordinate of the custom spawn location. |

### Bot Tank Heroes Settings
* Toggles for all Tank heroes to be included in the hero pool when first starting up

### Bot Damage Heroes Settings
* Toggles for all Damage heroes to be included in the hero pool when first starting up

### Bot Support Heroes Settings
* Toggles for all Support heroes to be included in the hero pool when first starting up


### Bot Behavior Settings
| Setting | Description |
| -------- | -------- |
| ==Enable All Abilities== | Enables all bot abilities and ultimates regardless of what they are set to in the menu. |

### Bot Tank Hero Behavior Settings
* Menus to select which abilities should be enabled for every tank hero. Defensive abilities and ultimates disabled by default.

### Bot Damage Hero Behavior Settings
* Menus to select which abilities should be enabled for every damage hero. Defensive abilities and ultimates disabled by default.

### Bot Support Hero Behavior Settings
* Menus to select which abilities should be enabled for every support hero. Defensive abilities and ultimates disabled by default.


## Other Random Functions
* When not using pressure mode Zarya will generate charge when using her personal bubble.
* When not using pressure mode and facing a bot, Doomfist will generate charge for his power block.

## Bot Strafe Pattern Explaination
| Setting | Description |
| -------- | -------- |
| ==Seita== | A recreation of the movement seen in vaxta, adapted to work with custom spawn points. |
| ==Seita w/ long strafes== | The same as above, but every time the bots swap strafe directions there is a 20% chance that the bots strafe for longer than the difficulty setting assigned. The idea is to mess with your ability to predict when the bot is going to swap strafe directions.
| ==AD Strafes== | Classic ADAD spam. Ignores the boundaries set by the custom strafe option.
| ==8 Directional Strafes== | Similar to Seita's Pathing, except bots will simply input 1 one the 8 possible strafe directions. Ignores the boundaries set by the custom strafe option.
| ==No Movement== | Bots don't move. They will still jump, crouch and use abilities if enabled.
| ==Forward AD Strafes== | Bots AD strafe towards a player. I don't recommend this setting for general practice but the code for it is used for certain bot abilities so I thought I might as well leave it as an option if someone might have a specific senario they want to practice. Ignores the boundaries set by the custom strafe option.
| ==Forward Movement== | Same as above, except the bots just press W key.

**Discord**
* Report bugs on my discord: discord.gg/YPQ5ETNT45


**Github**
* Workshop mode created with OverPy 
* You can find the script to compile the workshop mode yourself here: https://github.com/a-bella-ciao/VXEAT-OW2-Aim-Trainer

**Credits**
* [VAXTA](https://workshop.codes/VAXTA) - Seita's original aim trainer
* [GGSYK](https://workshop.codes/GGSYK) - Kiriko and Sojourn ability usage
* KJRR5P -  Predictive projectile trainer by Yurodd
* [JPYHG](https://workshop.codes/JPYHG) - ioStux DPO Aim Trainer
