///scr_zel_death_state

sprite_index = spr_zel_death;
image_speed = .37;

if (image_index >= 54) {
    obj_player.zelcreated = true;
   image_index = 54;
}
