-- http://hump.readthedocs.io/en/latest/class.html
local Player = Class{
    init = function(self, pos, img)
        self.pos = pos
        self.img = img
        self:reset()
    end;
}

function Player:reset()
end

function Player:update(dt)
end

function Player:draw()
end

function Player:init(image)
    self:reset()
end


function Player:update(dt)
end

return Player
