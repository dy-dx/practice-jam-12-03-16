-- http://hump.readthedocs.io/en/latest/class.html
local Player = Class{}

function Player:init()
    self.sprite = love.graphics.newImage("assets/images/megaman_sample_sprite_right.png")
    self:reset()
end

function Player:reset()
    self.controllable = true
    self.pos = {x = 100, y = 500}
    self.xVelocity = 0
    self.yVelocity = 0
    self.xSpeed = 200
    self.jumpVelocity = -200
    self.gravity = 1000

    self.maxJumpTime = 0.3
    self.canJump = true
    self.jumpTime = 0

    self.timeBetweenShots = 0.1
    self.canShoot = true
    self.timeSinceShot = 1
end

function Player:draw()
end

function Player:update(dt)
end

return Player
