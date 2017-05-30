///scr_barrier_state()
    
// get direction
dir = point_direction(0, 0, obj_input.lxaxis, obj_input.lyaxis);

// get the length
if (obj_input.lxaxis == 0 and obj_input.lyaxis == 0) {
    len = 0;
}else {
    len = 6 ;
    scr_get_face();
}

// get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd =  lengthdir_y(len, dir);

// move
phy_position_x += hspd;
phy_position_y += vspd;

// control the sprite
if (len == 0)
{
    image_speed = .25;
    
    switch (face) {
    
    case RIGHT:
    sprite_index = spr_player_speed_idle_right;
    break;
    
    case UP:
    sprite_index = spr_player_speed_idle_up;
    break;  
        
    case LEFT:
    sprite_index = spr_player_speed_idle_left;
    break;
    
    case DOWN:
    sprite_index = spr_player_speed_idle_down;
    break; 
        
        }
        
     //create speed effect
    var fade = instance_create(x, y, obj_speed_fade_effect);
    fade.sprite_index = sprite_index;
        
} else {

    image_speed = .25;
    
    switch (face) {
    
    case RIGHT:
    sprite_index = spr_player_speed_move_right;
    break;
    
    case UP:
    sprite_index = spr_player_speed_move_up;
    break;  
        
    case LEFT:
    sprite_index = spr_player_speed_move_left;
    break;
    
    case DOWN:
    sprite_index = spr_player_speed_move_down;
    break;
    
    }
    
    var trailfx = instance_create(x, y, obj_speed_trail_effect);
    trailfx.sprite_index = sprite_index;
    trailfx.image_speed = 0;
    trailfx.image_index = 1
    
}

if (specialactive == true and alarm[0] == -1) {
    image_index = 0;
    hurtable = true;   
    specialactive = false;
    state = scr_walk_state;
}
