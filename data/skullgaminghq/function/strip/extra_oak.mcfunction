
give @s minecraft:oak_planks 4
playsound minecraft:item.axe.strip master @s ~ ~ ~ 1 1
particle minecraft:block{block_state:{Name:"minecraft:stripped_oak_log"}} ~ ~1 ~ 0.25 0.25 0.25 0.01 10 force @s

# make it repeatable
advancement revoke @s only skullgaminghq:strip_again_oak
