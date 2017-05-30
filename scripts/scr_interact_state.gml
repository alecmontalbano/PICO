///scr_interact_state
 
 
 if (len == 0) {
    dir = face*90;
}

if (image_index >= 0)
{
    var xx = 0;
    var yy = 0;    

    switch (face) {
    
        case DOWN:
            xx = x;
            yy = y;
            break;
    
        case UP:
            xx = x;
            yy = y;
            break;
            
        case LEFT:
            xx = x;
            yy = y;
            break;
            
        case RIGHT:
            xx = x;
            yy = y;           
            break; 
    }
    
    var interact = instance_create(xx, yy, obj_interact); 
    interact.creator = id;
    
}    
    if (image_index >=.01 and caninteract = false)
    {
        state = scr_walk_state;
        caninteract = true;
    }
