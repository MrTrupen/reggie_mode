--data-final-fixes.lua

-- SPEED MULTIPLAYER
SPEED_MULTIPLAYER = 2 -- 2 for 2x faster, 0.5 for 2x slower
CRAFTING_MULTIPLAYER = 1 / SPEED_MULTIPLAYER

-- Character stats
RUNNING_SPEED = 1.75 -- 1.75 for 75% faster, 0.25 for 75% slower
INVENTORY_SIZE = 20 -- 20 for 20 more slots, -20 for 20 less slots; By default player has 40 slots

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

-- CHARACTER
-- Character mining speed
for _, character in pairs(data.raw["character"]) do
    if character.mining_speed and character.running_speed and character.inventory_size then
        character.mining_speed = character.mining_speed * SPEED_MULTIPLAYER
        character.running_speed = character.running_speed * RUNNING_SPEED
        character.inventory_size = character.inventory_size + INVENTORY_SIZE
    end
end