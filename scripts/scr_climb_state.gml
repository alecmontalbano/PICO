///scr_climb_state

// get direction
dir = point_direction(0, 0, obj_input.lxaxis, obj_input.lyaxis);

// get the length
if (obj_input.lxaxis == 0 and obj_input.lyaxis == 0) {
    len = 0;
}else {
    len = ladderspd;
    scr_get_face();
}

// get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd =  lengthdir_y(len, dir);

// move
phy_position_x += hspd;
phy_position_y += vspd;

// control the sprite



//freeze animation if player isn't moving
if (len == 0)
    {
    
    image_speed = 0;
        
    switch (face) {
    
    case RIGHT:
    sprite_index = spr_player_climb_right;
    break;
    
    case UP:
    sprite_index = spr_player_climb_up;
    break;  
        
    case LEFT:
    sprite_index = spr_player_climb_left;
    break;
    
    case DOWN:
    sprite_index = spr_player_climb_down;
    break; 
        
        }
        
    } else {
    
    image_speed = .15;
    
    switch (face) {
    
    case RIGHT:
    sprite_index = spr_player_climb_right;
    break;
    
    case UP:
    sprite_index = spr_player_climb_up;
    break;  
        
    case LEFT:
    sprite_index = spr_player_climb_left;
    break;
    
    case DOWN:
    sprite_index = spr_player_climb_down;
    break;
    
        }
      //change back to move state
    if (state == scr_climb_state and !place_meeting(x, y, obj_par_ladder)) {
    
    if (obj_input.run_key and running == true)
    {
        image_index = 0;
        state = scr_run_state;
        } else
    image_index = 0;
    obj_bebu.spd = WALK_SPD;
    state = scr_walk_state;
    ladder = false;
    running = false
    obj_bebu.sight = 3;
    }
    
}
    


