///scr_bebu_follow_state
var dis = point_distance(x, y, obj_player.x-15, obj_player.y-15);
scr_bebu_check_for_player();
sprite_index = spr_bebu;
len = spd;
dir = point_direction(x, y, targetx, targety); 
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

    x += hspd;
    y += vspd;

if (state == scr_bebu_follow_state and dis <= sight)
{
    state = scr_bebu_idle_state;
    len = 0;
    targetx = 0;
    targety = 0;
    dir = 0;
    hspd = 0;
    vspd = 0;
}
