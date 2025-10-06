data modify storage telepathy:temp item set from entity @s Item

execute as @a[tag=telepathy.executor,sort=nearest,limit=1] run function telepathy:pick_up_drops/add_to_inventory with storage telepathy:temp item
