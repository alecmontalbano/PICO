/// scr_zel_idle_state;

sprite_index = spr_zel_idle;
image_speed = .3;
if (alarm[0] == -1) {
alarm[0] = 75;
}

if (hp <= 0) {
    image_index = 0;
    state = scr_zel_death_state;
}
