/// scr_evocator_idle_state;

sprite_index = spr_evocator_idle;
image_speed = .3;


if (hp <= 0) {
    image_index = 0;
    state = scr_evocator_death_state;
}
