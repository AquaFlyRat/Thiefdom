/// prepare_packet_buffer(buffer, [msg_type])
var buffer = argument0;
var msg_type = undefined;

if(argument_count == 2) { 
    msg_type = argument1;
}

buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_u32, NET_PACKET_UID);

if(msg_type != undefined) {
    buffer_write(buffer, buffer_u16, msg_type);
}

return buffer;
