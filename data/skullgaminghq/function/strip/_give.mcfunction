
# Effects only (planks are spawned in tick.mcfunction at the log position)
playsound minecraft:item.axe.strip master @s ~ ~ ~ 1 1
particle minecraft:block{block_state:{Name:"minecraft:stripped_oak_log"}} ~ ~1 ~ 0.25 0.25 0.25 0.01 10 force @s
