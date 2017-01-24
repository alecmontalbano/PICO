///scr_attack_state
if (len == 0) {
    dir = face*90;
}

len = spd*.15;

// get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd =  lengthdir_y(len, dir);

// move
phy_position_x += hspd;
phy_position_y += vspd;

image_speed = .65; 

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

if (image_index >= 4 and attacked == false) {
    var xx = 0;
    var yy = 0;    

    switch (sprite_index) {
    
        case spr_player_attack_down:
            xx = x;
            yy = y+12;
            break;
    
        case spr_player_attack_up:
            xx = x;
            yy = y-10;
            break;
            
        case spr_player_attack_left:
            xx = x-10;
            yy = y+2;
            break;
            
        case spr_player_attack_right:
            xx = x+10;
            yy = y+2;           
            break;        
    }
    
    var damage = instance_create(xx, yy, obj_damage); 
    damage.creator = id;
    attacked = true;
}
