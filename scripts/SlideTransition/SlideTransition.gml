/// @desc SlideTransition(mode, targetroom)
/// @arg Mode sets transition mode between next, restart and goto.
/// @arg Target sets target room when using the goto mode.

function SlideTransition(argument0, argument1)
{
	with (objTransition)
		{
			mode = argument0;
			if (argument_count > 1)
				target = argument1
		}
}
