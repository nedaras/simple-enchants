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

scoreboard players reset @s telepathy.d_pickaxe_uses

execute unless entity "a3d1db21-6c77-e579-0000-000000000000" run summon minecraft:marker ~ ~ ~ {UUID:[I;-1546527967,1819796857,0,0]}
tp "a3d1db21-6c77-e579-0000-000000000000" ~ ~ ~

execute store result score @s telepathy.block_pos.x run data get entity "a3d1db21-6c77-e579-0000-000000000000" Pos[0]
execute store result score @s telepathy.block_pos.y run data get entity "a3d1db21-6c77-e579-0000-000000000000" Pos[1]
execute store result score @s telepathy.block_pos.z run data get entity "a3d1db21-6c77-e579-0000-000000000000" Pos[2]

advancement revoke @s only telepathy:player_tick
