///load_val(section,key,is real)
//vars
var sect = argument[0];
var key = argument[1];
var isreal = argument[2];
var val = -1;
//read
ini_open("data.ini");
if isreal == true{
    val = ini_read_real(sect,key,-1);
}else{
    val = ini_read_string(sect,key,"");
}
ini_close();
//return
return(val);
