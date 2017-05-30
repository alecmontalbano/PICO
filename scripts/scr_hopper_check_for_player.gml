/// scr_hopper_check_for_player()
if (instance_exists(obj_player) and obj_player.alive == true) {
    var dis = point_distance(x, y, obj_player.x, obj_player.y);
    if (dis < sight) {
        spd = 1;
        var dir = point_direction(x, y, obj_player.x, obj_player.y);
        xaxis = lengthdir_x(1, dir);
        yaxis = lengthdir_y(1, dir);
        state = scr_hopper_chase_state;
    } else {
        spd = .5;
        scr_hopper_choose_next_state();
    }
} else {
    spd = .5;
    scr_hopper_choose_next_state();
}
