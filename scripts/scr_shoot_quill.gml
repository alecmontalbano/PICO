///scr_shoot_quill()

if (obj_input.shoot_key and freezing = false) {

    var xpos = x + lengthdir_x(19, image_angle);
    var ypos = y + lengthdir_y(19, image_angle);

    var p = instance_create(xpos, ypos, obj_player_projectile_quill)
        var projdir = image_angle;
        var xforce = lengthdir_x(obj_player_projectile_quill.spd, projdir);
        var yforce = lengthdir_y(obj_player_projectile_quill.spd, projdir); 
        p.creator = id;
     
    //create trail
    var trailfx = instance_create(obj_player_projectile_quill.x, obj_player_projectile_quill.y, obj_speed_trail_effect);
    trailfx.sprite_index = obj_player_projectile_quill.sprite_index;
    trailfx.image_speed = 3;
    
           
    with(p) {
        physics_apply_impulse(x, y, xforce, yforce);
    }
    
}


