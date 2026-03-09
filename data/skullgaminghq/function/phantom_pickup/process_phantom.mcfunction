# if the phantom has not been tagged then attempt to convert it to a grabber
execute as @s[tag=!processed] run function skullgaminghq:phantom_pickup/convert_attempt

# process the grabber
execute as @s[tag=id_grabber] run function skullgaminghq:phantom_pickup/process_grabber