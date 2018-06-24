///check_save_exists()
ini_open("data.ini");
if ini_section_exists("save_true"){ //save_val("save_true","y/n",true,1);
    return(true);
}
return(false);
