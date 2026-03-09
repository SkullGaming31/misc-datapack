kill @s

execute unless block ~ ~ ~ minecraft:air run return fail

playsound block.wood.place master @a ~ ~ ~ 1 1 0

execute unless block ~ ~ ~0.1 #minecraft:air run return run setblock ~ ~ ~ minecraft:wall_torch[facing=north]
execute unless block ~ ~ ~-0.1 #minecraft:air run return run setblock ~ ~ ~ minecraft:wall_torch[facing=south]
execute unless block ~-0.1 ~ ~ #minecraft:air run return run setblock ~ ~ ~ minecraft:wall_torch[facing=east]
execute unless block ~0.1 ~ ~0.1 #minecraft:air run return run setblock ~ ~ ~ minecraft:wall_torch[facing=west]
execute if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:torch
