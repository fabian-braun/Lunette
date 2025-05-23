local obj = {}
obj.__index = obj
obj.name = "Resize"

function obj:enlarge(window, screen)
  if (window.x - 10) >= screen.x then
    window.x = window.x - 10
  end

  if (window.y - 10) >= screen.y then
    window.y = window.y - 10
  end

  window.w = window.w + 20
  window.h = window.h + 20

 return window
end

function obj:fullScreen(window, screen)
  window.x = screen.x
  window.y = screen.y
  window.w = screen.w
  window.h = screen.h

  return window
end

function obj:center(window, screen)
  window.x = ((screen.w - window.w) // 2) + screen.x
  window.y = ((screen.h - window.h) // 2) + screen.y

  return window
end

function obj:shrink(window, screen)
  window.x = window.x + 10
  window.y = window.y + 10
  window.w = window.w - 20
  window.h = window.h - 20

  return window
end

function obj:leftHalf(window, screen)
  window.x = screen.x
  window.y = screen.y
  window.w = screen.w // 2
  window.h = screen.h

  return window
end

function obj:leftThird(window, screen)
  window.x = screen.x
  window.y = screen.y
  window.w = screen.w // 3
  window.h = screen.h

  return window
end

function obj:leftTwoThirds(window, screen)
  window.x = screen.x
  window.y = screen.y
  window.w = (screen.w // 3) * 2
  window.h = screen.h

  return window
end

function obj:leftThreeQuarters(window, screen)
  window.x = screen.x
  window.y = screen.y
  window.w = (screen.w // 4) * 3
  window.h = screen.h

  return window
end

function obj:rightHalf(window, screen)
  window.x = (screen.w // 2) + screen.x
  window.y = screen.y
  window.w = screen.w // 2
  window.h = screen.h

  return window
end

function obj:rightThird(window, screen)
  window.x = (screen.w // 3) * 2 + screen.x
  window.y = screen.y
  window.w = screen.w // 3
  window.h = screen.h

  return window
end

function obj:rightTwoThirds(window, screen)
  window.x = (screen.w // 3) + screen.x
  window.y = screen.y
  window.w = (screen.w // 3) * 2
  window.h = screen.h

  return window
end

function obj:rightThreeQuarters(window, screen)
  window.x = (screen.w // 4) + screen.x
  window.y = screen.y
  window.w = (screen.w // 4) * 3
  window.h = screen.h

  return window
end

function obj:centerThird(window, screen)
  window.x = screen.w // 3
  window.y = screen.y
  window.w = screen.w // 3
  window.h = screen.h

  return window
end

return obj
