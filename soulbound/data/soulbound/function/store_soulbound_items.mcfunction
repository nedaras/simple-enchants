# @sender 
#   - soulbound/function/trigger/die.mcfunction
#
# @executor player
# @location player
#
# @description
#   - search for filter item
#   - print an warning if that item was not found 

data modify storage soulbound:temp uuid.x set from entity @s UUID[0]
data modify storage soulbound:temp uuid.y set from entity @s UUID[1]
data modify storage soulbound:temp uuid.z set from entity @s UUID[2]
data modify storage soulbound:temp uuid.w set from entity @s UUID[3]

function soulbound:store_soulbound_items/__find_filter_item with storage soulbound:temp uuid
