///save_val(section,key,is real,value);
//vars
var sect = argument[0];
var key = argument[1];
var isreal = argument[2];
var val = argument[3];
//write
ini_open("data.ini");
if isreal{
    ini_write_real(sect,key,val);
}else{
    ini_write_string(sect,key,string(val));
}
ini_close();
