///scr_onima_death_state

sprite_index = spr_onima_death;
image_speed = .37;

if (image_index >= 37) {
   image_index = 37;
   obj_player.onimacreated = true;
}
