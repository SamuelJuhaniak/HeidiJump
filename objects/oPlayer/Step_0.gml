x_speed = 0; // speed reset
y_speed += grav; // gravity 

// MOVEMENT X, Y
if(currentHealth > 0 && canMove == true){ //Health check!
	
	if(keyboard_check(vk_right) || keyboard_check(ord("D"))){
		x_speed = movement_speed;
		image_xscale = -1; // flip player sprite to RIGHT
	}else if(keyboard_check(vk_left) || keyboard_check(ord("A"))){
		x_speed = -movement_speed;
		image_xscale = 1; // flip player sprite to LEFT
	}


	// Y
	if (place_meeting(x, y + 1, oSolid)) {
		//oPlayer is onGround 
		if (keyboard_check_pressed(vk_up) || keyboard_check(vk_space) || keyboard_check(ord("W"))) {
			y_speed = -jumpValue; // jump HEIDI !!
		} else { 
			y_speed = 0; 
		}
	}

	// I added more controls :D

	// RESTART GAME
	if (place_meeting(x, y, oSpikes) || y > room_height || y < 0 || x > room_width || x < 0) { 
		currentHealth--; 
		// NEJAKY DEAD EFFECT 
		if(currentHealth != 0){
		MusicManager.musicToPlay = dieSound;
		MusicManager.musicPriority = 1;
		MusicManager.musicLoop = false;
		}
		// Red screen
			
		flash_alpha = 0.6; // sila efektu
		alarm[0] = room_speed * 0.2;
		//room.layer_background
			
		switch(room){
			case Level1:
				x = 48;
				y = 128;
				break;
			case Level2:
				x = 48;
				y = 32;
				break;
			case Level3:
				x = 64;
				y= 80;
				break;
		}
			
	
	}

	move_and_collide(x_speed, y_speed, oSolid);
}else{
	room_goto(GameOver);
}
