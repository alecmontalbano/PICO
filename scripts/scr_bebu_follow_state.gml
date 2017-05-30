///scr_bebu_follow_state
var dis = point_distance(x, y, obj_player.x-15, obj_player.y-15);
scr_bebu_check_for_player();
sprite_index = spr_bebu;
var dir = point_direction(0, 0, xaxis, yaxis); 
var hspd = lengthdir_x(spd, dir);
var vspd = lengthdir_y(spd, dir);

    x += hspd;
    y += vspd;

if (state == scr_bebu_follow_state and dis <= sight)
{
    state = scr_bebu_idle_state;
    
}
