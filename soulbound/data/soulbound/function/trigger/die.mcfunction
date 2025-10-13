# @sender 
#   - soulbound/advancement/die.json
#
# @executor player
# @location player
#
# @description
#   - reset die advancement
#   - save soulbound enchanted items if any

scoreboard players reset @s soulbound.deaths
advancement revoke @s only soulbound:die

data modify storage soulbound:temp uuid.x set from entity @s UUID[0]
data modify storage soulbound:temp uuid.y set from entity @s UUID[1]
data modify storage soulbound:temp uuid.z set from entity @s UUID[2]
data modify storage soulbound:temp uuid.w set from entity @s UUID[3]

function soulbound:__find_filter_item with storage soulbound:temp

say died
