/// @description Insert description here

if (done == 0)
{
	// Gravity
	vsp = vsp + grv;

	// Horizontal collision
	if (place_meeting(x + hsp, y, objInvisibleWall))
	{
		while (!place_meeting(x + sign(hsp), y, objInvisibleWall))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}
		x = x + hsp;
	
	// Vertical collision
	if (place_meeting(x, y + vsp, objInvisibleWall))
	{
		if (vsp > 0) done = 1;
		
		while (!place_meeting(x, y + sign(vsp), objInvisibleWall))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	y = y + vsp;
}