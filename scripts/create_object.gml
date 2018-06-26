/// create_object(object_type)

var object_type = argument0;

var obj = instance_create(0, 0, object_type);
obj.image_alpha = 0;

return obj;
