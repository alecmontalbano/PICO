/// scr_zel_attack_state()
if (instance_exists(obj_player) and obj_player.alive == true) {
    if (hp <= 0) {
    image_index = 0;
    state = scr_zel_death_state;
    }

    sprite_index = spr_zel_attack_down;
    image_speed = .4;
    
    if (image_index ==10) {   
        var xx = obj_zel.x;
        var yy = obj_zel.y+40;
      var damage = instance_create(xx, yy, obj_onima_slash); 
      obj_onima_slash.creator = id;
    }
    
    if (alarm[1] == -1) {
        alarm[1] = 45;
    }
    
 
} else {
    state = scr_zel_idle_state;
}





