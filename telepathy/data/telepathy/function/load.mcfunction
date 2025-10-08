# @sender 
#   - minecraft/tags/function/load.json
#
# @executor server
# @location unset
#
# @description
#   - initialize scores and storages

scoreboard objectives add telepathy.block_pos.x dummy
scoreboard objectives add telepathy.block_pos.y dummy
scoreboard objectives add telepathy.block_pos.z dummy

scoreboard objectives add telepathy.R1 dummy
scoreboard objectives add telepathy.R2 dummy

scoreboard objectives add telepathy.d_pickaxe_uses used:diamond_pickaxe

data modify storage telepathy:vars block_pos set value [0,0,0]
