# @sender 
#   - telepathy/function/trigger/hit_block/telepathy.json
#
# @executor player
# @location hitted block
#
# @description
#   - save block's position to player's score

scoreboard players reset @s telepathy.w_pickaxe_uses
scoreboard players reset @s telepathy.s_pickaxe_uses
scoreboard players reset @s telepathy.c_pickaxe_uses
scoreboard players reset @s telepathy.i_pickaxe_uses
scoreboard players reset @s telepathy.g_pickaxe_uses
scoreboard players reset @s telepathy.d_pickaxe_uses
scoreboard players reset @s telepathy.n_pickaxe_uses

scoreboard players reset @s telepathy.d_shovel_uses
scoreboard players reset @s telepathy.n_shovel_uses

execute if score @s telepathy.block_pos.y matches -64.. unless entity @s[advancements={telepathy:player_tick=true}] run function telepathy:prepare_break_trigger

execute unless entity "a3d1db21-6c77-e579-0000-000000000000" run summon minecraft:marker ~ ~ ~ {UUID:[I;-1546527967,1819796857,0,0]}
tp "a3d1db21-6c77-e579-0000-000000000000" ~ ~ ~

execute store result score @s telepathy.block_pos.x run data get entity "a3d1db21-6c77-e579-0000-000000000000" Pos[0]
execute store result score @s telepathy.block_pos.y run data get entity "a3d1db21-6c77-e579-0000-000000000000" Pos[1]
execute store result score @s telepathy.block_pos.z run data get entity "a3d1db21-6c77-e579-0000-000000000000" Pos[2]

advancement revoke @s only telepathy:player_tick
