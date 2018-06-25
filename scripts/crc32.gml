#define crc32
///crc32( buffer, [offset], [length] )
//
//  http://www.gmlscripts.com/forums////viewtopic.php?id=2072
// 
//  March 13th '16
//  @jujuadams, u/JujuAdam
//  
/// GMLscripts.com/license


var buffer = argument[0]

var a = 0;
if (argument_count >= 2) {
    a = argument[1] 
}

var b;
if (argument_count == 3) {
    b = a + argument[2]
} else {
    b = buffer_get_size(buffer)
};

var crc = $FFFFFFFF;
for(var i = a; i < b; i++ ) 
{
    crc = global.crc32table[ ( crc ^ buffer_peek( buffer, i, buffer_u8 ) ) & $FF ] ^ ( crc >> 8 );
}

return crc ^ $FFFFFFFF;

#define crc32_init
///crc32( buffer, [offset], [length] )
//
//  http://www.gmlscripts.com/forums////viewtopic.php?id=2072
// 
//  March 13th '16
//  @jujuadams, u/JujuAdam
//  
/// GMLscripts.com/license

var polynomial = $EDB88320;
    
for(var i = 0; i <= $FF; i++ ) {
    var crc = i;
    
    repeat(8) {
        if (crc & 1) {
            crc = (crc >> 1) ^ polynomial;
        } else {
            crc = crc >> 1;
        }
    }
    
    global.crc32table[i] = crc;        
}
