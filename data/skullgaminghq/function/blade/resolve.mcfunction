# Run apply functions as the tagged item frames, then remove the tags
execute as @e[type=minecraft:item_frame,tag=skull_blade_pending_wooden] at @s run function skullgaminghq:blade/apply/wooden
tag @e[type=minecraft:item_frame,tag=skull_blade_pending_wooden] remove skull_blade_pending_wooden

execute as @e[type=minecraft:item_frame,tag=skull_blade_pending_stone] at @s run function skullgaminghq:blade/apply/stone
tag @e[type=minecraft:item_frame,tag=skull_blade_pending_stone] remove skull_blade_pending_stone

execute as @e[type=minecraft:item_frame,tag=skull_blade_pending_golden] at @s run function skullgaminghq:blade/apply/golden
tag @e[type=minecraft:item_frame,tag=skull_blade_pending_golden] remove skull_blade_pending_golden

execute as @e[type=minecraft:item_frame,tag=skull_blade_pending_iron] at @s run function skullgaminghq:blade/apply/iron
tag @e[type=minecraft:item_frame,tag=skull_blade_pending_iron] remove skull_blade_pending_iron

execute as @e[type=minecraft:item_frame,tag=skull_blade_pending_diamond] at @s run function skullgaminghq:blade/apply/diamond
tag @e[type=minecraft:item_frame,tag=skull_blade_pending_diamond] remove skull_blade_pending_diamond

execute as @e[type=minecraft:item_frame,tag=skull_blade_pending_netherite] at @s run function skullgaminghq:blade/apply/netherite
tag @e[type=minecraft:item_frame,tag=skull_blade_pending_netherite] remove skull_blade_pending_netherite
