require "src.utilities.ui.control"

UI = {}

function UI:update(dt)
    --- if you dont use gooi delete this bellow
    gooi.update(dt)
end

function UI:draw()
    --- if you dont use gooi delete this bellow
    gooi.draw()
	gooi.draw(UIControl.group)
end

--- if you dont use gooi delete this bellow
function love.touchmoved(id, x, y) gooi.moved(id, x, y) end

function love.touchpressed(id, x, y) gooi.pressed(id, x, y) end

function love.touchreleased(id, x, y) gooi.released(id, x, y) end

function love.mousemoved() gooi.moved() end

function love.mousereleased() gooi.released() end

function love.mousepressed() gooi.pressed() end
