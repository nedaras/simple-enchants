advancement revoke @s only telepathy:inventory

scoreboard players reset @s telepathy:R1
scoreboard players reset @s telepathy:R2

#execute as @a[tag=telepathy.pick_up_drops] at @s run function telepathy:pick_up_drops/pick_up_items

#scoreboard players reset #telepathy.math telepathy.R1
#scoreboard players reset #telepathy.math telepathy.R2

#data remove storage telepathy:temp block_pos
#data remove storage telepathy:temp item
