///scr_get_input

right_key = keyboard_check(ord('D'));
up_key = keyboard_check(ord('W'));
left_key = keyboard_check(ord('A'));
down_key = keyboard_check(ord('S'));

aim_right_key = keyboard_check(vk_right);
aim_up_key = keyboard_check(vk_up);
aim_left_key = keyboard_check(vk_left);
aim_down_key = keyboard_check(vk_down);

run_key = keyboard_check(vk_rshift);

roll_key = keyboard_check_pressed(vk_space);

attack_key_pressed = keyboard_check_pressed(vk_enter);
attack_key_released = keyboard_check_released(vk_enter);

aim_key = keyboard_check(ord('Z'));

shoot_key = keyboard_check_pressed(ord('X'));

special_key = keyboard_check(ord('F'));

cycle_wand_key = keyboard_check_pressed(ord('C'));

cycle_artifact_key = keyboard_check_pressed(ord('E'));

interact_key = keyboard_check_pressed(ord('R'));

pause_key = keyboard_check_pressed(vk_escape);

menu_nav_up_key = keyboard_check(ord('T'));
menu_nav_down_key = keyboard_check(ord('G'));


// get the axises
lxaxis = (right_key - left_key);
lyaxis = (down_key - up_key);

rxaxis = (aim_right_key - aim_left_key);
ryaxis = (aim_down_key - aim_up_key);


// check for gamepad input

if (gamepad_is_connected(0)) {
    
    gamepad_set_axis_deadzone(0, .35);
    
    lxaxis = gamepad_axis_value(0, gp_axislh); 
    lyaxis = gamepad_axis_value(0, gp_axislv); 
    
    rxaxis = gamepad_axis_value(0, gp_axisrh); 
    ryaxis = gamepad_axis_value(0, gp_axisrv);
    
    run_key = gamepad_button_check(0, gp_shoulderrb);
     
    roll_key = gamepad_button_check_pressed(0, gp_face1);
    
    attack_key_pressed = gamepad_button_check_pressed(0, gp_face3);
    attack_key_released = gamepad_button_check_released(0, gp_face3);
    
    aim_key = gamepad_button_check(0, gp_shoulderlb);
    
    shoot_key = gamepad_button_check_pressed(0, gp_shoulderrb);
    
    special_key = gamepad_button_check(0, gp_face4);
    
    cycle_wand_key = gamepad_button_check_pressed(0, gp_shoulderr);

    cycle_artifact_key = gamepad_button_check_pressed(0, gp_shoulderl);
    
    interact_key = gamepad_button_check_pressed(0, gp_face2);
    
    pause_key = gamepad_button_check_pressed(0, gp_start);
    
    menu_nav_up_key = gamepad_button_check_pressed(0, gp_padu);
    menu_nav_down_key = gamepad_button_check_pressed(0, gp_padd);
}
