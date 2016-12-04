-- local gamestate = require "lib.gamestate"

local Met = Class{}

function Met:init(x, y, target)
    self.sprite = love.graphics.newImage('assets/images/met_sample_sprite_left.png')

    self.pos = {x = x, y = y}
    self.vel = {x = 0, y = 0}
    self.gravity = 1000
    self.isEnemy = true

    self.debugHitbox = true
    self.hitbox = {x = 0, y = 0, w = 12, h = 12}
end

return Met
