local Player = require 'entities/player'
local Met = require 'entities/met'
local DrawLayer = require 'entities/layers/drawlayer'
local CollisionLayer = require 'entities/layers/collisionlayer'

local Level = Class{}
function Level:init()
end

function Level:load()
    -- globals: i'll fix this, don't worry bout it
    world = tiny.world(
        require ("systems/spritesystem")(),
        require ("systems/playercontrolsystem")(),
        require ("systems/projectilephysicssystem")(),
        require ("systems/drawlayersystem")()
    )

    player = Player()
    drawLayer = DrawLayer()
    collisionlayer = CollisionLayer()


    world:addEntity(drawLayer)
    world:addEntity(collisionlayer)
    world:addEntity(player)
    world:addEntity(Met(300, 500))
end

return Level
