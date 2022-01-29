/// @desc Core enemy logic
vsp = vsp + grv;

// Don't walk up edges
if (grounded) && (afraidOfHeights) && (!place_meeting (x + hsp, y + 1, objInvisibleWall))
{
	hsp = -hsp;
	
}

// Horizontal collision
if (place_meeting(x + hsp, y, objInvisibleWall))
{
	while (!place_meeting(x + sign(hsp), y, objInvisibleWall))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
	x = x + hsp;
	
// Vertical collision
if (place_meeting(x, y + vsp, objInvisibleWall))
{
	while (!place_meeting(x, y + sign(vsp), objInvisibleWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

// Animation
if (!place_meeting(x, y + 1, objInvisibleWall))
{
	grounded = false;
}
else
{
	grounded = true;
}