execute as @a[tag=telepathy.pick_up_drops] at @s run function telepathy:pick_up_drops/pick_up_items

data remove storage telepathy:temp block_pos
data modify storage telepathy:temp item
