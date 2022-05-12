/// @desc Move to next room

with (objDodomush)
{
	if (hascontrol)
	{
		hascontrol = false;
		SlideTransition(TRANS_MODE.GOTO, other.target)
	}
}