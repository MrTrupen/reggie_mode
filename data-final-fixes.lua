--data-final-fixes.lua

SPEED_MULTIPLAYER = 2
CRAFTING_MULTIPLAYER = 1 / SPEED_MULTIPLAYER

-- RECIPES
-- Every recipe craft 2x faster
for _, recipe in pairs(data.raw.recipe) do
    if recipe.energy_required then
        recipe.energy_required = recipe.energy_required * CRAFTING_MULTIPLAYER
    else
        recipe.energy_required = 0.5 * CRAFTING_MULTIPLAYER
    end
end


-- BELTS
-- Belt speed
for _, belt in pairs(data.raw["transport-belt"]) do
    if belt.speed then
        belt.speed = belt.speed * SPEED_MULTIPLAYER
    end
end
-- Spliter speed
for _, splitter in pairs(data.raw["splitter"]) do
    if splitter.speed then
        splitter.speed = splitter.speed * SPEED_MULTIPLAYER
    end
end
-- Underground belt speed
for _, underground in pairs(data.raw["underground-belt"]) do
    if underground.speed then
        underground.speed = underground.speed * SPEED_MULTIPLAYER
    end
end


-- INSERTERS
-- Inserter extension and rotation speed
for _, inserter in pairs(data.raw["inserter"]) do
    if inserter.extension_speed and inserter.rotation_speed then
        inserter.extension_speed = inserter.extension_speed * SPEED_MULTIPLAYER
        inserter.rotation_speed = inserter.rotation_speed * SPEED_MULTIPLAYER
    end
end