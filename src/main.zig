const std = @import("std");
const rl = @import("raylib");

const screenWidth = 1280;
const screenHeight = 720;

pub fn main() !void { 
    rl.initWindow(screenWidth, screenHeight, "Template");
    defer rl.closeWindow();

    rl.setTargetFPS(60);

    while (!rl.windowShouldClose()) {
       rl.beginDrawing();
       {
            rl.clearBackground(rl.Color.black);
            rl.drawFPS(20, 20);
       }
       rl.endDrawing();
    }
}

