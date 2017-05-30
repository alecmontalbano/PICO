///scr_move_axis_onima()
 var pdir = point_direction(x, y, obj_player.x, obj_player.y);
        xaxis = lengthdir_x(1, pdir);
        yaxis = lengthdir_y(1, pdir);   
var dir = point_direction(0, 0, xaxis, yaxis); 
var hspd = lengthdir_x(spd, dir);
var vspd = lengthdir_y(spd, dir); 
if (hspd != 0) {
    image_xscale = sign(hspd); 
}

phy_position_x += hspd;
phy_position_y += vspd;

