# @sender 
#   - telepathy/function/trigger/durability_changed.mcfunction
#
# @executor server
# @location unset
#
# @description
#   - prepare break trigger for every scheduled player 

execute as @a[tag=telepathy.scheduling] at @s run function telepathy:prepare_break_trigger
tag @a[tag=telepathy.scheduling] remove telepathy.scheduling
