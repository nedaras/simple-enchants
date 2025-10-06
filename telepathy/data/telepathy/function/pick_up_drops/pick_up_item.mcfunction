data modify storage telepathy:temp item set from entity @s Item

execute as @a[tag=telepathy.executor,sort=nearest,limit=1] run function telepathy:pick_up_drops/__add_to_inventory with storage telepathy:temp item

# return value is how many items we could not pick up
scoreboard players operation #telepathy.math telepathy.R1 -= #telepathy.math telepathy.R2

execute if score #telepathy.math telepathy.R1 matches 0 run return run kill @s

tellraw @a {"nbt": "item.components", "storage": "telepathy:temp"}
