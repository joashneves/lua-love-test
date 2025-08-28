Player = {}
Player.__index = Player

function Player:new(world, x,y)
  local object = {
    x = x,
    y = y, 
    horizontal_moviment = 0,
    vertical_moviment = 0,
    speed = 57,
    w = 8,
    h = 8,
  }

  setmetatable(object, Player)
  -- Cria corpo
  object.body = love.physics.newBody(world, x, y, "dynamic")
  object.shape = love.physics.newRectangleShape(object.w, object.h)
  object.fixture = love.physics.newFixture(object.body, object.shape, 1)
  object.body:setFixedRotation(true)

  return object
end

function Player:update(dt)
  self.x = self.x + dt * self.speed * self.horizontal_moviment;
  self.y = self.y + dt * self.speed * self.vertical_moviment;
end

function Player:keypressed(scancode)
    if scancode == "d" then
        self.horizontal_moviment = 1
    elseif scancode == "a" then
        self.horizontal_moviment = -1
    elseif scancode == "w" then
        self.vertical_moviment = -1
    elseif scancode == "s" then
        self.vertical_moviment = 1
    end
end

function Player:keyreleased(scancode)
    if scancode == "d" or scancode == "a" then
        self.horizontal_moviment = 0
    elseif scancode == "w" or scancode == "s" then
        self.vertical_moviment = 0
    end
end


function Player:draw()
  love.graphics.setColor(1, 0.8, 0.2)
  love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
end

return Player