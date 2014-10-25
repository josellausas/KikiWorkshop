#<center>Intro a Lua</center>

##Instalar

- [Love2D](http://love2d.org/)
- [SublimeText 2](http://www.sublimetext.com/)


## Links

- [The Love2D Wiki](http://www.love2d.org/wiki/Main_Page)
- [Crear archivos *.love](http://www.love2d.org/wiki/Game_Distribution)
- [Jose's Blog](http://josellausas.com)


## Hello World

1. Crear folder `KikiLua` 
2. Crear archivo `main.lua`
3. Editar `main.lua` con:
	
	```
	local cc = require('llauColors')
	-- Output a terminal con SublimeText:
	io.stdout:setvbuf("no")
	
	function love.draw()
		love.graphics.print('Hello World!', 400, 300)
	end
	
	```
	
## Correr el programa

1. Arrastrar el folder de proyecto a Love.exe o Love.app
2. Configurar Sublime Text 2 (Recomendado)

### Configurar Windows

Pega el código en: `Tools > Build System > New Build System`

_Ojo:_ Si tu windows está en español reemplaza `Program Files/` con `Archivos de Programa/`

```
{
    "selector": "source.lua",
    "cmd": ["C:/Program Files/LOVE/love.exe", "${project_path:${file_path}}"],
    "shell": true,
    "file_regex": "^Error: (?:[^:]+: )?([^: ]+?):(\\d+):() ([^:]*)$"
}
```

Corre el código con `CTRL + B`

### Configurar Mac/OSX

Pega el código en: `Tools > Build System > New Build System`

_Ojo:_ Asume que Love.app está en el folder de Applications

```
{
    "selector": "source.lua",
    "cmd": ["/Applications/love.app/Contents/MacOS/love", "${project_path:${file_path}}"],
    "file_regex": "^Error: (?:[^:]+: )?([^: ]+?):(\\d+):() ([^:]*)$"
}
```
Corre el código con `CMD + B`

