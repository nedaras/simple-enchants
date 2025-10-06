advancement revoke @s only telepathy:hurt

# only using y value to check if block_pos is valid
scoreboard players reset @s telepathy.block_pos.y

# hurt uses extra durrability too, for now there should be a predicate to detect when we hiting an entity/looking
# if not we can refund that one durability point
