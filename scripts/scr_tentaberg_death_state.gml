///scr_tentaberg_death_state

sprite_index = spr_tentaberg_death;
image_speed = .2;

if (image_index >= 29) {
    with (self) {
        instance_destroy();
    }
}
