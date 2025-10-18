# @sender 
#   - soulbound/function/trigger/die.mcfunction
#
# @executor player
# @location player
#
# @description
#   - filters player's pre death inventory, only including soulbound enchanted items

execute unless data storage soulbound:temp pre_death_inventory[-1] run return fail

execute if data storage soulbound:temp pre_death_inventory[-1].components."minecraft:enchantments"."basicenchants:soulbound" run data modify storage soulbound:temp inventory append from storage soulbound:temp pre_death_inventory[-1]

data remove storage soulbound:temp pre_death_inventory[-1]
function soulbound:filter_inventory
