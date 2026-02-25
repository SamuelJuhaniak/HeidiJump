
if(musicToPlay != noone){
	if(!audio_is_playing(musicToPlay)) audio_play_sound(musicToPlay, musicPriority, musicLoop);

	// Restore to default
	musicToPlay = noone;
	musicPriority = noone; 
	musicLoop = false;	

}

