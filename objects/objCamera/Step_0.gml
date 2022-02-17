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

x = clamp(x, viewWHalf, room_width - viewWHalf);
y = clamp (y, viewHHalf, room_height - viewHHalf);


// Update camera view
camera_set_view_pos(cam, x - viewWHalf, y - viewHHalf);