///scr_special_key_pressed()
if (obj_input.special_key and specialactive == false and len == 0 and noartifactacquired == false) {
    image_index = 0;
    specialactive = true;
    state = artifactstate[obj_player_stats.artifact_num];
}
