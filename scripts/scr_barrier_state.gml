///scr_barrier_state()

if (!instance_exists(obj_barrier)) {
//create barrier
instance_create(x, y, obj_barrier);
obj_barrier.creator = id;
}
        
//deplete magic
obj_player_stats.magic -= .1;
obj_player_stats.magicprc -= 1;
    
// get direction
dir = point_direction(0, 0, obj_input.lxaxis, obj_input.lyaxis);

// get the length
if (obj_input.lxaxis == 0 and obj_input.lyaxis == 0) {
    len = 0;
}else {
    len = 2 ;
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
    image_speed = .1;
    
    switch (face) {
    
    case RIGHT:
    sprite_index = spr_player_idle_right;
    break;
    
    case UP:
    sprite_index = spr_player_idle_up;
    break;  
        
    case LEFT:
    sprite_index = spr_player_idle_left;
    break;
    
    case DOWN:
    sprite_index = spr_player_idle_down;
    break; 
        
        }
        
} else {

    image_speed = .1;
    
    switch (face) {
    
    case RIGHT:
    sprite_index = spr_player_walk_right;
    break;
    
    case UP:
    sprite_index = spr_player_walk_up;
    break;  
        
    case LEFT:
    sprite_index = spr_player_walk_left;
    break;
    
    case DOWN:
    sprite_index = spr_player_walk_down;
    break;
    
    }
}

if (!obj_input.special_key and specialactive == true or obj_player_stats.magic <= 0) {
    image_index = 0;
    with (obj_barrier) {
        instance_destroy();
    }
    hurtable = true;   
    specialactive = false;
    state = scr_walk_state;
}
