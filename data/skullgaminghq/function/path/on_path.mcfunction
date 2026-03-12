
# DEBUG: indicate the function ran (temporary)
# tellraw @a [{"text":"[DEBUG] path/on_path executed","color":"aqua"}]

# Per-player block checks (predicate was unreliable); add/remove modifier based on block underfoot

# If standing on stone_bricks (check y-1 then y-2)
execute as @a at @s if block ~ ~-1 ~ minecraft:stone_bricks run scoreboard players set @s fast_path_off 0
execute as @a at @s if block ~ ~-1 ~ minecraft:stone_bricks run attribute @s minecraft:generic.movement_speed modifier add skullgaminghq_speed_mod 0.04 add_value
execute as @a at @s unless block ~ ~-1 ~ minecraft:stone_bricks if block ~ ~-2 ~ minecraft:stone_bricks run scoreboard players set @s fast_path_off 0
execute as @a at @s unless block ~ ~-1 ~ minecraft:stone_bricks if block ~ ~-2 ~ minecraft:stone_bricks run attribute @s minecraft:generic.movement_speed modifier add skullgaminghq_speed_mod 0.04 add_value

# Players not on path: increment off-path counter
execute as @a at @s unless block ~ ~-1 ~ minecraft:dirt_path unless block ~ ~-2 ~ minecraft:dirt_path unless block ~ ~-1 ~ minecraft:stone_bricks unless block ~ ~-2 ~ minecraft:stone_bricks run scoreboard players add @s fast_path_off 1

# Remove modifier only if player has been off-path for 2 or more checks
execute as @a if score @s fast_path_off matches 2.. run attribute @s minecraft:generic.movement_speed modifier remove skullgaminghq_speed_mod

# Loop
schedule function skullgaminghq:path/on_path 10t replace
