PlayerControlSystem = tiny.processingSystem(Class{})

function PlayerControlSystem:init()
    self.filter = tiny.requireAll('controllable')
    self.input = Input()
    self.input:bind('left', 'left')
    self.input:bind('right', 'right')
    self.input:bind('up', 'up')
end

function PlayerControlSystem:preProcess(dt)
end

function PlayerControlSystem:postProcess(dt)
end

function PlayerControlSystem:process(e, dt)
    e.yVelocity = e.yVelocity + e.gravity * dt

    if self.input:down("up") and e.canJump then
        e.yVelocity = e.jumpVelocity
        e.jumpTime = e.jumpTime + dt
    end
    if self.input:released("up") then
        e.canJump = false
    end
    if e.jumpTime >= e.maxJumpTime then
        e.canJump = false
    end

    if self.input:down("left") then
        e.xVelocity = -e.xSpeed
    elseif self.input:down("right") then
        e.xVelocity = e.xSpeed
    else
        e.xVelocity = 0
    end

    e.pos.y = e.pos.y + e.yVelocity * dt
    e.pos.x = e.pos.x + e.xVelocity * dt
    e.pos.x = lume.clamp(e.pos.x, 0, 800)
    if (e.pos.y > 500) then
        e.pos.y = 500
        e.jumpTime = 0
        e.canJump = true
    end
end

return PlayerControlSystem
