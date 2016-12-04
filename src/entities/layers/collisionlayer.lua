local layerUtils = require 'utils/layerutils'

local CollisionLayer = Class{}

function CollisionLayer:init()
    self:reset()
end

function CollisionLayer:reset()
end

function CollisionLayer:draw()
    -- Global.map:drawLayer(layerUtils:getLayer(self.hasLayerName))
end

function CollisionLayer:update(dt)
end

return CollisionLayer
