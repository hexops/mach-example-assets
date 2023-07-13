const std = @import("std");

// Relative to root folder
// Use with std.fs.cwd().openFile(assets.some_file_path)
const root_path = "assets/";
const sprites_path = root_path ++ "sprites/";

pub const sphere_m3d = @embedFile("assets/sphere.m3d");
pub const teapot_m3d = @embedFile("assets/teapot.m3d");
pub const torusknot_m3d = @embedFile("assets/torusknot.m3d");
pub const venus_m3d = @embedFile("assets/venus.m3d");
pub const stanford_dragon_m3d = @embedFile("assets/stanford_dragon.m3d");

pub const gotta_go_fast_png = @embedFile("assets/gotta-go-fast.png");
pub const sprites_sheet_png = @embedFile("assets/sprites/sheet.png");
pub const sprites_sheet_red_png = @embedFile("assets/sprites/sheet-red.png");

pub const roboto_medium_ttf = @embedFile("assets/fonts/Roboto-Medium.ttf");

pub const skybox_negx_png = @embedFile("assets/skybox/negx.png");
pub const skybox_negy_png = @embedFile("assets/skybox/negy.png");
pub const skybox_negz_png = @embedFile("assets/skybox/negz.png");
pub const skybox_posx_png = @embedFile("assets/skybox/posx.png");
pub const skybox_posy_png = @embedFile("assets/skybox/posy.png");
pub const skybox_posz_png = @embedFile("assets/skybox/posz.png");

test {
    std.testing.refAllDeclsRecursive(@This());
}
