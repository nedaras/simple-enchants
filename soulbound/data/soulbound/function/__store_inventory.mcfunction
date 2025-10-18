# @sender 
#   - soulbound/function/trigger/die.mcfunction
#
# @args
#   - int x
#   - int y
#   - int z
#   - int w
#
# @executor player
# @location player
#
# @description
#   - moves temp inventory to a per player more permenant storage

$data modify storage soulbound:vars inventories[{owner:[I;$(x),$(y),$(z),$(w)]}].inventory set from storage soulbound:temp inventory
