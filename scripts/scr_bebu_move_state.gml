///scr_bebu_move_state()



if (obj_bebu.x == obj_player.x-20 and obj_bebu.y == obj_player.y-20)
{
    len = 0;
    dir = point_direction(obj_bebu.x, obj_bebu.y, targetx, targety);
    obj_bebu.y = anchorY + sin(timer*frequency)*amplitude;
    timer++;   
} else
{
    targetx = obj_player.x-20;
    targety = obj_player.y-20;
    dir = point_direction(obj_bebu.x, obj_bebu.y, targetx, targety);
    len = spd;
    hspd = lengthdir_x(len, dir);
    vspd = lengthdir_y(len, dir);
    
    obj_bebu.x += hspd;
    obj_bebu.y += vspd;
}


