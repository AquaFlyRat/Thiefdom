///number_get_numeral(num);
var numb = argument[0];
var numer = ""
for(z=0;z<array_length_1d(dec_val);z++){
    while (dec_val[z]<=numb){
        numer+=num_val[z];
        numb-=dec_val[z];
    }
}
return(numer);
