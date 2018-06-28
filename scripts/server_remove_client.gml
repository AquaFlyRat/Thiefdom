/// server_remove_client(server_obj, index)

/*
Frees the space in the servers client list and destrpys the corresponding
obj_server_client object.
*/

var server_obj = argument0;
var client_index = argument1;

instance_destroy(server_obj.clients_list[client_index])
server_obj.clients_list[client_index] = noone;
