tag @s remove telepathy.pick_up_drops

# need to return durability if unbreaking is active

execute store result storage telepathy:vars block_pos[0] int 1 run scoreboard players get @s telepathy.block_pos.x
execute store result storage telepathy:vars block_pos[1] int 1 run scoreboard players get @s telepathy.block_pos.y
execute store result storage telepathy:vars block_pos[2] int 1 run scoreboard players get @s telepathy.block_pos.z

execute unless entity "a3d1db21-6c77-e579-0000-000000000000" run summon minecraft:marker ~ ~ ~ {UUID:[I;-1546527967,1819796857,0,0]}

# as an item it will need to loop @a to get back to player, not so optimal

data modify entity "a3d1db21-6c77-e579-0000-000000000000" Pos set from storage telepathy:vars block_pos
execute at "a3d1db21-6c77-e579-0000-000000000000" positioned ~0.5 ~0.5 ~0.5 as @e[type=minecraft:item,sort=nearest,distance=..1.5,nbt={Age:0s,PickupDelay:0s}] run say pick me up

#particle minecraft:crit ~ ~ ~ 0.1875 0.1875 0.1875 0 50 force
