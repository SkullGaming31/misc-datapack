# EAST (+X)
execute if data entity @s {Facing:5b} positioned ~1 ~-1 ~-1 as @e[type=!minecraft:player,type=!minecraft:item_frame,type=!minecraft:armor_stand,type=!minecraft:item,dx=3,dy=2,dz=2] at @s run damage @s 12 minecraft:player_attack by @p[distance=..12,gamemode=!creative,gamemode=!spectator]

# WEST (-X)
execute if data entity @s {Facing:4b} positioned ~-4 ~-1 ~-1 as @e[type=!minecraft:player,type=!minecraft:item_frame,type=!minecraft:armor_stand,type=!minecraft:item,dx=3,dy=2,dz=2] at @s run damage @s 12 minecraft:player_attack by @p[distance=..12,gamemode=!creative,gamemode=!spectator]

# SOUTH (+Z)
execute if data entity @s {Facing:3b} positioned ~-1 ~-1 ~1 as @e[type=!minecraft:player,type=!minecraft:item_frame,type=!minecraft:armor_stand,type=!minecraft:item,dx=2,dy=2,dz=3] at @s run damage @s 12 minecraft:player_attack by @p[distance=..12,gamemode=!creative,gamemode=!spectator]

# NORTH (-Z)
execute if data entity @s {Facing:2b} positioned ~-1 ~-1 ~-4 as @e[type=!minecraft:player,type=!minecraft:item_frame,type=!minecraft:armor_stand,type=!minecraft:item,dx=2,dy=2,dz=3] at @s run damage @s 12 minecraft:player_attack by @p[distance=..12,gamemode=!creative,gamemode=!spectator]