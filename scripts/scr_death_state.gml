///scr_death_state
audio_play_sound(snd_pico_die, 3, false);
switch(face) {
    
    case RIGHT:
    sprite_index = spr_player_death_right;
    break;
    
    case UP:
    sprite_index = spr_player_death_up;
    break;
    
    case LEFT:
    sprite_index = spr_player_death_left;
    break;
    
    case DOWN:
    sprite_index = spr_player_death_down;
    break;

} 

if (image_index >= 10) {
    room_restart();
    alive = true;
    obj_player_stats.hp = 4;
    obj_player_stats.maxhp = obj_player_stats.hp;
    obj_player_stats.hpprc = obj_player_stats.hp/obj_player_stats.maxhp*100;
    obj_player_stats.maxhpprc = obj_player_stats.hpprc;
    state = scr_walk_state;
    x = obj_player_stats.player_xstart;
    y = obj_player_stats.player_ystart;
}
