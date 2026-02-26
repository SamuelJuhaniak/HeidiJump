// Freeze player movement
other.hsp = 0;
other.vsp = 0;
other.can_move = false;

// Optional: freeze entire game
global.level_complete = true;

// Set alarm to change room in 3 seconds
alarm[0] = room_speed * 3;