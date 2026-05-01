SPEED_MULTIPLAYER = 2

-- Rocket
data.raw["rocket-silo-rocket"]["rocket-silo-rocket"].rising_speed = SPEED_MULTIPLAYER / (7 * 60)
data.raw["rocket-silo-rocket"]["rocket-silo-rocket"].engine_starting_speed = SPEED_MULTIPLAYER / (5.5 * 60)
data.raw["rocket-silo-rocket"]["rocket-silo-rocket"].flying_speed = SPEED_MULTIPLAYER / (2000 * 60)
data.raw["rocket-silo-rocket"]["rocket-silo-rocket"].flying_acceleration = SPEED_MULTIPLAYER * 0.01

-- Rocket silo
data.raw["rocket-silo"]["rocket-silo"].door_opening_speed = SPEED_MULTIPLAYER / (4 * 60)
data.raw["rocket-silo"]["rocket-silo"].light_blinking_speed = SPEED_MULTIPLAYER / (2 * 60)
