-- http://hump.readthedocs.io/en/latest/class.html
local DrawLayer = Class{}

function DrawLayer:init()
    self:reset()
end

function DrawLayer:reset()
    self.isDrawLayer = true;
end

function DrawLayer:draw(dt)
    Global.map:draw()
end

function DrawLayer:update(dt)
    Global.map:update(dt)
end

return DrawLayer
