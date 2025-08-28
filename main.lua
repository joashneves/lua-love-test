local Player = require("/modules/player")

-- Quando começa o jogo
function love.load()
  player = Player:new(100, 100)
  x, y, w, h = 0, 0 , 60 , 20
end

-- quando precionado alguma tecla
function love.keypressed(key, scancode, isrepeat)
  player:keypressed(scancode)
end

-- quando solta alguma tecla
function love.keyreleased(key, scancode)
  player:keyreleased(scancode)
end

-- atualiza a cada quadro
function love.update(dt)
  player:update(dt)
  w = w + 1
  h = h + 1
end


-- Redenriza na tela
function love.draw()
  love.graphics.setColor(0, 0, 0.2)
  love.graphics.rectangle("fill", x, y, w, h)
  player:draw()
end

