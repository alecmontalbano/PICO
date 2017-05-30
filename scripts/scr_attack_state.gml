///scr_attack_state
scr_attack_key_released();
 
if(image_index >=3 and combostate[0] and attacked == true and obj_input.attack_key_pressed and canattack == true) {
    audio_play_sound(snd_pico_attack_1_2, 3, false);
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

len = spd*.1;

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
        sprite_index = spr_player_attack_down;
        break;

    case UP:
        sprite_index = spr_player_attack_up;
        break;
        
    case LEFT:
        sprite_index = spr_player_attack_left;
        break;
        
    case RIGHT:
        sprite_index = spr_player_attack_right;
        break;        
    }
    

if (image_index >=4 and attacked == false) {
    var xx = 0;
    var yy = 0;   
     

    switch (face) {
    
        case DOWN:
            xx = x;
            yy = y+12;
            break;
    
        case UP:
            xx = x;
            yy = y-10;
            break;
            
        case LEFT:
            xx = x-10;
            yy = y+2;
            break;
            
        case RIGHT:
            xx = x+10;
            yy = y+2;           
            break;        
    }
    
    var damage = instance_create(xx, yy, obj_damage); 
    obj_damage.creator = id;
    attacked = true;
    }
}

if (image_index >= 7 and combostate[0])

{
    attacked = false;
    canattack = true;
    combo = 0;
    obj_bebu.sight = 3;
    state = scr_walk_state;
    
}


