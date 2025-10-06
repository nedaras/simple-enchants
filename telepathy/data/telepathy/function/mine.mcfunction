advancement revoke @s only telepathy:mine

say block mined

# implementation
# save hited block pos into players score x y z
# schedule one tik as only then drops will generate
# grap items in saved location (dont know how to handle blocks like beds and doors cleanly)
# check if item can be added to inventory, if not do nothing for this item (using /loot give, as it will give 0 drops if cannot add item)
# give dropped item to player
# kill item entity

# problems
# this mine advancement will not triger if unbreaking enchantment prevents item damage
# solution is to make so my enchantment would always lose/obtain durability on use
# but we will need to restore this durability
