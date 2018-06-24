/// create_server()
var MAX_CLIENTS = 4;

debug_message("Started server on port " + string(NET_SERVER_PORT));

var server_id = network_create_server_raw(network_socket_udp, NET_SERVER_PORT, MAX_CLIENTS);

if(server_id < 0) {
    debug_message("ERROR: Could not create server");
}
