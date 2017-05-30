/// scr_slime_choose_next_state()

if (alarm[0] <= 0) {
    state = choose(scr_slime_wander_state, scr_slime_idle_state);
    alarm[0] = room_speed*irandom_range(2, 4);
    if (state == scr_slime_wander_state) {
        xaxis = random_range(-1, 1);
        yaxis = random_range(-1, 1);       
    }
}
