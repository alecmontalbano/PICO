/// scr_tentaberg_shoot_state()
if (instance_exists(obj_player) and obj_player.alive == true) {
    
    if (hp <= 0) {
    image_index = 0;
    state = scr_tentaberg_death_state;
    }

    sprite_index = spr_tentaberg_attack;
    image_speed = .4;
    
    if (alarm[1] == -1) {
        alarm[1] = 125;
    }
    
    var playerdir = point_direction(x, y, obj_player.x, obj_player.y);
    xaxis = lengthdir_x(1, playerdir);
    yaxis = lengthdir_y(1, playerdir);
    var dir = point_direction(0, 0, xaxis, yaxis); 

    if (image_index == 8) {
    
    
    var xpos = x + lengthdir_x(1, dir);
    var ypos = y + lengthdir_y(1, dir);

    var p = instance_create(xpos, ypos + 20 , obj_projectile_tentaberg);
        var projdir = point_direction(xpos, ypos, obj_player.x, obj_player.y);
        var xforce = lengthdir_x(obj_projectile_tentaberg.spd, projdir);
        var yforce = lengthdir_y(obj_projectile_tentaberg.spd, projdir); 
        p.creator = id;
        
    with(p) {
        physics_apply_impulse(x, y, xforce, yforce);
    }
   
  } 
  
} else {
    state = scr_tentaberg_idle_state;
}





