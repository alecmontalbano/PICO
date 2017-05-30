/// scr_onima_idle_state;
scr_move_axis_onima();
sprite_index = spr_onima_idle;
image_speed = .3;
if (alarm[0] == -1) {
alarm[0] = 90;
}

if (hp <= 0) {
    image_index = 0;
    state = scr_onima_death_state;
}
