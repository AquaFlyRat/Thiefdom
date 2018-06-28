/// client_net_clean_disconnect(client_obj)

/*
Handles the networking side of disconnecting a client (from the clients end).
This means it will send a disconnect packet signalling that it has disconnected
and then destroy the socket.

This is _not_ to be used in event of a client timeout (e.g. if no packets are
received from the server in 5 seconds). That is handled seperatly and will only require
the socket be closed. This is becuase there is no point in sending a `disconnect` packet
to a server that we are not connected to.
*/

var client_obj = argument0;

client_obj.send_buffer = prepare_packet_buffer(client_obj.send_buffer, 
                                                NET_PCK_CONNECTION_DISCONNECT);
                                                
// Lets do this a couple of times to decrease the chance that all packets are lost
repeat(5) {
    udp_send_to_server(client_obj.socket_id, client_obj.send_buffer, 6);
}                                     

network_destroy(client_obj.socket_id);
