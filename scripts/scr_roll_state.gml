///scr_move_state
if (len == 0) {
    dir = face*90;
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
    
    rolled = true;
}


