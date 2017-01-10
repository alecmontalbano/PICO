///scr_get_input

right_key = keyboard_check(vk_right);
up_key = keyboard_check(vk_up);
left_key = keyboard_check(vk_left);
down_key = keyboard_check(vk_down);

// get the axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);

// check for gamepad input

if (gamepad_is_connected(0)) {
    gamepad_set_axis_deadzone(0, .35);
    xaxis = gamepad_axis_value(0, gp_axislh); 
    yaxis = gamepad_axis_value(0, gp_axislv); 
}
