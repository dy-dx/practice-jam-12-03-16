local bump = require('vendor/bump')
local Player = require 'entities/player'
local Met = require 'entities/met'
local DrawLayer = require 'entities/layers/drawlayer'
local CollisionLayer = require 'entities/layers/collisionlayer'
local CollisionBox = require 'entities/collisionbox'

local Level = Class{}
function Level:init()
end

function Level:load()
    local bumpWorld = bump.newWorld(32)

    -- globals: i'll fix this, don't worry bout it
    world = tiny.world(
        require ("systems/playercontrolsystem")(),
        require ("systems/projectilephysicssystem")(),
        require ("systems/drawlayersystem")(),
        require ("systems/bumpphysicssystem")(bumpWorld),
        require ("systems/spritesystem")(),
        require ("systems/debughitboxsystem")()
    )

    player = Player()
    drawLayer = DrawLayer()
    collisionlayer = CollisionLayer(Global.map, bumpWorld)

    world:addEntity(drawLayer)
    world:addEntity(collisionlayer)
    world:addEntity(player)
    world:addEntity(Met(300, 500))
    world:addEntity(CollisionBox(0, 550, 800, 30))
    world:addEntity(CollisionBox(0, 0, 40, 600))
    world:addEntity(CollisionBox(700, 0, 40, 600))
end

return Level
