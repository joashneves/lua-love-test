Player = {}
Player.__index = Player

function Player:new(x,y)
  local object = {
    x = x,
    y = y, 
    w = 8,
    h = 8,
  }
  setmetatable(object, Player)
  return object
end

function Player:update(dt)
  self.x = self.x + 10 * dt
end

function Player:draw()
  love.graphics.setColor(1, 0.8, 0.2)
  love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
end

return Player