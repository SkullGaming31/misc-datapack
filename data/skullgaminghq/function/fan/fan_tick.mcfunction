# 2=north, 3=south, 4=west, 5=east

# UP (+Y)
execute if data entity @s {Facing:1b} positioned ~-1 ~1 ~-1 \
    as @e[type=!minecraft:item_frame,type=!minecraft:player,dx=2,dy=6,dz=2] \
    run data modify entity @s Motion[1] set value 0.40d


execute as @s[nbt={Facing:5b}] align xyz as @e[dx=7] run data modify entity @s Motion[0] set value 0.1

execute as @s[nbt={Facing:4b}] align xyz as @e[dx=-7] run data modify entity @s Motion[0] set value -0.1

execute as @s[nbt={Facing:2b}] align xyz as @e[dz=-7] run data modify entity @s Motion[2] set value -0.1

execute as @s[nbt={Facing:3b}] align xyz as @e[dz=7] run data modify entity @s Motion[2] set value 0.1