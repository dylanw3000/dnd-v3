
for(i=0; i<ds_list_size(neighbors); i++){
    node = ds_list_find_value(neighbors, i);
    if(node.h < h-1){
        node.h = h-1;
        if(hh > 0){
            node.hh = hh-1;
        }
        else{
            node.hh = 0;
        }
        with(node){
            attack_range_loop();
        }
    }
}

