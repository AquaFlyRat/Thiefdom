var PORT = 6510;
var MAX_CLIENTS = 4;

var server_id = network_create_server_raw(network_socket_udp, PORT, MAX_CLIENTS);

if(server_id < 0) {
    debug_message("ERROR: Could not create server");
}
