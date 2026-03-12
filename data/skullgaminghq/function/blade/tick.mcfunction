
# blade/tick.mcfunction
# Detect any sword in an item frame and run the matching damage function.
execute as @e[type=minecraft:item_frame] at @s if data entity @s {Item:{id:"minecraft:wooden_sword"}} run tag @s add skull_blade_pending_wooden
execute as @e[type=minecraft:item_frame] at @s if data entity @s {Item:{id:"minecraft:stone_sword"}} run tag @s add skull_blade_pending_stone
execute as @e[type=minecraft:item_frame] at @s if data entity @s {Item:{id:"minecraft:golden_sword"}} run tag @s add skull_blade_pending_golden
execute as @e[type=minecraft:item_frame] at @s if data entity @s {Item:{id:"minecraft:iron_sword"}} run tag @s add skull_blade_pending_iron
execute as @e[type=minecraft:item_frame] at @s if data entity @s {Item:{id:"minecraft:diamond_sword"}} run tag @s add skull_blade_pending_diamond
execute as @e[type=minecraft:item_frame] at @s if data entity @s {Item:{id:"minecraft:netherite_sword"}} run tag @s add skull_blade_pending_netherite

# Resolve pending blade tags next tick (runs as server but executes apply functions as the frames)
# Schedule resolver to run next tick (use replace to avoid duplicates)
schedule function skullgaminghq:blade/resolve 1t replace
