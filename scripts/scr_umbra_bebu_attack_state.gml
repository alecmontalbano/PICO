/// scr_umbra_bebu_attack_state()
if (instance_exists(obj_player) and obj_player.alive == true) {
    scr_move_axis_onima();
    if (hp <= 0) {
    image_index = 0;
    state = scr_umbra_bebu_death_state;
    }

    sprite_index = spr_umbra_bebu_attack;
    image_speed = .4;
    
    if (image_index == 10) {   
        var xx = obj_umbra_bebu.x;
        var yy = obj_umbra_bebu.y;
      var damage = instance_create(xx, yy, obj_onima_slash); 
      obj_onima_slash.creator = id;
    }
    
    if (alarm[1] == -1) {
        alarm[1] = 34;
    }
    
 
} else {
    state = scr_umbra_bebu_idle_state;
}





