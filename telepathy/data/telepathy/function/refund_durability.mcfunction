execute store result storage telepathy:temp tool.damage int 0.999999999 run data get entity @s SelectedItem.components."minecraft:damage"
function telepathy:refund_durability/__set_damage with storage telepathy:temp tool
data remove storage telepathy:temp tool
