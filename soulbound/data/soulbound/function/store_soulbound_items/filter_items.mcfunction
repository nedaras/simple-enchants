# @sender 
#   - soulbound/function/store_soulbound_items.mcfunction
#
# @executor filter item
# @location player
#
# @description
#   - filters items
#   - when done removes this item from the world

# need to bench mark if storage nbt is faster then items nbt

data modify storage soulbound:temp inventory set from entity @s Item.components."minecraft:custom_data".soulbound.inventory
execute if data storage soulbound:temp inventory[-1] run function function soulbound:store_soulbound_items/filter_item

kill @s
