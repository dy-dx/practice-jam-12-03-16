local layerUtils = require 'utils/layerutils'
local CollisionBox = require 'entities/collisionbox'

local CollisionLayer = Class{}

function CollisionLayer:init(tileMap, bumpWorld)
    self:reset()

    for lindex, layer in ipairs(tileMap.layers) do
        if layer.name == 'MiddleLayer' then
            local prefix = layer.properties.oneway == "true" and "o(" or "t("
            for y, tiles in ipairs(layer.data) do
                for x, tile in pairs(tiles) do
                    bumpWorld:add(
                        prefix..layer.name..", "..x..", "..y..")",
                        (x - 1) * tileMap.tilewidth + tile.offset.x,
                        (y - 1) * tileMap.tileheight + tile.offset.y,
                        tileMap.tilewidth,
                        tileMap.tileheight
                    )
                end
            end
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
