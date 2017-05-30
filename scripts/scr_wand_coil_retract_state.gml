///scr_wand_coil_retract_state

image_speed = 3;
 
if (obj_input.rxaxis == 0 and obj_input.ryaxis == 0)
{   
 
    switch (obj_player.face) {
    
        case RIGHT:
            image_angle = 0;
            depth = -11;
            x = obj_player.x+1;
            break;                 
        
        case UP:
            image_angle = 90;
            depth = -8;
            x = obj_player.x+3;
            break;
            
        case LEFT:
            image_angle = 180;
            depth = -8;
            x = obj_player.x-1;
            break;
        
        case DOWN:
            image_angle = 270;
            depth = -12;
            x = obj_player.x-3;
            break;
        }
        
} else {

// control wand aim
if ((abs(obj_input.rxaxis) > 0) || (abs(obj_input.ryaxis) > 0))
{
    
    scr_get_wand_face();


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
    
  }
   
}

if (image_index >= 4 and shooting == true) {
    shooting = false
    image_index = 0;
    image_speed = .1;
    sprite_index = spr_player_wand_coil;
    state = scr_wand_coil_state;
}

