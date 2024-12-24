-- Boost mining productivity by 100%
script.on_init(function()
    game.forces["player"].mining_drill_productivity_bonus = game.forces["player"].mining_drill_productivity_bonus + 1
end)