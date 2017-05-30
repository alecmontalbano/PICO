///scr_evocator_death_state

sprite_index = spr_evocator_death;
image_speed = .37;

if (image_index >= 44) {
    obj_player.evocatorcreated = true;
   state = scr_evocator_smoke_state;
  
}
