#<center>Intro a Lua</center>

##Instalar

- [Love2D](http://love2d.org/)
- [SublimeText 2](http://www.sublimetext.com/)


## Links

- [The Love2D Wiki](http://www.love2d.org/wiki/Main_Page)
- [Crear archivos *.love](http://www.love2d.org/wiki/Game_Distribution)
- [Jose's Blog](http://josellausas.com)



	
## Configura Sublime


### Windows

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

### Mac/OSX

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

## Hello World

1. Crear folder `KikiLua` 
2. Crear archivo `main.lua`
3. Editar `main.lua` con:
	
	```
	function love.draw()
		love.graphics.print('Hello World!', 400, 300)
	end
	
	```
	
## conf.lua

Love utiliza un archivo especial llamado conf.lua.

1. Crea `conf.lua`
2. Edita el archivo con este codigo:

```
-- Configura Love
function love.conf(w)
	-- Output en Sublime:
	io.stdout:setvbuf("no")
	
	-- El tamaño de la pantalla:
	w.window.width 	= 800
	w.window.height = 480
	
	-- Titulo de la ventana
	w.window.title = "KIKI WORKSHOPS"
end
```

## Usando Love2D

- `love.load()`
- `love.draw()`
- `love.update()`
- `love.exit()`


