/// client_start_requesting_connection(local_client_instance)

var local_client = argument0;

local_client.state = NET_CLIENT_REQUESTING_CONNECTION;
local_client.alarm[0] = room_speed * (1 / (NET_CLIENT_UPDATE_SPD*1));
