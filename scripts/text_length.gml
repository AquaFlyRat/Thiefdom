///text_length(string,font,scale);
var str = argument[0];
var fnt = argument[1];
var scl = argument[2];
var size = sprite_get_width(fnt)*scl;
var len = 0;
for(z=0;z<string_length(str);z++){
    if string_char_at(str,z)!=" "{
        len+=size*.7;
    }else{
        len+=size*.4;
    }
}
return(len);
