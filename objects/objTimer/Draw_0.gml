/// @desc Draw timer

draw_set_font(arialLarge);
if (Time <= 30)
{
	draw_set_color(c_red);
}
else
{
draw_set_color(c_black);
}
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Draw the Timer
draw_text(69, 33, string(minutes) + ":" + string_repeat( "0", 2 - string_length(string(seconds)))+ string(seconds));

