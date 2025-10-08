# @sender 
#   - basicenchants/enchantment/telepathy.json
#
# @executor player
# @location hitted block
#
# @description
#   - processes pending block if any
#   - save block's position to player's score

execute if entity @s[tag=telepathy.scheduling] run function telepathy:prepare_break_trigger

execute unless entity "a3d1db21-6c77-e579-0000-000000000000" run summon minecraft:marker ~ ~ ~ {UUID:[I;-1546527967,1819796857,0,0]}
tp "a3d1db21-6c77-e579-0000-000000000000" ~ ~ ~

execute store result score @s telepathy.block_pos.x run data get entity "a3d1db21-6c77-e579-0000-000000000000" Pos[0]
execute store result score @s telepathy.block_pos.y run data get entity "a3d1db21-6c77-e579-0000-000000000000" Pos[1]
execute store result score @s telepathy.block_pos.z run data get entity "a3d1db21-6c77-e579-0000-000000000000" Pos[2]
