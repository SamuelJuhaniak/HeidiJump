oPlayer.canMove = false;
audio_stop_all()

//Lvl up sound
MusicManager.musicToPlay = levelupSound;
MusicManager.musicPriority = 1
MusicManager.musicLoop = false;

if(currentLevel != 3){
	roomName = "Level" + string(currentLevel + 1);
	room_goto(asset_get_index(roomName));
}else{
	room_goto(Victory);
}