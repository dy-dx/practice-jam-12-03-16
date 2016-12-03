local Player = require 'entities/player'

local Level = Class{}
function Level:init()
end

function Level:load()
    -- globals: i'll fix this, don't worry bout it
    world = tiny.world(
        require ("systems/spritesystem")(),
        require ("systems/playercontrolsystem")(),
        require ("systems/simplephysicssystem")()
    )

    player = Player()
    world:addEntity(player)
end

return Level
