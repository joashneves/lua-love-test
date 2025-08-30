---@diagnostic disable: undefined-global

local Player = require("modules.player")

-- Quando começa o jogo
function love.load()
  love.physics.setMeter(64)                 -- tamanho do “metro” em pixels
  world = love.physics.newWorld(0, 0, true) -- sem gravidade
  player = Player:new(world, 100, 100)
end

-- Atualiza a cada quadro
function love.update(dt)
  world:update(dt)
  player:update(dt)
  
end

-- Redenriza na tela
function love.draw()
  love.graphics.setColor(0, 0, 0.2)
  love.graphics.rectangle("fill", 0, 0, 800, 600)
   
  player:draw()
end
