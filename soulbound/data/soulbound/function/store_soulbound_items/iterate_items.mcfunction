execute unless data storage soulbound:temp inventory[-1] run return fail

execute if data storage soulbound:temp inventory[-1].components."minecraft:enchantments"."basicenchants:soulbound" run data modify storage soulbound:temp filtered_inventory append from soulbound:temp inventory[-1]

data remove storage soulbound:temp inventory[-1]
function soulbound:store_soulbound_items/iterate_items
