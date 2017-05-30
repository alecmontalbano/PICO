///scr_shoot_palm()

if (image_index >= 6) {

    var xpos = x + lengthdir_x(22, image_angle);
    var ypos = y + lengthdir_y(22, image_angle);

    var p = instance_create(xpos, ypos, obj_player_projectile_palm)
        var projdir = image_angle;
        var xforce = lengthdir_x(obj_player_projectile_palm.spd, projdir);
        var yforce = lengthdir_y(obj_player_projectile_palm.spd, projdir); 
        p.creator = id;
        
        switch (wandface) {
    
        case WANDRIGHT:
            obj_player_projectile_palm.phy_rotation = 0;
            break;                 
        
        case WANDUPRIGHT:
            obj_player_projectile_palm.phy_rotation = -45;
            break;       
        
        case WANDUP:
            obj_player_projectile_palm.phy_rotation = -90;
            break;
        
        case WANDUPLEFT:
            obj_player_projectile_palm.phy_rotation = -135;
            break;    
            
        case WANDLEFT:
            obj_player_projectile_palm.phy_rotation = -180;
            break;
        
        case WANDDOWNLEFT:
            obj_player_projectile_palm.phy_rotation = -215;
            break;    
            
        case WANDDOWN:
            obj_player_projectile_palm.phy_rotation = -270;
            break;
           
        case WANDDOWNRIGHT:
            obj_player_projectile_palm.phy_rotation = -305;
            break;    
        
    }
    
        
    with(p) {
        physics_apply_impulse(x, y, xforce, yforce);
    }
    
}


