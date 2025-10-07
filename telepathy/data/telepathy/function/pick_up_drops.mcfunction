#execute as @a[tag=telepathy.pick_up_drops] at @s run function telepathy:pick_up_drops/pick_up_items

#scoreboard players reset #telepathy.math telepathy.R1
#scoreboard players reset #telepathy.math telepathy.R2

#data remove storage telepathy:temp block_pos
#data remove storage telepathy:temp item

execute store result storage telepathy:vars block_pos[0] int 1.0 run scoreboard players get @s telepathy.block_pos.x
execute store result storage telepathy:vars block_pos[1] int 1.0 run scoreboard players get @s telepathy.block_pos.y
execute store result storage telepathy:vars block_pos[2] int 1.0 run scoreboard players get @s telepathy.block_pos.z

execute unless entity "a3d1db21-6c77-e579-0000-000000000000" run summon minecraft:marker ~ ~ ~ {UUID:[I;-1546527967,1819796857,0,0]}

# as an item it will need to loop @a to get back to player, not so optimal

# data modify entity "a3d1db21-6c77-e579-0000-000000000000" Pos set from storage telepathy:vars block_pos

# there has to be another way
tag @s add telepathy.executor
# todo: make distance as small as possible
execute at "a3d1db21-6c77-e579-0000-000000000000" positioned ~0.5 ~0.5 ~0.5 as @e[type=minecraft:item,sort=nearest,distance=..1.5,nbt={Age:0s,PickupDelay:10s}] run function telepathy:pick_up_drops/pick_up_item
tag @s remove telepathy.executor

# this is not working 
# execute if predicate telepathy:needs_a_refund run function telepathy:refund_durability
