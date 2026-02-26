audio_stop_all()

switch (room){
	case Menu:
		musicToPlay = menuMusic;
		musicPriority = 5;
		musicLoop = true;
		break;
	case Level1:
		musicToPlay = levelMusic;
		musicPriority = 5;
		musicLoop = true;
		break;
	case Level2:
		musicToPlay = level2Music;
		musicPriority = 5;
		musicLoop = true;
		break;
	case Level3:
		musicToPlay = level3Music;
		musicPriority = 5;
		musicLoop = true;
		break;
}