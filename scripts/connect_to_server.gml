/// connect_to_server(addr)
var send_buffer = buffer_create(1024,buffer_fixed,1);
var addr = argument0;
var dat = "Hello World!";

buffer_write(send_buffer, buffer_string, dat);

var client_socket = network_create_socket_ext(network_socket_udp, NET_CLIENT_PORT);

udp_send(client_socket, send_buffer, string_length(dat));

return client_socket;
