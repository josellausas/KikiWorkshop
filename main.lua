-- main.lua

local background = nil
local avion 	 = nil
local posX  	 = nil
local posY  	 = nil
local speed 	 = nil
local gravedad   = nil
local obstaculos = {}

-- El archivo de entrada a nuestra app.
function love.load()

	background 	= love.graphics.newImage("images/background.png")
	avion 		= love.graphics.newImage("images/avion.png")
	posX 		= 300
	posY 		= 200
	speed 		= 300
	gravedad 	= 150

end

function love.update(dt)
	-- Gravedad!
	posY = posY + (gravedad * dt)

   	if love.keyboard.isDown("down") then
      	posY = posY - (speed * dt)
   	end
   	if love.keyboard.isDown("up") then
    	posY = posY - (speed * dt)
   	end
end



function love.draw()
	-- love.graphics.print('Hello World!', 400, 300)
	love.graphics.draw(background, 0, 0)
	love.graphics.draw(avion, posX, posY)
end