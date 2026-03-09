# EAST (+X)
execute if data entity @s {Facing:5b} positioned ~1 ~-1 ~-1 as @e[type=!minecraft:player,type=!minecraft:item_frame,type=!minecraft:armor_stand,dx=3,dy=2,dz=2] run damage @s 7 minecraft:player_attack

# WEST (-X)
execute if data entity @s {Facing:4b} positioned ~-4 ~-1 ~-1 as @e[type=!minecraft:player,type=!minecraft:item_frame,type=!minecraft:armor_stand,dx=3,dy=2,dz=2] run damage @s 7 minecraft:player_attack

# SOUTH (+Z)
execute if data entity @s {Facing:3b} positioned ~-1 ~-1 ~1 as @e[type=!minecraft:player,type=!minecraft:item_frame,type=!minecraft:armor_stand,dx=2,dy=2,dz=3] run damage @s 7 minecraft:player_attack

# NORTH (-Z)
execute if data entity @s {Facing:2b} positioned ~-1 ~-1 ~-4 as @e[type=!minecraft:player,type=!minecraft:item_frame,type=!minecraft:armor_stand,dx=2,dy=2,dz=3] run damage @s 7 minecraft:player_attack
