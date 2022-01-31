/// @desc Go to the next room
var target = rmWin;
if (room == rmMain) target = rmWin;
 
 TransitionStart(target, sqFadeOut, sqFadeIn);
