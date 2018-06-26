/// server_find_client_slot(server_object, client_ip)

/*
This script will search the list of clients on the server and will
find a free slot (index) in the array of client objects..

If the clients list is full then -1 is returned.
*/

var server_obj = argument0;
var client_ip = argument1;

var out_index = -1;
for(var i = 0; i < array_length_1d(server_obj.clients_list); i++) {
    if(server_obj.clients_list[i] != noone) {
        if(server_obj.clients_list[i].client_ip == client_ip) {
            out_index = i;
        }
    } else {
        out_index = i;
    }
}

return out_index;
