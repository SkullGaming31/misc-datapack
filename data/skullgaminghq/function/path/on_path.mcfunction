
# Remove modifier from all players (safe even if not present)
execute as @a run attribute @s minecraft:generic.movement_speed modifier remove 6b8a1f7a-2a2e-4b6c-9c2f-3b0d3e7b6f11

# Add modifier to players on the path
execute as @a[predicate=skullgaminghq:fast_path_moving/on_path] run attribute @s minecraft:generic.movement_speed modifier add skullgaminghq_speed_mod 2 add_value

# Loop
schedule function skullgaminghq:path/on_path 10t replace
