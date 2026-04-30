local function boost_mining_productivity(force)
    force.mining_drill_productivity_bonus = force.mining_drill_productivity_bonus + 1
end

-- Boost mining productivity by 100%.
script.on_init(function()
    boost_mining_productivity(game.forces["player"])
end)

-- Keep newly created forces aligned with the starting bonus.
script.on_event(defines.events.on_force_created, function(event)
    boost_mining_productivity(event.force)
end)
