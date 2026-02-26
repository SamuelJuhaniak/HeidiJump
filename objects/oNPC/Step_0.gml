if (instance_exists(oPlayer))
{
    var dist = point_distance(x, y, oPlayer.x, oPlayer.y);
    
    player_near = dist < interaction_distance;

if(!dialog_active){
	    if (player_near && keyboard_check_pressed(ord("E")))
	    {
	        dialog_active = !dialog_active;

	        if (dialog_active)
	        {
	            dialog_index = 0;
	        }
	    }
	}
}

if (dialog_active && keyboard_check_pressed(ord("E")))
{
    dialog_index++;

    if (dialog_index >= array_length(dialog_text))
    {
        dialog_active = false;
    }
}