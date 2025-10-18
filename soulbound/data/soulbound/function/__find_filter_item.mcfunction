$execute as @e[type=item,sort=nearest,distance=..0.01,limit=1,nbt={Item:{components:{"minecraft:custom_data":{soulbound:{owner:[I;$(x),$(y),$(z),$(w)]}}}}}] run function soulbound:save_inventory
