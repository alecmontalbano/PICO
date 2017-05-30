///scr_bebu_idle_state
var dis = point_distance(x, y, obj_player.x-15, obj_player.y-15);

image_speed = 0.075;
sprite_index = spr_bebu_hover;

if (dis > sight) {
    
    image_speed = 0;
    state = scr_bebu_follow_state;
} 
