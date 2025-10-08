execute store result storage telepathy:vars block_pos[0] int 1.0 run scoreboard players get @s telepathy.block_pos.x
execute store result storage telepathy:vars block_pos[1] int 1.0 run scoreboard players get @s telepathy.block_pos.y
execute store result storage telepathy:vars block_pos[2] int 1.0 run scoreboard players get @s telepathy.block_pos.z

execute unless entity "a3d1db21-6c77-e579-0000-000000000000" run summon minecraft:marker ~ ~ ~ {UUID:[I;-1546527967,1819796857,0,0]}
data modify entity "a3d1db21-6c77-e579-0000-000000000000" Pos set from storage telepathy:vars block_pos

# need to make distance as small as possible so like it wound not interfere with other players drops

tag @s add telepathy.executor
execute at "a3d1db21-6c77-e579-0000-000000000000" positioned ~0.5 ~0.6 ~0.5 as @e[type=minecraft:item,sort=nearest,distance=..0.6,nbt={Age:0s,PickupDelay:10s}] run function telepathy:pick_up_drops/pick_up_item
tag @s remove telepathy.executor
