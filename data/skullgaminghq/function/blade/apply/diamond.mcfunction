#FIX: DOES NOT HIT ANYTHING INFRONT OF IT

# EAST (+X)
tag @s add blade_target
execute as @p[distance=..12,gamemode=!creative,gamemode=!spectator] run damage @e[tag=blade_target,limit=1] 14 minecraft:generic
tag @s remove blade_target



# WEST (-X)
execute if data entity @s {Facing:4b} positioned ~-4 ~-1 ~-1 as @e[type=!minecraft:player,type=!minecraft:item_frame,type=!minecraft:armor_stand,type=!minecraft:item,dx=3,dy=2,dz=2] at @s run damage @s 14 minecraft:player_attack by @p[distance=..12,gamemode=!creative,gamemode=!spectator]

# SOUTH (+Z)
execute if data entity @s {Facing:3b} positioned ~-1 ~-1 ~1 as @e[type=!minecraft:player,type=!minecraft:item_frame,type=!minecraft:armor_stand,type=!minecraft:item,dx=2,dy=2,dz=3] at @s run damage @s 14 minecraft:player_attack by @p[distance=..12,gamemode=!creative,gamemode=!spectator]

# NORTH (-Z)
execute if data entity @s {Facing:2b} positioned ~-1 ~-1 ~-4 as @e[type=!minecraft:player,type=!minecraft:item_frame,type=!minecraft:armor_stand,type=!minecraft:item,dx=2,dy=2,dz=3] at @s run damage @s 14 minecraft:player_attack by @p[distance=..12,gamemode=!creative,gamemode=!spectator]