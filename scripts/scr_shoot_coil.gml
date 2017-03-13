///scr_shoot_coil()

if (obj_input.shoot_key) {

    var xpos = x + lengthdir_x(14, image_angle);
    var ypos = y + lengthdir_y(14, image_angle);

    var p = instance_create(xpos, ypos, obj_player_projectile_coil)
        var projdir = image_angle;
        var xforce = lengthdir_x(obj_player_projectile_coil.spd, projdir);
        var yforce = lengthdir_y(obj_player_projectile_coil.spd, projdir); 
        p.creator = id;
        
    with(p) {
        physics_apply_impulse(x, y, xforce, yforce);
    }
    
}


