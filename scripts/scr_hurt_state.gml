///scr_hurt_state
audio_play_sound(snd_bebu, 1, false);
canattack = true;
specialactive = false;

if (instance_exists(obj_barrier)) {
    with(obj_barrier) {
        instance_destroy();
    }
}

if (obj_player_stats.hp <=0)
{
    image_index = 0;
    image_speed = .3;
    alive = false;
    state = scr_death_state;
}
 
switch (face) {
    
    case RIGHT:
    sprite_index = spr_player_hurt_right;
    break;
    
    case UP:
    sprite_index = spr_player_hurt_up;
    break;
    
    case LEFT: 
    sprite_index = spr_player_hurt_left;
    break;
    
    case DOWN:
    sprite_index = spr_player_hurt_down;
    break;

}

// back to walk state
if (image_index >= 1) {
    image_index = 0;
    state = scr_walk_state;
}
