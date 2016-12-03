-- globals
lume = require '../vendor/lume'
Class = require '../vendor/hump.class'
Timer = require '../vendor/hump.timer'
Signal = require '../vendor/hump.signal'
sti = require "../vendor/sti.init"
--require 'tiledmap'

local x, y = 0,0

local Player = require 'player'
local player = nil

function love.load()
    init()
    map = sti("tiled/ourfirsttiles.lua", {  })
end

function love.keypressed(key)
    if key == 'r'then
        reset()
    end
end

function love.draw()
    map:draw()
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
