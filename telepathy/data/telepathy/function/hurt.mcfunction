advancement revoke @s only telepathy:hurt

# only using y value to check if block_pos is valid
scoreboard players reset @s telepathy.block_pos.y

# R1 means schedule, R2 means pick_up_drops
scoreboard players set @s telepathy.R1 1
scoreboard players set @s telepathy.R2 0

#cant repair too need to repair in later tick
#execute if predicate telepathy:needs_a_refund run function telepathy:refund_durability

# hurt uses extra durrability too, for now there should be a predicate to detect when we hiting an entity/looking
# if not we can refund that one durability point
