-- http://hump.readthedocs.io/en/latest/class.html
local Player = Class{}

function Player:init()
    self.image = love.graphics.newImage("assets/images/megaman_sample_sprite_right.png")
    self:reset()
end

function Player:reset()
    self.x = 100
    self.y = 500
    self.xVelocity = 0
    self.yVelocity = 0
    self.xSpeed = 200
    self.jumpVelocity = -200
    self.gravity = 1000

    self.maxJumpTime = 0.3
    self.canJump = true
    self.jumpTime = 0
end

function Player:draw()
    love.graphics.draw(self.image, self.x, self.y)
end

function Player:update(dt)
    self.yVelocity = self.yVelocity + self.gravity * dt

    if input:down("up") and self.canJump then
        self.yVelocity = self.jumpVelocity
        self.jumpTime = self.jumpTime + dt
    end
    if input:released("up") then
        self.canJump = false
    end
    if self.jumpTime >= self.maxJumpTime then
        self.canJump = false
    end

    if input:down("left") then
        self.xVelocity = -self.xSpeed
    elseif input:down("right") then
        self.xVelocity = self.xSpeed
    else
        self.xVelocity = 0
    end

    self.y = self.y + self.yVelocity * dt
    self.x = self.x + self.xVelocity * dt
    self.x = lume.clamp(self.x, 0, 800)
    if (self.y > 500) then 
        self.y = 500
        self.jumpTime = 0
        self.canJump = true
    end
end

return Player
