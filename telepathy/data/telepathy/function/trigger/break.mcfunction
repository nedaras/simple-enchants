# @sender 
#   - telepathy/function/trigger/player_tick.mcfunction
#
# @executor player
# @location broken block
#
# @description
#   - pick up items at broken block

kill @e[type=item,sort=nearest,distance=..0.5,nbt={Age:0s,PickupDelay:10s}]
