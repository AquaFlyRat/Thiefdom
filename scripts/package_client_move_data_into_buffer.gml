/// package_client_move_data_into_buffer(buffer)

/*
Package client player movement data into the clients send buffer.

Returns an array of 2 elements - element 0 is the buffer and element 1 is
size of the packaged data in bytes
*/

var buff = argument0;
var hs = (keyboard_check_direct(vk_right)-keyboard_check_direct(vk_left));
var vs = (keyboard_check_direct(vk_down)-keyboard_check_direct(vk_up));

buffer_write(buff, buffer_u16, NET_PCK_CLIENT_INPUT_DATA);
buffer_write(buff, buffer_s16, hs);
buffer_write(buff, buffer_s16, vs);

output[0] = buff;
output[1] = 6;

return output;
