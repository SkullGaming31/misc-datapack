# 2=north, 3=south, 4=west, 5=east

# Only apply push logic when the item frame contains an item (e.g. a windcharge).
# Also exclude item frames and players from being targeted so frames don't push frames.

# UP (+Y)
# Only push when the item in the frame is exactly `minecraft:wind_charge`.
execute if data entity @s {Facing:1b} if data entity @s {Item:{id:"minecraft:wind_charge"}} positioned ~-1 ~1 ~-1 \
    as @e[type=!minecraft:item_frame,type=!minecraft:player,dx=2,dy=6,dz=2] \
    run data modify entity @s Motion[1] set value 0.40d

execute if data entity @s {Item:{id:"minecraft:wind_charge"}} as @s[nbt={Facing:5b}] align xyz \
    as @e[type=!minecraft:item_frame,type=!minecraft:player,dx=7] \
    run data modify entity @s Motion[0] set value 0.25

execute if data entity @s {Item:{id:"minecraft:wind_charge"}} as @s[nbt={Facing:4b}] align xyz \
    as @e[type=!minecraft:item_frame,type=!minecraft:player,dx=-7] \
    run data modify entity @s Motion[0] set value -0.25

execute if data entity @s {Item:{id:"minecraft:wind_charge"}} as @s[nbt={Facing:2b}] align xyz \
    as @e[type=!minecraft:item_frame,type=!minecraft:player,dz=-7] \
    run data modify entity @s Motion[2] set value -0.25

execute if data entity @s {Item:{id:"minecraft:wind_charge"}} as @s[nbt={Facing:3b}] align xyz \
    as @e[type=!minecraft:item_frame,type=!minecraft:player,dz=7] \
    run data modify entity @s Motion[2] set value 0.25