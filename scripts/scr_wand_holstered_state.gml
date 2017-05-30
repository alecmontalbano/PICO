///scr_wand_inactive_state

if (obj_input.cycle_wand_key and obj_player.casteracquired == true and obj_player.coilacquired == false and obj_player.quillacquired == false and obj_player.palmacquired == false) {
      if (obj_player_stats.wand_num >= 0) {
        obj_player_stats.wand_num = 0;
    } else {
        obj_player_stats.wand_num = obj_player_stats.wand_num+1;
    }
}

if (obj_input.cycle_wand_key and obj_player.casteracquired == true and obj_player.coilacquired == true and obj_player.quillacquired == false and obj_player.palmacquired == false) {
      if (obj_player_stats.wand_num >= 1) {
        obj_player_stats.wand_num = 0;
    } else {
        obj_player_stats.wand_num = obj_player_stats.wand_num+1;
    }
}

if (obj_input.cycle_wand_key and obj_player.casteracquired == true and obj_player.coilacquired == true and obj_player.quillacquired == true and obj_player.palmacquired == false) {
      if (obj_player_stats.wand_num >= 2) {
        obj_player_stats.wand_num = 0;
    } else {
        obj_player_stats.wand_num = obj_player_stats.wand_num+1;
    }
}

if (obj_input.cycle_wand_key and obj_player.casteracquired == true and obj_player.coilacquired == true and obj_player.quillacquired == true and obj_player.palmacquired == true) {
      if (obj_player_stats.wand_num >= 3) {
        obj_player_stats.wand_num = 0;
    } else {
        obj_player_stats.wand_num = obj_player_stats.wand_num+1;
    }
}

if (obj_input.aim_key and wandactive = false and obj_player.len == 0 and obj_player.wandacquired == true and obj_player.casteracquired == true) {
    
    image_index = 0;
    wandactive = true;
    
    state = wandstate[obj_player_stats.wand_num];
    sprite_index = wandsprite[obj_player_stats.wand_num];
    
} 

//no extension acquired
if (obj_input.aim_key and wandactive = false and obj_player.len == 0 and obj_player.wandacquired == true and obj_player.casteracquired == false) {
    
    image_index = 0;
    wandactive = true;
    
    state = scr_wand_base_state;
    sprite_index = spr_player_wand_base;
    
} 


    
