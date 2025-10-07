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

advancement revoke @s only telepathy:mine
execute unless score @s telepathy.block_pos.y matches -64.. run return fail

# R1 means schedule, R2 means pick_up_drops
scoreboard players set @s telepathy.R1 1
scoreboard players set @s telepathy.R2 1

# is taging as fast as scores?
#tag @s add telepathy.pick_up_drops

# drops are generated later in tick, so we need to schedule
#schedule function telepathy:pick_up_drops 1tdd
