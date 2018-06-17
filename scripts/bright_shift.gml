///bright_shift(hugh, index, max);
////////////////////////////////////
//  [example]
//  var n = 30;
//  i++;
//  var c = bright_shift(137,n-i, 60);
////////////////////////////////////
var h = argument[0];
var m = argument[2];
var mn = 40;
var rmid = (m+mn)/2;
var rshift = rmid/2;
var s = rmid+rshift*cos(argument[1]*.1);
var v = 140+35*cos(argument[1]*.1);
return(make_colour_hsv(h,s,v));
