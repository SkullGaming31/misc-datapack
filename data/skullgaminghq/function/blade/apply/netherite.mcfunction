# EAST (+X)
execute if data entity @s {Facing:5b} positioned ~1 ~-1 ~0 at @s \
	if entity @e[type=!minecraft:player,type=!minecraft:item_frame,type=!minecraft:armor_stand,type=!minecraft:item,dx=6,dy=6,dz=1,sort=nearest,limit=1] \
	run execute at @s as @p[gamemode=!creative,gamemode=!spectator,limit=1] run damage @e[type=!minecraft:player,type=!minecraft:item_frame,type=!minecraft:armor_stand,type=!minecraft:item,dx=6,dy=6,dz=1,sort=nearest,limit=1] 15 minecraft:player_attack by @s

# WEST (-X)
execute if data entity @s {Facing:4b} positioned ~-6 ~-1 ~0 at @s \
	if entity @e[type=!minecraft:player,type=!minecraft:item_frame,type=!minecraft:armor_stand,type=!minecraft:item,dx=6,dy=6,dz=1,sort=nearest,limit=1] \
	run execute at @s as @p[gamemode=!creative,gamemode=!spectator,limit=1] run damage @e[type=!minecraft:player,type=!minecraft:item_frame,type=!minecraft:armor_stand,type=!minecraft:item,dx=6,dy=6,dz=1,sort=nearest,limit=1] 15 minecraft:player_attack by @s

# SOUTH (+Z)
execute if data entity @s {Facing:3b} positioned ~0 ~-1 ~1 at @s \
	if entity @e[type=!minecraft:player,type=!minecraft:item_frame,type=!minecraft:armor_stand,type=!minecraft:item,dx=1,dy=6,dz=6,sort=nearest,limit=1] \
	run execute at @s as @p[gamemode=!creative,gamemode=!spectator,limit=1] run damage @e[type=!minecraft:player,type=!minecraft:item_frame,type=!minecraft:armor_stand,type=!minecraft:item,dx=1,dy=6,dz=6,sort=nearest,limit=1] 15 minecraft:player_attack by @s

# NORTH (-Z)
execute if data entity @s {Facing:2b} positioned ~0 ~-1 ~-6 at @s \
	if entity @e[type=!minecraft:player,type=!minecraft:item_frame,type=!minecraft:armor_stand,type=!minecraft:item,dx=1,dy=6,dz=6,sort=nearest,limit=1] \
	run execute at @s as @p[gamemode=!creative,gamemode=!spectator,limit=1] run damage @e[type=!minecraft:player,type=!minecraft:item_frame,type=!minecraft:armor_stand,type=!minecraft:item,dx=1,dy=6,dz=6,sort=nearest,limit=1] 15 minecraft:player_attack by @s