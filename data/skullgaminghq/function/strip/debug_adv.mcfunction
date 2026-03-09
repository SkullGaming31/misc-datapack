# Debug function run by advancement to indicate it fired (temporary)
tellraw @s ["",{"text":"DEBUG: strip advancement triggered","color":"gold"}]
# optional: play sound
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
