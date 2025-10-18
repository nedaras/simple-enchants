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

function soulbound:store_soulbound_items

#execute anchored eyes positioned ^ ^ ^ positioned ~ ~-0.3 ~ run function soulbound:__find_filter_item with storage soulbound:temp uuid
