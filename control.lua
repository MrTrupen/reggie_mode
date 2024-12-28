-- Boost mining productivity by 100%
script.on_init(function()
    game.forces["player"].mining_drill_productivity_bonus = game.forces["player"].mining_drill_productivity_bonus + 1
end)

-- Boost mining productivity by 100% when a new force is created
script.on_event(defines.events.on_force_created, function(event)
    event.force.mining_drill_productivity_bonus = event.force.mining_drill_productivity_bonus + 1
end)