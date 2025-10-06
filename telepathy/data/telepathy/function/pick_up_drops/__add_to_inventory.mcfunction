execute store result score #telepathy.math telepathy.R1 run clear @s * 0
$scoreboard players add #telepathy.math telepathy.R1 $(count)

$loot give @s loot {"type":"minecraft:entity","pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"$(id)","functions":[{"function":"minecraft:set_count","count":$(count)}]}],"functions":[{"function":"minecraft:set_components","components":$(components)}]}]}
execute store result score #telepathy.math telepathy.R2 run clear @s * 0
