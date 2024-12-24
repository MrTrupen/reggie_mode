--data-final-fixes.lua

-- Every recipe craft 2x faster
for _, recipe in pairs(data.raw.recipe) do
    if recipe.energy_required then
        recipe.energy_required = recipe.energy_required * 0.5
    else
        recipe.energy_required = 0.25
    end
end


-- Belts speeds
-- Every belt speed moves 2x faster
for _, belt in pairs(data.raw["transport-belt"]) do
    if belt.speed then
        belt.speed = belt.speed * 2
    end
end
-- Every splitter speed moves 2x faster
for _, splitter in pairs(data.raw["splitter"]) do
    if splitter.speed then
        splitter.speed = splitter.speed * 2
    end
end
-- Every underground belt speed moves 2x faster
for _, underground in pairs(data.raw["underground-belt"]) do
    if underground.speed then
        underground.speed = underground.speed * 2
    end
end