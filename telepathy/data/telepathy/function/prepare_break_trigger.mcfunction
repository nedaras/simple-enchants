# @sender 
#   - telepathy/function/schedule.mcfunction
#   - telepathy/function/trigger/durability_changed.mcfunction
#
# @executor player
# @location player
#
# @description
#   - execute break trigger at block's position

tag @s remove telepathy.scheduling

# todo: check if we can just set markers position from score directly
execute store result storage telepathy:vars block_pos[0] int 1.0 run scoreboard players get @s telepathy.block_pos.x
execute store result storage telepathy:vars block_pos[1] int 1.0 run scoreboard players get @s telepathy.block_pos.y
execute store result storage telepathy:vars block_pos[2] int 1.0 run scoreboard players get @s telepathy.block_pos.z

execute unless entity "a3d1db21-6c77-e579-0000-000000000000" run summon minecraft:marker ~ ~ ~ {UUID:[I;-1546527967,1819796857,0,0]}
data modify entity "a3d1db21-6c77-e579-0000-000000000000" Pos set from storage telepathy:vars block_pos

execute at "a3d1db21-6c77-e579-0000-000000000000" positioned ~0.5 ~0.5 ~0.5 run function telepathy:trigger/break
