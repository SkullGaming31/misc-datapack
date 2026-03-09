# Spawns invisible interaction entities on stripped oak logs near the player.

# Choose the exact anchor point ONCE:
# ~0.5 ~0.5 ~0.25 = centered X/Y, shifted 0.25 north (less south overlap)
# If you don't want north shift, use ~0.5 ~0.5 ~0.5

# --- center ---
execute positioned ^ ^ ^1 if block ~ ~ ~ minecraft:stripped_oak_log unless entity @e[type=minecraft:armor_stand,tag=skull_strip_pending,distance=..0.25] run summon minecraft:armor_stand ~ ~ ~ {Tags:["skull_strip_pending"],Marker:1b,Invisible:1b,NoGravity:1b,PersistenceRequired:1b}

# --- 6 cardinal neighbors (x/z/y) ---
execute positioned ^ ^ ^1 if block ~1 ~ ~ minecraft:stripped_oak_log unless entity @e[type=minecraft:armor_stand,tag=skull_strip_pending,distance=..0.25] run summon minecraft:armor_stand ~ ~ ~ {Tags:["skull_strip_pending"],Marker:1b,Invisible:1b,NoGravity:1b,PersistenceRequired:1b}
execute positioned ^ ^ ^1 if block ~-1 ~ ~ minecraft:stripped_oak_log unless entity @e[type=minecraft:armor_stand,tag=skull_strip_pending,distance=..0.25] run summon minecraft:armor_stand ~ ~ ~ {Tags:["skull_strip_pending"],Marker:1b,Invisible:1b,NoGravity:1b,PersistenceRequired:1b}
execute positioned ^ ^ ^1 if block ~ ~ ~1 minecraft:stripped_oak_log unless entity @e[type=minecraft:armor_stand,tag=skull_strip_pending,distance=..0.25] run summon minecraft:armor_stand ~ ~ ~ {Tags:["skull_strip_pending"],Marker:1b,Invisible:1b,NoGravity:1b,PersistenceRequired:1b}
execute positioned ^ ^ ^1 if block ~ ~ ~-1 minecraft:stripped_oak_log unless entity @e[type=minecraft:armor_stand,tag=skull_strip_pending,distance=..0.25] run summon minecraft:armor_stand ~ ~ ~ {Tags:["skull_strip_pending"],Marker:1b,Invisible:1b,NoGravity:1b,PersistenceRequired:1b}
execute positioned ^ ^ ^1 if block ~ ~1 ~ minecraft:stripped_oak_log unless entity @e[type=minecraft:armor_stand,tag=skull_strip_pending,distance=..0.25] run summon minecraft:armor_stand ~ ~ ~ {Tags:["skull_strip_pending"],Marker:1b,Invisible:1b,NoGravity:1b,PersistenceRequired:1b}
execute positioned ^ ^ ^1 if block ~ ~-1 ~ minecraft:stripped_oak_log unless entity @e[type=minecraft:armor_stand,tag=skull_strip_pending,distance=..0.25] run summon minecraft:armor_stand ~ ~ ~ {Tags:["skull_strip_pending"],Marker:1b,Invisible:1b,NoGravity:1b,PersistenceRequired:1b}

# --- corners on same Y (optional but helps) ---
execute positioned ^ ^ ^1 if block ~1 ~ ~1 minecraft:stripped_oak_log unless entity @e[type=minecraft:armor_stand,tag=skull_strip_pending,distance=..0.25] run summon minecraft:armor_stand ~ ~ ~ {Tags:["skull_strip_pending"],Marker:1b,Invisible:1b,NoGravity:1b,PersistenceRequired:1b}
execute positioned ^ ^ ^1 if block ~1 ~ ~-1 minecraft:stripped_oak_log unless entity @e[type=minecraft:armor_stand,tag=skull_strip_pending,distance=..0.25] run summon minecraft:armor_stand ~ ~ ~ {Tags:["skull_strip_pending"],Marker:1b,Invisible:1b,NoGravity:1b,PersistenceRequired:1b}
execute positioned ^ ^ ^1 if block ~-1 ~ ~1 minecraft:stripped_oak_log unless entity @e[type=minecraft:armor_stand,tag=skull_strip_pending,distance=..0.25] run summon minecraft:armor_stand ~ ~ ~ {Tags:["skull_strip_pending"],Marker:1b,Invisible:1b,NoGravity:1b,PersistenceRequired:1b}
execute positioned ^ ^ ^1 if block ~-1 ~ ~-1 minecraft:stripped_oak_log unless entity @e[type=minecraft:armor_stand,tag=skull_strip_pending,distance=..0.25] run summon minecraft:armor_stand ~ ~ ~ {Tags:["skull_strip_pending"],Marker:1b,Invisible:1b,NoGravity:1b,PersistenceRequired:1b}