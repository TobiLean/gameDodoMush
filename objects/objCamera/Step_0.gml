/// @description Update Camera

// Update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

// Update object postion

x += (xTo - x) / 25;
y += (yTo - y) / 25;

// Keep camera in room
x = clamp(x, viewWHalf + buff, room_width - viewWHalf - buff);
y = clamp (y, viewHHalf + buff, room_height - viewHHalf - buff);

// Screen shake
x += random_range(-shakeRemain, shakeRemain);
y += random_range(-shakeRemain, shakeRemain);
shakeRemain = max(0, shakeRemain - ((1/shakeLength) * shakeMag));

// Update camera view
camera_set_view_pos(cam, x - viewWHalf, y - viewHHalf);