/// scr_prism_choose_next_state()

if (alarm[0] <= 0) {
    image_index = 0;
    state = choose(scr_prism_wander_state, scr_prism_idle_state);
    alarm[0] = room_speed*irandom_range(2, 4);
    if (state == scr_prism_wander_state) {
        xaxis = random_range(-1, 1);
        yaxis = random_range(-1, 1);       
    }
}
