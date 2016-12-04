local CollisionBox = Class{}

function CollisionBox:init(x, y, w, h)
    self.debugHitbox = true
    self.isAlive = true
    self.isSolid = true
    self.isStatic = true
    self.pos = {x = x, y = y}
    self.vel = {x = 0, y = 0}
    self.hitbox = {x = 0, y = 0, w = w or 100, h = h or 100}
end

return CollisionBox
