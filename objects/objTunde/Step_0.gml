/// @desc Core player logic

// Get player input
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyJump = keyboard_check_pressed(vk_up);
/*
// Calculate our movement
var _move = keyRight - keyLeft;

hsp = _move * walksp;

vsp = vsp + grv;

if (place_meeting(x, y + 1, objInvisibleWall)) && (keyJump)
{
	vsp = -jumpsp
}

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
	sprite_index = sprTundeJumpFall;
	image_speed = 0;
	if (vsp > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
	sprite_index = spraTunde;
	}
	else
	{
		sprite_index = spraTundeRun;
	}
}

if (hsp != 0) image_xscale = sign(hsp);
*/