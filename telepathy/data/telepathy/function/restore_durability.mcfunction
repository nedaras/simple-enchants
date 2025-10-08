# @sender 
#   - telepathy/function/prepare_break_trigger.mcfunction
#
# @executor player
# @location player
#
# @description
#   - restore durability by adding 2 to damage component

execute store result score #telepathy.math telepathy.R1 run data get entity @s SelectedItem.components."minecraft:damage"
execute store storage telepathy:temp tool.damage int 1.0 run scoreboard players add #telepathy.math telepathy.R1 2

function telepathy:restore_durability/__set_damage with storage telepathy:temp tool
