PhysicsControlSystem = tiny.processingSystem(Class{})

function PhysicsControlSystem:init()
    self.filter = tiny.requireAll('hasSimplePhysics')
end

function PhysicsControlSystem:preProcess(dt)
end

function PhysicsControlSystem:postProcess(dt)
end

function PhysicsControlSystem:process(e, dt)
    e.pos.x = e.pos.x + e.xVelocity * dt
    e.pos.y = e.pos.y + e.yVelocity * dt
    if e.pos.x > 800 or e.pos.x < 0 then
        e.isDead = true
    end
end

return PhysicsControlSystem
