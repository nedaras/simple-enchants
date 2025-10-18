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
#   - restore player's pre death inventory

$data modify storage soulbound:temp pre_death_inventory set from entity @e[type=item,sort=nearest,distance=0,limit=1,nbt={Item:{components:{"minecraft:custom_data":{soulbound:{owner:[I;$(x),$(y),$(z),$(w)]}}}}}] Item.components."minecraft:custom_data".soulbound.inventory
$kill @e[type=item,sort=nearest,distance=0,limit=1,nbt={Item:{components:{"minecraft:custom_data":{soulbound:{owner:[I;$(x),$(y),$(z),$(w)]}}}}}]
