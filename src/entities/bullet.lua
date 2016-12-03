-- http://hump.readthedocs.io/en/latest/class.html
local Bullet = Class{}

function Bullet:init(x, y, movingRight)
    self.sprite = love.graphics.newImage("assets/images/bullet.png")
    self:reset(x, y, movingRight)
end

function Bullet:reset(x, y, movingRight)
    self.isDead = false
    self.isSolid = true
    self.hasProjectilePhysics = true
    self.isBullet = true

    self.pos = {x = x, y = y}
    self.vel = {x = 0, y = 0}

    if movingRight then
        self.vel.x = 500
    else
        self.vel.x = -500
    end
end

function Bullet:draw()
end

function Bullet:update(dt)
end

return Bullet
