///scr_attack_state_2
scr_attack_key_released();



 
if(image_index >=3 and combostate[1] and attacked == true and obj_input.attack_key_pressed and canattack == true) {
    image_index = 0;
    state = combostate[combo];
    canattack = false;  
    attacked = false;
    //increment combo and don't allow to exceed maxcombo;
    combo = (combo+1)%combomax;
  
}
 


if (len == 0) {
    dir = face*90;
}

len = -spd*.03;

// get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd =  lengthdir_y(len, dir);

// move
phy_position_x += hspd;
phy_position_y += vspd;

image_speed = .65; 

if (image_index <= 6)
{
    switch (face) {
    
    case DOWN:
        sprite_index = spr_player_attack_2_down;
        break;

    case UP:
        sprite_index = spr_player_attack_2_up;
        break;
        
    case LEFT:
        sprite_index = spr_player_attack_2_left;
        break;
        
    case RIGHT:
        sprite_index = spr_player_attack_2_right;
        break;        
    }

if (image_index >= 3 and image_index <=6 and attacked == false) {
    
    var xx = 0;
    var yy = 0;    

    switch (face) {
    
        case DOWN:
            xx = x;
            yy = y+15;
            break;
    
        case UP:
            xx = x;
            yy = y-15;
            break;
            
        case LEFT:
            xx = x-13;
            yy = y+2;
            break;
            
        case RIGHT:
            xx = x+13;
            yy = y+2;           
            break;        
    }
    
    var damage = instance_create(xx, yy, obj_damage); 
    damage.creator = id;
    attacked = true;
    }
}

if (image_index >= 7 and combostate[1])

{
    attacked = false;
    state = scr_walk_state;
    canattack = true;
    combo = 0;
     obj_bebu.sight = 3;
     
}


