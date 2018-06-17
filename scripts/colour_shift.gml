///colour_shift(index, brightness);
////////////////////////////////////
//  [example]
//  i++;
//  colour_shift(i,50);
////////////////////////////////////
var at = argument[0];
var br = argument[1];
var df = 255-br;
var r = df+br*cos(at*.1);
var g = df+br*cos((at+85)*.1);
var b = df+br*cos((at+170)*.1);
return(make_colour_rgb(r,g,b));
