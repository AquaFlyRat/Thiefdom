/// server_find_client_slot(server_object, client_ip)

/*
This script will search the list of clients on the server and will
find a free slot (index) in the array of client objects..
If a client with the specified IP address is already in the array then the index
of that client is returned.

If the clients list is full then -1 is returned.
*/

var server_obj = argument0;
var client_ip = argument1;

for(var i = 0; i < array_length_1d(server_obj.clients_list); i++) {
    // If a client is already in the list then return the index of that client.
    if(server_obj.clients_list[i] != noone) {
        if(server_obj.clients_list[i].client_ip == client_ip) {
            return i;
            break;
        }
    } else {
        // A free slot in the array.
        return i;
    }
}

// There is no free space in the clients list. (Maximum connections)
return -1;
