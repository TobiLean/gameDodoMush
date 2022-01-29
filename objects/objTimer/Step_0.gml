/// @desc Timer Control

minutes = Time div 60;
seconds = Time mod 60;

// ms negation
ms -= 1;

// Deduct a second every 60 ms
if (ms == 0)
{
	ms = 60;
	Time -= 1;
	
}

// stop timer when at 0
if (minutes <= 0 and seconds <= 0)
{
	minutes = 0;
	seconds = 0;
	ms = 0;
	
	//game_end()
}