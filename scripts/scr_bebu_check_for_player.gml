///scr_bebu_check_for_player

if (instance_exists(obj_player)) {
        var dir = point_direction(x, y, obj_player.x-15, obj_player.y-15);
        xaxis = lengthdir_x(5, dir);
        yaxis = lengthdir_y(5, dir);
    
} 
