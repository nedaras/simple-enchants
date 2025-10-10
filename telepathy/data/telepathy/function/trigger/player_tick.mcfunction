# @sender 
#   - telepathy/advancement/player_tick.json
#
# @executor player
# @location player
#
# @description
#   - loop every tick untill player breaks a block
#   - execute break trigger at block's position

# check for distance we should use item_displays instead of markers
execute unless predicate telepathy:is_enchanted run return 1
execute unless score @s telepathy.block_pos.y matches -64.. run return 1
execute unless predicate telepathy:is_tool_used run return run advancement revoke @s only telepathy:player_tick

execute store result storage telepathy:vars block_pos[0] int 1.0 run scoreboard players get @s telepathy.block_pos.x
execute store result storage telepathy:vars block_pos[1] int 1.0 run scoreboard players get @s telepathy.block_pos.y
execute store result storage telepathy:vars block_pos[2] int 1.0 run scoreboard players get @s telepathy.block_pos.z

execute unless entity "a3d1db21-6c77-e579-0000-000000000000" run summon minecraft:marker ~ ~ ~ {UUID:[I;-1546527967,1819796857,0,0]}
data modify entity "a3d1db21-6c77-e579-0000-000000000000" Pos set from storage telepathy:vars block_pos

execute at "a3d1db21-6c77-e579-0000-000000000000" positioned ~0.5 ~0.5 ~0.5 run function telepathy:trigger/break
