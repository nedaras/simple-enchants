# implementation
# save hited block pos into players score x y z
# schedule one tik as only then drops will generate
# grap items in saved location (dont know how to handle blocks like beds and doors cleanly)
# check if item can be added to inventory, if not do nothing for this item (using /loot give, as it will give 0 drops if cannot add item)
# give dropped item to player
# kill item entity

# problems
# this mine advancement will not triger if unbreaking enchantment prevents item damage
# solution is to make so my enchantment would always lose/obtain durability on use
# but we will need to restore this durability

advancement revoke @s only telepathy:mine
execute unless score @s telepathy.block_pos.y matches -64.. run return fail

execute store result storage telepathy:vars block_pos[0] int 1 run scoreboard players get @s telepathy.block_pos.x
execute store result storage telepathy:vars block_pos[1] int 1 run scoreboard players get @s telepathy.block_pos.y
execute store result storage telepathy:vars block_pos[2] int 1 run scoreboard players get @s telepathy.block_pos.z

execute unless entity "a3d1db21-6c77-e579-0000-000000000000" run summon minecraft:marker ~ ~ ~ {UUID:[I;-1546527967,1819796857,0,0]}

data modify entity "a3d1db21-6c77-e579-0000-000000000000" Pos set from storage telepathy:temp block_pos
execute at "a3d1db21-6c77-e579-0000-000000000000" run particle minecraft:crit ~ ~1 ~ 0.125 0.125 0.125 0 10 force
