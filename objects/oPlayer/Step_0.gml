x_speed = 0; // speed reset
y_speed += grav; // gravity 

// MOVEMENT Y
if (place_meeting(x, y + 1, oSolid)) {
	//oPlayer is onGround 
	if (keyboard_check_pressed(vk_up) || keyboard_check(vk_space) || keyboard_check(ord("W"))) {
		y_speed -= jumpValue; // jump HEIDI !!
} else { 
	y_speed = 0; 
}

}

// MOVEMENT X
if(keyboard_check(vk_right) || keyboard_check(ord("D"))){
	x_speed += movement_speed;
	   image_xscale = -1; // flip player sprite to RIGHT
}else if(keyboard_check(vk_left) || keyboard_check(ord("A"))){
	x_speed -= movement_speed;
	   image_xscale = 1; // flip player sprite to LEFT
}

// I added more controls :D

// RESTART GAME
if (place_meeting(x, y, oSpikes) || y > room_height || y < 0 || x > room_width || x < 0) { 
    room_restart() 
}

x += x_speed; 
y += y_speed;