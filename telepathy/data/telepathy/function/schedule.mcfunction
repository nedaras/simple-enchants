advancement revoke @s only telepathy:inventory

say later in tick
execute if predicate telepathy:needs_a_refund run function telepathy:refund_durability

scoreboard players reset @s telepathy.R1
scoreboard players reset @s telepathy.R2
