
if(h >= 1){
    
    for(i=0; i<ds_list_size(neighbors); i++){
        node = ds_list_find_value(neighbors,i);
        if(node.h < h-1){
            node.h = h-1;
            if(hh >= 1){
                node.hh = hh-1;
            }
            else{
                node.hh = 0;
            }
            with(node){
                aoe_gen_loop();
            }
        }
    }
    
    if(h >= 1.5){
        for(i=0; i<ds_list_size(neighbors_ext); i++){
            node = ds_list_find_value(neighbors_ext,i);
            if(node.h < h-1.5){
                node.h = h-1.5;
                if(hh >= 1.5){
                    node.hh = hh-1.5;
                }
                else{
                    node.hh = 0;
                }
                with(node){
                    aoe_gen_loop();
                }
            }
        }
    }
    
}

