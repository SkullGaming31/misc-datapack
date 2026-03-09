#start function
function skullgaminghq:path/on_path

function skullgaminghq:blade/loop

# how long the phantom can carry the player for
scoreboard objectives add carry_time dummy

# how long until the phantom can carry the player again
scoreboard objectives add cooldown dummy

#display message
tellraw @a [{"text": "===================", "color": "red"}]
tellraw @a [{"text": "Thank you for using the Misc Features Datapack", "color": "green"}]
tellraw @a [{ "text": "My Github ", "color": "red" }, { "text": "click here", "color": "gold", "clickEvent": {"action": "open_url", "value": "https://github.com/skullgaming31/skullgaming31"}}]
tellraw @a [{ "text": "==================", "color": "red" }]

advancement grant @a only skullgaminghq:charcoal/root