# @sender 
#   - basicenchants/enchantment/telepathy.json
#
# @executor player
# @location hitted block
#
# @description
#   - save block's position to player's score

# have an idea to make tick advancement that would be revoked when block is hited
# and then inside tick we can like check if like player left hited block
# most optimal would be a check that would run till player is looking at the block

# there can be like double/triple hits untill we get to a tick function
# have an idea to set some kind of flag in this function that would be reset by tick event
# if the flag is set it means we are multi hitting, so we should just call break event

# on hit enchantment we need to catogorize these stuff
# like pcik_used, shovel_used, axe_used,
# in this way we would need to reset less scores

scoreboard players reset @s telepathy.w_pickaxe_uses
scoreboard players reset @s telepathy.s_pickaxe_uses
scoreboard players reset @s telepathy.c_pickaxe_uses
scoreboard players reset @s telepathy.i_pickaxe_uses
scoreboard players reset @s telepathy.g_pickaxe_uses
scoreboard players reset @s telepathy.d_pickaxe_uses
scoreboard players reset @s telepathy.n_pickaxe_uses

scoreboard players reset @s telepathy.n_shovel_uses

execute if score @s telepathy.block_pos.y matches -64.. unless entity @s[advancements={telepathy:player_tick=true}] run function telepathy:prepare_break_trigger

execute unless entity "a3d1db21-6c77-e579-0000-000000000000" run summon minecraft:marker ~ ~ ~ {UUID:[I;-1546527967,1819796857,0,0]}
tp "a3d1db21-6c77-e579-0000-000000000000" ~ ~ ~

execute store result score @s telepathy.block_pos.x run data get entity "a3d1db21-6c77-e579-0000-000000000000" Pos[0]
execute store result score @s telepathy.block_pos.y run data get entity "a3d1db21-6c77-e579-0000-000000000000" Pos[1]
execute store result score @s telepathy.block_pos.z run data get entity "a3d1db21-6c77-e579-0000-000000000000" Pos[2]

advancement revoke @s only telepathy:player_tick
