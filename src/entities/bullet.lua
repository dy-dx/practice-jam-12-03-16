-- http://hump.readthedocs.io/en/latest/class.html
local Bullet = Class{}

function Bullet:init(x, y, dir)
    self.sprite = love.graphics.newImage("assets/images/bullet.png")
    self:reset(x, y, dir)
end

function Bullet:reset(x, y, dir)
    self.isDead = false
    self.hasProjectilePhysics = true

    self.pos = {x = x, y = y}

    if dir == "left" then
        self.xVelocity = -500
    else 
        self.xVelocity = 500
    end
    self.yVelocity = 0
end

function Bullet:draw()
end

function Bullet:update(dt)
end

return Bullet
