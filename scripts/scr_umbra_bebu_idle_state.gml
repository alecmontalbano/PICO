/// scr_umbra_bebu_idle_state
scr_move_axis_onima();
sprite_index = spr_umbra_bebu_idle;
image_speed = .3;
if (alarm[0] == -1) {
alarm[0] = 90;
}

if (hp <= 0) {
    image_index = 0;
    state = scr_umbra_bebu_death_state;
}
