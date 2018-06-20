/// debug_message(msg)
var msg = argument0;

var fnt_height = spr_font_a.sprite_height * DEBUG_LOG_TXT_SCALE;
var dbg_list = obj_debug.msg_list;

ds_list_add(dbg_list, msg);

if(ds_list_size(dbg_list) > (DEBUG_LOG_HEIGHT / fnt_height)) {
    obj_debug.scroll_index++;
}

