-- Main.lua
-- Lugar de entrada de nuestra app

--Variables
local parte1 = "hola"
local parte2 = " KikiHeadquarters"

local kikiMensaje = "Hola KIKI"
local posX 		= 300
local posY 		= 100
local fondo 	= nil
local player1 	= nil
local gravedad  = 100



-- Se corre cuando carga la app
function love.load()
	io.stdout:setvbuf("no")
	-- Imprimir a la cosa de esas
	print("Load")

	-- Cargar las imágenes:
	fondo   = love.graphics.newImage("images/background.png")
	player1 = love.graphics.newImage("images/avion.png")
	
end

-- Se corre cada FPS
function love.update(dt)

	

	-- dt = Diferencia en tiempo entre frame y frame (ms)

end

-- Se corre despues de update
function love.draw()
	-- Dibujar el fondo:
 	love.graphics.draw(fondo, 0, 0)

 	-- Dibujar el jugador
 	love.graphics.draw(player1, posX, posY)


	--love.graphics.print(kikiMensaje, posX, posY)
end

-- Se corre cuando termina la app
function love.exit()

end


