# @sender 
#   - soulbound/function/store_soulbound_items.mcfunction
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
#   - search for filter item
#   - print an warning if that item was not found 

# we need to return bool if item was found
$execute as @e[type=item,sort=nearest,distance=0,limit=1,nbt={Item:{components:{"minecraft:custom_data":{soulbound:{owner:[I;$(x),$(y),$(z),$(w)]}}}}}] run function soulbound:store_soulbound_items/filter_items
