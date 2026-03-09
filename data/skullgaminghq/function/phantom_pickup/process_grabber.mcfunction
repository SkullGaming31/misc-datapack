#Decrement the carry_time
execute as @s[scores={carry_time=1..}] run scoreboard players remove @s carry_time 1

#decrement the cooldown
execute as @s[scores={cooldown=1..}] run scoreboard players remove @s cooldown 1

#grab the player
execute unless score @s cooldown matches 1.. unless score @s carry_time matches 1.. at @s if entity @p[distance=..1.5] run function skullgaminghq:phantom_pickup/grab

#drop the player
execute if score @s carry_time matches 1.. unless score @s cooldown matches 1 run function skullgaminghq:phantom_pickup/drop