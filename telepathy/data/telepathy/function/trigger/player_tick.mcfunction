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

function telepathy:prepare_break_trigger
