local bump = require('vendor/bump')
local Player = require 'entities/player'
local Met = require 'entities/met'
local Floor = require 'entities/floor'

local Level = Class{}
function Level:init()
end

function Level:load()
    local bumpWorld = bump.newWorld(32)

    -- globals: i'll fix this, don't worry bout it
    world = tiny.world(
        require ("systems/playercontrolsystem")(),
        require ("systems/projectilephysicssystem")(),
        require ("systems/bumpphysicssystem")(bumpWorld),
        require ("systems/spritesystem")()
    )

    player = Player()
    world:addEntity(player)
    world:addEntity(Met(300, 500))
    world:addEntity(Floor(0, 550))
end

return Level
