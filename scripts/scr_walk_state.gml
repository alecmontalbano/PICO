///scr_walk_state

//Run
if (state == scr_walk_state and obj_input.run_key and running == false) {
    image_index = 0;
    state = scr_run_state;
    obj_bebu.spd = RUN_SPD;
    running = true;
}

//Attack
if(obj_input.attack_key_pressed and canattack == true) {
    image_index = 0;
    state = combostate[combo];
    canattack = false;  
    //increment combo and don't allow to exceed maxcombo;
    combo = (combo+1)%combomax;
    obj_bebu.sight = 100;
}

//Roll
if(obj_input.roll_key and obj_player_stats.stamina >= ROLL_COST) {
    image_index = 0;
    state = scr_roll_state;
    obj_player_stats.stamina -= ROLL_COST;
    //time before the player is able to roll again
    obj_player_stats.alarm[0] = room_speed;
}

//Climb
if (place_meeting(x, y, obj_par_ladder)) {
    
    image_index = 0;
    obj_bebu.sight = 1000;
    ladder = true;
    state = scr_climb_state;
    
}

//Hurt
scr_initiate_hurt_state();

// get direction
dir = point_direction(0, 0, obj_input.lxaxis, obj_input.lyaxis);

// get the length
if (obj_input.lxaxis == 0 and obj_input.lyaxis == 0) {
    len = 0;
}else {
    len = spd;
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
    
    //Aim
    scr_aim_key_pressed();
        
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
    
    //Interact
    if (obj_input.interact_key and caninteract == true)
    {
        state = scr_interact_state;
        caninteract = false;
        }
        
} else {
    
    image_speed = .2;
    
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

