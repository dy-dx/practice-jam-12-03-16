-- globals
lume = require '../vendor/lume'
Class = require '../vendor/hump.class'
Input = require '../vendor/input'
Timer = require '../vendor/hump.timer'
Signal = require '../vendor/hump.signal'
tiny = require '../vendor/tiny'

local level = require('states/level0')()

function love.load()
    init()
end

function love.keypressed(key)
    if key == 'r' then
        reset()
    end
end

function love.draw(dt)
    if world then
        local dt = love.timer.getDelta()
        Timer.update(dt)
        world:update(dt)
    end
end

function love.update(dt)
    -- using draw callback instead. uhhhh don't worry about it
end


function init()
    level:load()
end

function reset()
end
