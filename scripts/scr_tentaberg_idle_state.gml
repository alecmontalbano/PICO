/// scr_tentaberg_idle_state;
sprite_index = spr_tentaberg_idle;
image_speed = .3;
if (alarm[0] == -1) {
alarm[0] = 75;
}

if (hp <= 0) {
    image_index = 0;
    state = scr_tentaberg_death_state;
}
