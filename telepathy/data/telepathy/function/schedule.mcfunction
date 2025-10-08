# do summon check here
execute as @a[scores={telepathy.R1=1}] run function telepathy:pick_up_drops

scoreboard players reset @s telepathy.R1
scoreboard players reset @s telepathy.R2
