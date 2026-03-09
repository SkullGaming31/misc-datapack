
# blade/tick.mcfunction
# Detect any sword in an item frame and run the matching damage function.
execute as @e[type=minecraft:item_frame] at @s if data entity @s {Item:{id:"minecraft:wooden_sword"}} run function skullgaminghq:blade/apply/wooden
execute as @e[type=minecraft:item_frame] at @s if data entity @s {Item:{id:"minecraft:stone_sword"}} run function skullgaminghq:blade/apply/stone
execute as @e[type=minecraft:item_frame] at @s if data entity @s {Item:{id:"minecraft:golden_sword"}} run function skullgaminghq:blade/apply/golden
execute as @e[type=minecraft:item_frame] at @s if data entity @s {Item:{id:"minecraft:iron_sword"}} run function skullgaminghq:blade/apply/iron
execute as @e[type=minecraft:item_frame] at @s if data entity @s {Item:{id:"minecraft:diamond_sword"}} run function skullgaminghq:blade/apply/diamond
execute as @e[type=minecraft:item_frame] at @s if data entity @s {Item:{id:"minecraft:netherite_sword"}} run function skullgaminghq:blade/apply/netherite
