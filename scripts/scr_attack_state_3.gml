///scr_attack_state_3

if (len == 0) {
    dir = face*90;
}

len = spd*.257;

// get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd =  lengthdir_y(len, dir);

// move
phy_position_x += hspd;
phy_position_y += vspd;

image_speed = .65; 

if (image_index <= 5)
{
    switch (face) {
    
    case DOWN:
        sprite_index = spr_player_attack_3_down;
        break;

    case UP:
        sprite_index = spr_player_attack_3_up;
        break;
        
    case LEFT:
        sprite_index = spr_player_attack_3_left;
        break;
        
    case RIGHT:
        sprite_index = spr_player_attack_3_right;
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

if (image_index >= 6 and combostate[2])

{
    attacked = false;
    canattack = true;
    combo = 0;
     obj_bebu.sight = 3;
     state = scr_walk_state;
     
}

