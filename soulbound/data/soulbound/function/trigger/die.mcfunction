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

say died
