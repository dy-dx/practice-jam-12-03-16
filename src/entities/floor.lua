local Floor = Class{}

function Floor:init(x, y, dir)
    self:reset(x, y, dir)
end

function Floor:reset(x, y, dir)
    self.isAlive = true
    self.isSolid = true
    self.pos = {x = x, y = y}
    self.vel = {x = 0, y = 0}
    self.hitbox = {x = 0, y = 0, w = 800, h = 10}
end

function Floor:draw()
end

return Floor
