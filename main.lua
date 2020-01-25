require 'src/dependencies'

function love.load()
  math.randomseed(os.time())
  love.window.setTitle("Dark Legend")
  love.graphics.setDefaultFilter('nearest', 'nearest')

  push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
      fullscreen = false,
      vsync = true,
      resizable = true
    })
  
end


function love.resize(w, h)
  push:resize(w, h)
end



function love.keypressed(key)
  if key == 'escape' then
    love.event.quit()
  end
end

function love.draw()
  push:start()
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.setFont(gFonts['medium'])
  love.graphics.print("Dark Legend", 50, 50)
  love.graphics.rectangle("fill", 100, 100, 50, 80)
  push:finish()
end
