local layerUtils = require 'utils/layerutils'
local CollisionBox = require 'entities/collisionbox'

local CollisionLayer = Class{}

function CollisionLayer:init(map)
    self:reset()

    printTable(layerUtils:getLayer('MiddleLayer'))
    -- printTable(Global.map.layers)
    printTable(layerUtils:getLayer('MiddleLayer').data)

    print('width ' .. layerUtils:getLayer('MiddleLayer').width)
    print('height ' .. layerUtils:getLayer('MiddleLayer').height)
    print("properties")
    printTable(layerUtils:getLayer('MiddleLayer').properties)

    print("batches")
    printTable(layerUtils:getLayer('MiddleLayer').batches)

    -- world:addEntity(CollisionBox(0, 550, 800, 30))
    -- world:addEntity(CollisionBox(0, 0, 40, 600))
    -- world:addEntity(CollisionBox(700, 0, 40, 600))
end

function CollisionLayer:reset()
end

function CollisionLayer:draw()
    -- Global.map:drawLayer(layerUtils:getLayer(self.hasLayerName))
end

function CollisionLayer:update(dt)
end

return CollisionLayer
