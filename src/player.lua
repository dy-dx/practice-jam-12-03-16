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
end

function Player:draw()
    love.graphics.draw(self.image, self.x, self.y)
end

function Player:update(dt)
    self.yVelocity = self.yVelocity + self.gravity * dt

    if love.keyboard.isDown("up") then
        self.yVelocity = self.jumpVelocity
    end

    if love.keyboard.isDown("left") then
        self.xVelocity = -self.xSpeed
    elseif love.keyboard.isDown("right") then
        self.xVelocity = self.xSpeed
    else
        self.xVelocity = 0
    end

    self.y = self.y + self.yVelocity * dt
    self.x = self.x + self.xVelocity * dt
    self.x = lume.clamp(self.x, 0, 800);
    self.y = lume.clamp(self.y, 0, 500);
end

return Player
