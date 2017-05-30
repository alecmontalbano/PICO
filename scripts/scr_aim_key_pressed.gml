///scr_aim_key_pressed

if (aiming = false and obj_input.aim_key and len == 0 and wandacquired == true) {
    audio_play_sound(snd_pico_aim, 3, false);
    image_index = 0;
    
    with(obj_player_wand) {
        visible = true;
    }
    
    aiming = true;
    state = scr_aim_state;
}


