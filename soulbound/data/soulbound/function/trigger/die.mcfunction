# @sender 
#   - soulbound/advancement/die.json
#
# @executor player
# @location player
#
# @description
#   - stores soulbound enchanted items if any
#   - revokes respawned advancement if needed

scoreboard players reset @s soulbound.deaths
advancement revoke @s only soulbound:die

data modify storage soulbound:temp uuid.x set from entity @s UUID[0]
data modify storage soulbound:temp uuid.y set from entity @s UUID[1]
data modify storage soulbound:temp uuid.z set from entity @s UUID[2]
data modify storage soulbound:temp uuid.w set from entity @s UUID[3]

data remove storage soulbound:temp inventory

function soulbound:__restore_inventory with storage soulbound:temp uuid
function soulbound:filter_inventory

# need to handle not only containers, but like armor slots and all
function soulbound:__store_inventory with storage soulbound:temp uuid

function soulbound:pick_up_filtered_items


#execute anchored eyes positioned ^ ^ ^ positioned ~ ~-0.3 ~ run function soulbound:__find_filter_item with storage soulbound:temp uuid
