///connect_to_server(addr)

var addr = argument0;
var client_socket = network_create_socket(network_socket_tcp);
var server = network_connect_raw(client_socket, addr, NET_PORT);

