 local obj = {}
 obj.__index = obj
 obj.name = "Validator"

function obj:leftHalf(window, screen)
  return window.x == screen.x and
         window.y == screen.y and
         window.w == screen.w // 2 and
         window.h == screen.h
end

function obj:leftThird(window, screen)
  return window.x == screen.x and
         window.y == screen.y and
         window.w == (screen.w // 3) and
         window.h == screen.h
end

function obj:leftTwoThirds(window, screen)
  return window.x == screen.x and
         window.y == screen.y and
         window.w == ((screen.w // 3) * 2) and
         window.h == screen.h
end

function obj:leftThreeQuarters(window, screen)
  return window.x == screen.x and
         window.y == screen.y and
         window.w == ((screen.w // 4) * 3) and
         window.h == screen.h
end

function obj:rightHalf(window, screen)
  return window.x == (screen.w // 2) + screen.x and
         window.y == screen.y and
         window.w == screen.w // 2 and
         window.h == screen.h
end

function obj:rightThird(window, screen)
  return window.x == ((screen.w // 3) * 2 + screen.x) and
         window.y == screen.y and
         window.w == (screen.w // 3) and
         window.h == screen.h
end

function obj:rightTwoThirds(window, screen)
  return window.x == ((screen.w // 3) + screen.x) and
         window.y == screen.y and
         window.w == ((screen.w // 3) * 2) and
         window.h == screen.h
end

function obj:rightThreeQuarters(window, screen)
  return window.x == ((screen.w // 4) + screen.x) and
         window.y == screen.y and
         window.w == ((screen.w // 4) * 3) and
         window.h == screen.h
end

function obj:centerThird(window, screen)
  return window.x == (screen.w // 3) and
         window.y == screen.y and
         window.w == (screen.w // 3) and
         window.h == screen.h
end

function obj:inScreenBounds(window, screen)
  return window.w <= screen.w and
         window.h <= screen.h
end

return obj
