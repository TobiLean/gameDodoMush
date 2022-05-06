/// @desc Draw Menu

draw_set_font(fntMenu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for (var i = 0; i  < menuItems; i++)
{
	var offset = 2;
	var txt = menu[i]
	if (menuCursor == i)
	{
		txt =string_insert("> ", txt, 0)
		var colour = c_white;
	}
	else
	{
		var colour = c_gray;
	}
	var xx = menuX;
	var yy = menuY - (menuItemHeight * (i * 1.5));
	draw_set_color(c_black);
	draw_text(xx - offset, yy, txt);
	draw_text(xx, yy - offset, txt);
	draw_text(xx + offset, yy, txt);
	draw_text(xx, yy + offset, txt);
	draw_set_color(colour);
	draw_text(xx, yy, txt);
}
