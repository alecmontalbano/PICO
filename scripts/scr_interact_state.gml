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

    
    var interact = instance_create(xx, yy, obj_interact); 
    interact.creator = id;
}    
    if (image_index >=.01 and caninteract = false)
    {
        state = scr_walk_state;
        caninteract = true;
    }
