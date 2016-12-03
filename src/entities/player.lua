-- http://hump.readthedocs.io/en/latest/class.html
local anim8 = require '../vendor/anim8'
local assets = require 'src.assets'
local Player = Class{}

function Player:init()
    self.sprite = assets.img_megaman
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

    local g = anim8.newGrid(50, 50, assets.img_megaman:getWidth(), assets.img_megaman:getHeight())
    self.animation_stand = anim8.newAnimation(g('1-1', 1), 0.1)
    self.animation_walk = anim8.newAnimation(g('2-5', 1), 0.1)
    self.animation = self.animation_walk
end

function Player:draw()
end

function Player:update(dt)
    animation:update(dt)
end

return Player
