/// debug_message(msg)
var msg = argument0;

var fnt_height = spr_font_a.sprite_height * DEBUG_LOG_TXT_SCALE;
var dbg_list = obj_debug.msg_list;
var max_chars = (DEBUG_LOG_WIDTH / (spr_font_a.sprite_width * DEBUG_LOG_TXT_SCALE)) + 10;
var multiline = string_length(msg) > max_chars;

var line_start_prefix = "-- ";
var wrapped_line_prefix = " ";

var c = 0; // This stores the number of lines that we are adding (only used if the message needs to be wrapped)
if(not multiline) {
    ds_list_add(dbg_list, line_start_prefix + msg);
} else {
    while(string_length(msg) > max_chars) {
        var line = string_copy(msg, 1, max_chars);
        
        if(c == 0) {    // first line
            line = line_start_prefix + line;
        } else {
            line = wrapped_line_prefix + line;
        }
        
        ds_list_add(dbg_list, line);
        msg = string_copy(msg, max_chars, string_length(msg));
        c++;
    }
    
    // add the final line (e.g. whats left over after all the full lines)
    ds_list_add(dbg_list, wrapped_line_prefix  + msg);    
}

if(ds_list_size(dbg_list) > (DEBUG_LOG_HEIGHT / fnt_height)) {
    if(!multiline) {
        obj_debug.scroll_index++;
    } else {
        obj_debug.scroll_index += c;
    }
}

