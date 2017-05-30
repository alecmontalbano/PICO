/// scr_eyepost_shoot_state()

sprite_index = spr_eyepost_attack;
image_speed = .1;
var dir = point_direction(0, 0, xaxis, yaxis); 
var hspd = lengthdir_x(spd, dir);
var vspd = lengthdir_y(spd, dir); 
if (hspd != 0) {
    image_xscale = -sign(hspd);
    if (image_index == 5) {
    if (shooting == false) {
    shooting = true;
    var xpos = x + lengthdir_x(1, image_xscale);
    var ypos = y + lengthdir_y(1, image_xscale);

    var p = instance_create(xpos, ypos-9, obj_projectile_eyepost);
        var projdir = point_direction(xpos, ypos, obj_player.x, obj_player.y);
        var xforce = lengthdir_x(obj_projectile_eyepost.spd, projdir);
        var yforce = lengthdir_y(obj_projectile_eyepost.spd, projdir); 
        p.creator = id;
        
    with(p) {
        physics_apply_impulse(x, y, xforce, yforce);
    }
   }
  } 
}

scr_eyepost_check_for_player();


