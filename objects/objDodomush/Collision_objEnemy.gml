/// @description Insert description here
with (objTimer)
{
	Time -=30;
	//if (Time = 0) sprite_index = sprDodoMushDead;
}

// Bounce
image_speed = 0;
y = y - 10;
x = x - 10;

flash = 3;


// Player Dies
	pTime -=30;

// Sound
audio_play_sound(sfxHit, 11, false);

with (other)
{
	instance_destroy();
}
