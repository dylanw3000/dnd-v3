
for(i=0; i<ds_list_size(neighbors); i++){
    node = ds_list_find_value(neighbors, i);
    /*if(node.g != null && node.g < g+node.cost){
        break;
    }*/
    if(node.passable && (node.g > g+node.cost || node.g == null)){
        node.g = g+node.cost;
        node.parent = id;
        with(node){
            navigate_loop();
        }
    }
}


