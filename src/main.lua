-- globals
lume = require '../vendor/lume'
Class = require '../vendor/hump.class'
Input = require '../vendor/input'
Timer = require '../vendor/hump.timer'
Signal = require '../vendor/hump.signal'


local Player = require 'player'
local player = nil

function love.load()
    init()
    input = Input()
    input:bind('left', 'left')
    input:bind('right', 'right')
    input:bind('up', 'up')
end

function love.keypressed(key)
    if key == 'r' then
        reset()
    end
end

function love.draw()
    player:draw()
end

function love.update(dt)
    Timer.update(dt)
    player:update(dt)
end


function init()
    player = Player()
end

function reset()
end
