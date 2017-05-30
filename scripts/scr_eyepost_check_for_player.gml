/// scr_eyepost_check_for_player()
if (instance_exists(obj_player) and obj_player.alive == true) {
    var dis = point_distance(x, y, obj_player.x, obj_player.y);
    if (dis < sight) {
        var dir = point_direction(x, y, obj_player.x, obj_player.y);
        xaxis = lengthdir_x(1, dir);
        yaxis = lengthdir_y(1, dir);
        
        state = scr_eyepost_shoot_state;
     } else {
        
        state = scr_eyepost_idle_state;
    }
}
