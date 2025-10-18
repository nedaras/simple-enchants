# @sender 
#   - soulbound/function/store_soulbound_items.mcfunction
#
# @executor filter item
# @location player
#
# @description
#   - filters items
#   - when done removes this item from the world

data remove storage soulbound:temp filtered_inventory
data modify storage soulbound:temp inventory set from entity @s Item.components."minecraft:custom_data".soulbound.inventory

function soulbound:store_soulbound_items/iterate_items

kill @s
