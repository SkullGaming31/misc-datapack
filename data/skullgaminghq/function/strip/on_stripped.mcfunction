tag @s add skull_strip_ready
tellraw @s ["",{"text":"DEBUG: advancement reward ran — tagged player for strip spawn","color":"gold"}]
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
schedule function skullgaminghq:strip/spawn_for_tag 1t
