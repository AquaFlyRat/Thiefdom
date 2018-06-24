/// debug_message(msg)
var msg = argument0;

var fnt_height = spr_font_a.sprite_height * DEBUG_LOG_TXT_SCALE;
var dbg_list = obj_debug.msg_list;
var max_chars = (DEBUG_LOG_WIDTH / (spr_font_a.sprite_width * DEBUG_LOG_TXT_SCALE)) + 6;
var multiline = string_length(msg) > max_chars;

var c = 0;
if(not multiline) {
    ds_list_add(dbg_list, "-- " + msg);
} else {
    while(string_length(msg) > max_chars) {
        var line = string_copy(msg, 1, max_chars);
        if(c == 0) {
            line = "-- " + line;
        } else {
            line = " " + line;
        }
        ds_list_add(dbg_list, line);
        msg = string_copy(msg, max_chars, string_length(msg));
        c++;
    }
    ds_list_add(dbg_list, " "  + msg);    
}

if(ds_list_size(dbg_list) > (DEBUG_LOG_HEIGHT / fnt_height)) {
    if(not multiline) {
        obj_debug.scroll_index++;
    } else {
        obj_debug.scroll_index += c;
    }
}

