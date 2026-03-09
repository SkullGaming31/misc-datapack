# =========================
# CONFIG
# =========================
# How long it must sit on the campfire (ticks). 20 = 1s. We'll use 40 = ~2s.
# Change every "40" below if you want it faster/slower.

# =========================
# 1) Accumulate burn time while item is on a lit campfire
# =========================
#say CHARCOAL TICK RAN



# Accumulate burn time while item is on a lit campfire (snapped block position)
execute as @e[type=minecraft:item] at @s \
  if items entity @s contents #minecraft:logs \
  positioned ~ ~-0.01 ~ align xyz if block ~ ~ ~ minecraft:campfire[lit=true] \
  run scoreboard players add @s skull_cf_ticks 1



# Reset timer if not on a lit campfire (same snapping!)
execute as @e[type=minecraft:item] at @s \
  if items entity @s contents #minecraft:logs \
  positioned ~ ~-0.01 ~ align xyz unless block ~ ~ ~ minecraft:campfire[lit=true] \
  run scoreboard players set @s skull_cf_ticks 0



# =========================
# 2) When ready, convert logs -> charcoal
# =========================

# 2a) Read the item stack count into a score
execute as @e[type=minecraft:item,scores={skull_cf_ticks=120..}] at @s \
  if items entity @s contents #minecraft:logs \
  store result score @s skull_stack_count \
  run data get entity @s Item.count 1

# 2b) Summon a charcoal item entity (temporary count=1, we fix it next)
execute as @e[type=minecraft:item,scores={skull_cf_ticks=120..}] at @s \
  if items entity @s contents #minecraft:logs \
  run summon minecraft:item ~ ~0.1 ~ {Tags:["skull_new_charcoal"],Item:{id:"minecraft:charcoal",count:1}}

# 2c) Write the stored stack count into the new charcoal entity
execute as @e[type=minecraft:item,scores={skull_cf_ticks=120..}] at @s \
  if items entity @s contents #minecraft:logs \
  store result entity @e[type=minecraft:item,tag=skull_new_charcoal,limit=1,sort=nearest] Item.count int 1 \
  run scoreboard players get @s skull_stack_count

# Optional: tiny pop-up motion so it feels like it "finishes"
execute as @e[type=minecraft:item,tag=skull_new_charcoal,limit=1,sort=nearest] run data merge entity @s {Motion:[0.0,0.15,0.0]}


# 2c.5) Grant XP for completed charcoal (1 XP per log)
execute as @e[type=minecraft:item,scores={skull_cf_ticks=120..}] at @s \
  if items entity @s contents #minecraft:logs \
  run summon minecraft:experience_orb ~ ~0.2 ~ {Value:1}


execute as @e[type=minecraft:item,scores={skull_cf_ticks=120..}] at @s \
  if items entity @s contents #minecraft:logs \
  run advancement grant @a[distance=..5] only skullgaminghq:charcoal/campfire_charcoal


# 2d) Cleanup: remove tag and delete the original logs
execute as @e[type=minecraft:item,tag=skull_new_charcoal] run tag @s remove skull_new_charcoal
execute as @e[type=minecraft:item,scores={skull_cf_ticks=120..}] at @s if items entity @s contents #minecraft:logs run kill @s