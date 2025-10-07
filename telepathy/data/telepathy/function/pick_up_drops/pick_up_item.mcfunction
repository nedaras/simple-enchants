data modify storage telepathy:temp item set from entity @s Item
execute unless data storage telepathy:temp item.components run data modify storage telepathy:temp item.components set value "{}"

execute as @a[tag=telepathy.executor,sort=nearest,limit=1] run function telepathy:pick_up_drops/__add_to_inventory with storage telepathy:temp item

# returned value is how many items we could not pick up
scoreboard players operation #telepathy.math telepathy.R1 -= #telepathy.math telepathy.R2

# add that item count to registry as we need it

execute if score #telepathy.math telepathy.R1 matches 0 run return run kill @s
execute if score #telepathy.math telepathy.R1 matches $count run return 1

execute store result entity @s Item.count int 1.0 run scoreboard players get #telepathy.math telepathy.R1
