///scr_roll_attack_state

if (len == 0) {
    dir = face*90;
}

len = spd*.16;

// get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd =  lengthdir_y(len, dir);

// move
phy_position_x += hspd;
phy_position_y += vspd;

image_speed = .6; 

if (image_index <= 5)
{
    switch (face) {
    
    case DOWN:
        sprite_index = spr_player_roll_attack_down;
        break;

    case UP:
        sprite_index = spr_player_roll_attack_up;
        break;
        
    case LEFT:
        sprite_index = spr_player_roll_attack_left;
        break;
        
    case RIGHT:
        sprite_index = spr_player_roll_attack_right;
        break;        
    }

if (image_index >= 2 and image_index <=4 and attacked == false) {
    
    var xx = 0;
    var yy = 0;    

    switch (face) {
    
        case DOWN:
            xx = x;
            yy = y+18;
            break;
    
        case UP:
            xx = x;
            yy = y-18;
            break;
            
        case LEFT:
            xx = x-18;
            yy = y+2;
            break;
            
        case RIGHT:
            xx = x+18;
            yy = y+2;           
            break;        
    }
    
    var damage = instance_create(xx, yy, obj_damage); 
    damage.creator = id;
    attacked = true;
    }   
}

if (image_index >= 6 and state == scr_roll_attack_state)

{
    if (obj_input.run_key and running == true) {
        image_index = 0;
        state = scr_run_state;
        } else
    image_index = 0;
    obj_bebu.spd = WALK_SPD;
    running = false;
    attacked = false;
    state = scr_walk_state;
    
}

