tag @s remove telepathy.pick_up_drops

execute store result storage telepathy:temp block_pos[0] int 1 run scoreboard players get @s telepathy.block_pos.x
execute store result storage telepathy:temp block_pos[1] int 1 run scoreboard players get @s telepathy.block_pos.y
execute store result storage telepathy:temp block_pos[2] int 1 run scoreboard players get @s telepathy.block_pos.z

execute unless entity "a3d1db21-6c77-e579-0000-000000000000" run summon minecraft:marker ~ ~ ~ {UUID:[I;-1546527967,1819796857,0,0]}

data modify entity "a3d1db21-6c77-e579-0000-000000000000" Pos set from storage telepathy:temp block_pos
execute at "a3d1db21-6c77-e579-0000-000000000000" run particle minecraft:crit ~ ~ ~ 0.125 0.125 0.125 0 50 force
