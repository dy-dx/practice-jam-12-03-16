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

local drawSystems = function(_, s) return not not s.isDrawingSystem end
local updateSystems = function(_, s) return not s.isDrawingSystem end

function love.draw(dt)
    if world then
        world:update(love.timer.getDelta(), drawSystems)
    end
end


function love.update(dt)
    Timer.update(dt)
    if world then
        world:update(love.timer.getDelta(), updateSystems)
    end
end


function init()
    level:load()
end

function reset()
end
