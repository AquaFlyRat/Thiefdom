/// create_client_socket()
var client_socket = network_create_socket_ext(network_socket_udp, NET_CLIENT_PORT);
debug_message("Client socket: " + string(client_socket));
return client_socket;
