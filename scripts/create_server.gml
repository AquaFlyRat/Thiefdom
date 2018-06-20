/// create_server()
var MAX_CLIENTS = 4;

debug_message("Started server on port " + string(NET_PORT));

var server_id = network_create_server_raw(network_socket_tcp, NET_PORT, MAX_CLIENTS);

if(server_id < 0) {
    debug_message("ERROR: Could not create server");
}
