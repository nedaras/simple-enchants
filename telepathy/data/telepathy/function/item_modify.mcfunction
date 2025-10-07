advancement revoke @s only telepathy:item_modify
scoreboard players reset @s telepathy.R1

execute if score @s telepathy.R2 matches 1 run function telepathy:pick_up_drops
execute if predicate telepathy:needs_a_refund run function telepathy:refund_durability
