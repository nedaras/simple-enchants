execute store result score #telepathy.math telepathy.R2 run clear @s * 0

$loot give @s loot {"type":"minecraft:entity","pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"$(id)","functions":[{"function":"minecraft:set_count","count":$(count)}]}]}]}

execute store result score #telepathy.math telepathy.R1 run clear @s * 0

scoreboard players operation #telepathy.math telepathy.R1 -= #telepathy.math telepathy.R2

tellraw @s {"objective": "telepathy.R1", "storage": "#telepathy.math"}
