/// @desc Core player logic

// Get player input
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyJump = keyboard_check_pressed(vk_up);

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
	while (!place_meeting(x, y + sign(vsp), objInvisibleWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

// Calculate our movement
var _move = keyRight - keyLeft;

hsp = _move * walksp;


if (place_meeting(x, y + 1, objInvisibleWall)) && (keyJump)
{
	vsp = -jumpsp;
}

if (!place_meeting(x, y + 1, objInvisibleWall))
{
	walksp = originalWalkSp * 0.90;
	
}
else
{
	walksp = originalWalkSp;

}

// Animation
if (!place_meeting(x, y + 1, objInvisibleWall))
{
	sprite_index = sprDodomushJumpFall;
	image_speed = 0;
	if (vsp > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
	sprite_index = sprDodomush;
	}
	else
	{
		sprite_index = sprDodomushRun;
	}
}

if (hsp != 0) image_xscale = sign(hsp);
	
minutes = pTime div 60;
seconds = pTime mod 60;

// ms negation
ms -= 1;

// Deduct a second every 60 ms
if (ms == 0)
{
	ms = 60;
	pTime -= 1;
	
}

// stop timer when at 0
if (minutes <= 0 and seconds <= 0)
{
	minutes = 0;
	seconds = 0;
	ms = 0;
	instance_create_layer(x, y, layer, objDodomushDead);
	instance_destroy();
		
}

//Time = 90;
//if (Time = 0) sprite_index = sprDodoMushDead;

/*
if (place_meeting(x + hsp, y , objEnemy))
{
	image_speed = 0;
	x = x - 50;
	
}


if (place_meeting(x, y + vsp, objEnemy))
{
	image_speed = 0;
	y = y - 30;
	
}
*/