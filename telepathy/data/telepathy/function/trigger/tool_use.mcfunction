# @sender 
#   - basicenchants/enchantment/telepathy.json
#
# @executor player
# @location player
#
# @description
#   - schedule 1 tick as block drops will only be generated later in a tick

# drops are already generated

scoreboard players reset @s telepathy.d_pickaxe_uses

execute unless score @s telepathy.block_pos.y matches -64.. run return fail

say tool used

#tag @s add telepathy.scheduling
#schedule function telepathy:schedule 1t
