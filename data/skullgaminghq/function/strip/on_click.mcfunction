# Only proceed if player holds an axe
execute unless items entity @s weapon.mainhand #minecraft:axes run return 0

# Find the nearest clicked target (usually the one you're looking at)
execute as @e[type=minecraft:interaction,tag=skull_strip_target,distance=..6,limit=1,sort=nearest] at @s if block ~ ~ ~ minecraft:stripped_oak_log run function skullgaminghq:strip/_give

# Make it repeatable
advancement revoke @s only skullgaminghq:click_stripped_oak_target