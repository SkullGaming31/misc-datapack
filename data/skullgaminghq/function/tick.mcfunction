#Torch Arrow
execute as @e[type=arrow] if items entity @s contents minecraft:tipped_arrow[potion_contents={custom_color:5373952}] as @s[nbt={inGround:true}] at @s run function skullgaminghq:torch_arrow/place_torch
# Fan: run fan logic for each item frame (wind charges in frames)
execute as @e[type=minecraft:item_frame] at @s run function skullgaminghq:fan/fan_tick
 

### 0) Convert pending strip markers to interaction entities (markers are created by spawn_nearby)
execute as @e[type=minecraft:armor_stand,tag=skull_strip_pending] at @s run summon minecraft:interaction ~ ~ ~ {Tags:["skull_strip_target","skull_strip_new"],width:1.2f,height:1.2f,response:1b}
execute as @e[type=minecraft:armor_stand,tag=skull_strip_pending] at @s run kill @s

### 1) Remove targets that are no longer on stripped oak logs
execute as @e[type=minecraft:interaction,tag=skull_strip_target] at @s unless block ~ ~ ~ minecraft:stripped_oak_log run kill @s

### 2) Spawn targets near players FIRST (so they exist before the click)
execute as @a at @s run function skullgaminghq:strip/auto_spawn
execute as @a at @s run schedule function skullgaminghq:strip/spawn_nearby 1t

### 3) Handle right-clicks (drop planks at the log position, then break the log)
# Interaction entities store right-clicks in "interaction" data. 

# 3a) If clicked AND player holds an axe, break the log (no drops)
execute as @e[type=minecraft:interaction,tag=skull_strip_target] at @s unless entity @s[tag=skull_strip_new] \
  if block ~ ~ ~ minecraft:stripped_oak_log \
  if data entity @s interaction \
  on target if items entity @s weapon.mainhand #minecraft:axes \
  run setblock ~ ~ ~ air

# 3b) Spawn 4 planks as a dropped item at the center of the broken block
execute as @e[type=minecraft:interaction,tag=skull_strip_target] at @s unless entity @s[tag=skull_strip_new] \
  if data entity @s interaction \
  on target if items entity @s weapon.mainhand #minecraft:axes \
  run summon minecraft:item ~0.5 ~0.5 ~0.5 {Item:{id:"minecraft:oak_planks",count:4}}
execute as @e[type=minecraft:interaction,tag=skull_strip_target] at @s unless entity @s[tag=skull_strip_new] \
  if data entity @s interaction \
  if entity @p[distance=..3,limit=1,sort=nearest] \
  run advancement grant @p[distance=..3,limit=1,sort=nearest] only skullgaminghq:strip_again_oak

# 3c) Optional feedback at the broken-block location
execute as @e[type=minecraft:interaction,tag=skull_strip_target] at @s unless entity @s[tag=skull_strip_new] \
  if data entity @s interaction \
  run playsound minecraft:block.wood.break master @a ~ ~ ~ 0.8 1.0

execute as @e[type=minecraft:interaction,tag=skull_strip_target] at @s unless entity @s[tag=skull_strip_new] \
  if data entity @s interaction \
  run particle minecraft:block{block_state:{Name:"minecraft:stripped_oak_log"}} ~0.5 ~0.5 ~0.5 0.2 0.2 0.2 0.05 20 force @a

### 4) Clear the interaction data so the click only fires once
execute as @e[type=minecraft:interaction,tag=skull_strip_target] unless entity @s[tag=skull_strip_new] if data entity @s interaction run data remove entity @s interaction
# Removing "interaction" is the standard reset step. 

# Remove the temporary "new" tag so entities work normally next tick
tag @e[type=minecraft:interaction,tag=skull_strip_target,tag=skull_strip_new] remove skull_strip_new

# Charcoal throttle
scoreboard players add $tick skull_timer 1
execute if score $tick skull_timer matches 5.. run function skullgaminghq:charcoal/tick
execute if score $tick skull_timer matches 5.. run scoreboard players set $tick skull_timer 0