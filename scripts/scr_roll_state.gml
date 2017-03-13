///scr_roll_state



if (obj_input.attack_key_pressed and rolled == true and state == scr_roll_state)
{
    image_index = 0;
    state = scr_roll_attack_state;
    rolled = false;
    
}

if (len == 0) {
    dir = face*90;
}

if (place_meeting(x, y, obj_par_ladder)) {
    
    image_index = 0;
    ladder = true;
    state = scr_climb_state;
    
}





len = rollspd;

// get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd =  lengthdir_y(len, dir);

// move
phy_position_x += hspd;
phy_position_y += vspd;

// control the sprite
image_speed = .5;
if (len == 0) {
    image_index = 0;
}

if (image_index <= 6)
{

    switch (face) {
    
    case RIGHT:
    sprite_index = spr_player_roll_right;
    break;
    
    case UP:
    sprite_index = spr_player_roll_up;
    break;  
        
    case LEFT:
    sprite_index = spr_player_roll_left;
    break;
    
    case DOWN:
    sprite_index = spr_player_roll_down;
    break;
    
    
    
    }
    
    if (image_index >= 1)
    {
        rolled  = true;
    }
    
    
}

if (image_index >= 7 and state == scr_roll_state)
{
    if (obj_input.run_key and running == true) {
        image_index = 0;
        state = scr_run_state;
        } else
    image_index = 0;
    obj_bebu.spd = WALK_SPD;;
    state = scr_walk_state;
    rolled  = false
    running = false;
    
}


