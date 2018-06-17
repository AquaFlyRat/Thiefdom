///text_draw(x,y,string,font,col,scale,alpha)
var xx = argument[0];
var yy = argument[1];
var str= string_lower(argument[2]);
var font= argument[3];
var col= argument[4];
var scale = argument[5];
var alpha = argument[6];
var wrap = 0;
var ofx = 0;
var ofy = 0;
for (q = 1;q<=string_length(str);q++){
    var c = ord(string_char_at(str,q));
    if c !=-1{
        if string_char_at(str,q) !="$"{
            draw_sprite_ext(font,global.char[c]-1,xx+ofx,yy+ofy,scale,scale,0,col,alpha)
        }else{
            draw_sprite_ext(font,global.char[c]-1,xx+ofx,yy+ofy,scale,scale,0,c_white,alpha)
        }
        if string_char_at(str,q) != " " {//&& string_char_at(str,i) != "," && string_char_at(str,i) != "." && string_char_at(str,i) != "'"
            ofx +=sprite_get_width(font)*scale*.7;
        }else{
            ofx +=sprite_get_width(font)*scale*.4;
            if (wrap && xx+ofx>(view_wview)){
                var wn = 1;
                for(z = 0;z<=10;z++){
                    if string_char_at(str,q) == " "{// || string_char_at(str,i) != "," || string_char_at(str,i) != "." || string_char_at(str,i) != "'"
                        wn = 0;
                    }
                }
                if (wrap && xx+ofx>(view_wview*2)-10*sprite_get_width(font)*scale*.7){wn = 1}
                if (wn){
                    ofx = 0;
                    ofy += (sprite_get_height(font))*scale;
                }
            }
        }
    }
    if string_char_at(str,q) == "#" {
        ofx = 0;
        ofy += (sprite_get_height(font))*scale;
    }
}
