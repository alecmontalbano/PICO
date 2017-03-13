///scr_raycaster_active_state

// set initial wand direction
if (obj_input.rxaxis == 0 and obj_input.ryaxis == 0)
{    
    switch (obj_player.face) {
    
        case RIGHT:
            image_angle = 0;
            x = obj_player.x+1;
            break;                 
        
        case UP:
            image_angle = 90;
            x = obj_player.x+3;
            break;
            
        case LEFT:
            image_angle = 180;
            x = obj_player.x-1;
            break;
        
        case DOWN:
            image_angle = 270;
            x = obj_player.x-3;
            break;
        }
        
    // SHOOT
    scr_shoot_key_pressed();
    
} else {

// control wand aim
if ((abs(obj_input.rxaxis) > 0) || (abs(obj_input.ryaxis) > 0))
{
    pdir = point_direction(0, 0, obj_input.rxaxis, obj_input.ryaxis);
    angdif = angle_difference(pdir, image_angle);
    //how fast the wand points
    image_angle += median(-20, angdif, 20);
}

scr_get_raycaster_face();


switch (raycasterface) {
    
        case WANDRIGHT:
            x = obj_player.x+1;
            break;                 
        
        case WANDUPRIGHT:
            x = obj_player.x+2.5;
            break;       
        
        case WANDUP:
            x = obj_player.x+3;
            break;
        
        case WANDUPLEFT:
            x = obj_player.x;
            break;    
            
        case WANDLEFT:
            x = obj_player.x-1;
            break;
        
        case WANDDOWNLEFT:
            x = obj_player.x-1.5;
            break;    
            
        case WANDDOWN:
            x = obj_player.x-3;
            break;
           
        case WANDDOWNRIGHT:
            x = obj_player.x-.5;
            break;    
        
    }
    
    // SHOOT
    scr_shoot_key_pressed();
    
 }
 
//back to wand inactive state       
if (raycasteractive = true and !obj_input.aim_key) {
    image_index = 0;
    raycasteractive = false;
    state = scr_raycaster_inactive_state;
    
}
