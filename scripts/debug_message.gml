var msg = argument0;

var scale = 0.75;
var fnt_height = spr_font_a.sprite_height * scale;
var dbg_list = obj_debug.msg_list;

ds_list_add(dbg_list, msg);

if(ds_list_size(dbg_list) > (100 / fnt_height)) {
    ds_list_delete(dbg_list, 0);
}

