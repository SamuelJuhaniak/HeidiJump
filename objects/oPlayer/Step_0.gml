x_speed = 0; // speed reset
y_speed += grav; // gravity 

// MOVEMENT X, Y
if(currentHealth != 0){ //Health check!
	
	// X
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
	    if(currentHealth > 0) {
			currentHealth--;
			// NEJAKY DEAD EFFECT 
			MusicManager.musicToPlay = dieSound;
			MusicManager.musicPriority = 1;
			// Red screen
			//room.layer_background
		
			// DOCASNE, POTOM RESPAWN SCIRPT
			//x = 48;
			//y = 128;
			
			switch(room){
				case Level1:
					x = 48;
					y = 128;
					break;
				case Level2:
					x = 48;
					y = 32;
					break;
			}
			
		}else{
			//GAME OVER SCREEN
		}
	}

	move_and_collide(x_speed, y_speed, oSolid);
}
