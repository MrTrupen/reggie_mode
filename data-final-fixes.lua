--data-final-fixes.lua

-- Every recipe craft 2x faster
for _, recipe in pairs(data.raw.recipe) do
    if recipe.energy_required then
        recipe.energy_required = recipe.energy_required * 0.5
    else
        recipe.energy_required = 0.25
    end
end