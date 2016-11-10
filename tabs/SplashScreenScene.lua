-- SplashScreenScene
-- Lesson 6

-- Created by: Zachary Minarik-Eastman
-- Created on: Nov 2016
-- Created for: ICS2O
-- This is the first scene

SplashScreenScene = class()

-- variables local to entire file
local moveForwardButton

function SplashScreenScene:init()

    --sprite("Cargo Bot:Command Right")
    moveForwardButton = Button("Cargo Bot:Command Right", vec2(WIDTH/2, HEIGHT/2))   
end

function SplashScreenScene:draw()
   -- Codea does not automatically call this method
    
    background(255, 0, 7, 255)
    moveForwardButton:draw()
end

function SplashScreenScene:touched(touch)
    -- Codea does not automatically call this method
   
   moveForwardButton:touched(touch)
   
    if(moveForwardButton.selected == true) then
       Scene.Change("play")
    end
end