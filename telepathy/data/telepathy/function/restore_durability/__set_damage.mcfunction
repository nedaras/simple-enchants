# @sender 
#   - telepathy/function/restore_durability.mcfunction
#
# @args
#   - damage: int
#
# @executor player
# @location player

$item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:damage":$(damage)}}
