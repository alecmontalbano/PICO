///scr_death_state

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
    game_restart();
}
