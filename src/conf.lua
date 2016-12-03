-- https://love2d.org/wiki/Config_Files
function love.conf(t)
    t.modules.joystick = false
    t.modules.physics = false
    t.window.title = "Practice Jam"
    t.window.width = 800
    t.window.height = 600
end
