# @sender 
#   - minecraft/tags/function/load.json
#
# @executor server
# @location origin
#
# @description
#   - initialize scores and storages

scoreboard objectives add telepathy.block_pos.x dummy
scoreboard objectives add telepathy.block_pos.y dummy
scoreboard objectives add telepathy.block_pos.z dummy

scoreboard objectives add telepathy.R1 dummy
scoreboard objectives add telepathy.R2 dummy

scoreboard objectives add telepathy.w_pickaxe_uses used:wooden_pickaxe
scoreboard objectives add telepathy.s_pickaxe_uses used:stone_pickaxe
scoreboard objectives add telepathy.c_pickaxe_uses used:copper_pickaxe
scoreboard objectives add telepathy.i_pickaxe_uses used:iron_pickaxe
scoreboard objectives add telepathy.g_pickaxe_uses used:golden_pickaxe
scoreboard objectives add telepathy.d_pickaxe_uses used:diamond_pickaxe
scoreboard objectives add telepathy.n_pickaxe_uses used:netherite_pickaxe

scoreboard objectives add telepathy.w_shovel_uses used:wooden_shovel
scoreboard objectives add telepathy.s_shovel_uses used:stone_shovel
scoreboard objectives add telepathy.c_shovel_uses used:copper_shovel
scoreboard objectives add telepathy.i_shovel_uses used:iron_shovel
scoreboard objectives add telepathy.g_shovel_uses used:golden_shovel
scoreboard objectives add telepathy.d_shovel_uses used:diamond_shovel
scoreboard objectives add telepathy.n_shovel_uses used:netherite_shovel

data modify storage telepathy:vars block_pos set value [0,0,0]
