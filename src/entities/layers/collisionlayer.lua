local layerUtils = require 'utils/layerutils'
local CollisionBox = require 'entities/collisionbox'

local CollisionLayer = Class{}

function CollisionLayer:init(map)
    self:reset()

    local tileWidth = Global.map.tilewidth
    local tileHeight = Global.map.tileheight

    for y, tiles in ipairs(layerUtils:getLayer('MiddleLayer').data) do
        for x, tile in pairs(tiles) do
            world:addEntity(CollisionBox((x - 1) * tileWidth, (y - 1) * tileHeight, tileWidth, tileHeight))
        end
    end
end

function CollisionLayer:reset()
end

function CollisionLayer:draw()
    -- Global.map:drawLayer(layerUtils:getLayer(self.hasLayerName))
end

function CollisionLayer:update(dt)
end

return CollisionLayer
