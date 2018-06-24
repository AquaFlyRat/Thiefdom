/// udp_send(game_socket, buffer, size)

var game_socket = argument0; // The socket created by the `connect_to_server` call
var buffer = argument1;
var size = argument2;

var ip = "127.0.0.1"; // TODO: Fix - this is temporary

network_send_udp_raw(game_socket, ip, NET_SERVER_PORT, buffer, size);
