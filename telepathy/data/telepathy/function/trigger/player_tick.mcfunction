# revoke only if selected item contains telepathy:enchantment
# revoke only if player distance to hitted block is <= block interact range
# revoke only if mined is zero

execute unless predicate telepathy:is_enchanted run return run advancement revoke @s only telepathy:player_tick
execute unless predicate telepathy:is_tool_used run return run advancement revoke @s only telepathy:player_tick

say broken block using telepathy enchantment
