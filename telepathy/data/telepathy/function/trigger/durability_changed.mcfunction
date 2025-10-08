# @sender 
#   - telepathy/advancement/durability_changed.json
#
# @executor player
# @location player
#
# @description
#   - process current block in a next tick
#   - process previous block if needed

advancement revoke @s only telepathy:durability_changed
execute unless score @s telepathy.block_pos.y matches -64.. run return fail

schedule function telepathy:schedule 1t

execute unless entity @s[tag=telepathy.scheduling] run return run tag @s add telepathy.scheduling
function telepathy:prepare_break_trigger
