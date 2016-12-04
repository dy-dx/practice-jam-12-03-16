local DebugHitboxSystem = Class{}
DebugHitboxSystem = tiny.processingSystem(DebugHitboxSystem)

function DebugHitboxSystem:init()
    self.isDrawingSystem = true
    self.filter = tiny.requireAll('debugHitbox', 'pos', 'hitbox')
end

function DebugHitboxSystem:preProcess(dt)
    love.graphics.setColor(255, 105, 180, 100)
end

function DebugHitboxSystem:postProcess(dt)
    love.graphics.setColor(255, 255, 255, 255)
end

function DebugHitboxSystem:process(e, dt)
    local pos = e.pos
    local hitbox = e.hitbox
    love.graphics.rectangle('fill', pos.x + hitbox.x, pos.y + hitbox.y, hitbox.w, hitbox.h)
end

return DebugHitboxSystem
