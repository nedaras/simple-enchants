# @sender 
#   - telepathy/advancement/durability_changed.json
#
# @executor player
# @location player
#
# @description
#   - schedule 1 tick as block drops will only be generated later in a tick

advancement revoke @s only telepathy:durability_changed
execute unless score @s telepathy.block_pos.y matches -64.. run return fail

schedule function telepathy:schedule 1t
