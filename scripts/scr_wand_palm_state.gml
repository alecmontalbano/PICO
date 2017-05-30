///scr_wand_palm_state

shooting = false;
image_speed = .4;

 scr_get_wand_face();

// set initial wand direction
if (obj_input.rxaxis == 0 and obj_input.ryaxis == 0)
{   
    

    switch (obj_player.face) {
    
        case RIGHT:
            wandface = WANDRIGHT;
            image_angle = 0;
            depth = -11;
            x = obj_player.x+1;
            break;                 
        
        case UP:
            wandface = WANDUP;
            image_angle = 90;
            depth = -8;
            x = obj_player.x+3;
            break;
            
        case LEFT:
            wandface = WANDLEFT;
            image_angle = 180;
            depth = -8;
            x = obj_player.x-1;
            break;
        
        case DOWN:
            wandface = WANDDOWN;
            image_angle = 270;
            depth = -12;
            x = obj_player.x-3;
            break;
        }
    
    // CYCLE WAND
    scr_cycle_wand_key_pressed();    
            
    // SHOOT
    if (obj_input.shoot_key and shooting == false) {
        shooting = true;
        image_index = 0;
        sprite_index = spr_player_wand_palm_fan;
        state = scr_wand_palm_fan_state;
    }
        
} else {

// control wand aim
if ((abs(obj_input.rxaxis) > 0) || (abs(obj_input.ryaxis) > 0))
{
    pdir = point_direction(0, 0, obj_input.rxaxis, obj_input.ryaxis);
    angdif = angle_difference(pdir, image_angle);
    //how fast the wand points
    image_angle += median(-55, angdif, 55);
    


switch (wandface) {
    
        case WANDRIGHT:
            depth = -11;
            x = obj_player.x+1;
            break;                 
        
        case WANDUPRIGHT:
            depth = -8;
            x = obj_player.x+2.5;
            break;       
        
        case WANDUP:
            depth = -8;
            x = obj_player.x+3;
            break;
        
        case WANDUPLEFT:
            depth = -8;
            x = obj_player.x;
            break;    
            
        case WANDLEFT:
            depth = -8;
            x = obj_player.x-1;
            break;
        
        case WANDDOWNLEFT:
            depth = -8;
            x = obj_player.x-1.5;
            break;    
            
        case WANDDOWN:
            depth = -12;
            x = obj_player.x-3;
            break;
           
        case WANDDOWNRIGHT:
            depth = -12;
            x = obj_player.x-.5;
            break;    
        
    }
    
    // CYCLE WAND
    scr_cycle_wand_key_pressed();
    
     // SHOOT
    if (obj_input.shoot_key and shooting == false) {
        shooting = true;
        image_index = 0;
        sprite_index = spr_player_wand_palm_fan;
        state = scr_wand_palm_fan_state;
    }
    
    }
   
}
 
//back to wand inactive state       
if (wandactive = true and !obj_input.aim_key) {
    image_index = 0;
    wandactive = false;
    state = scr_wand_holstered_state;
    
}
