
for(i=0; i<ds_list_size(neighbors); i++){
    node = ds_list_find_value(neighbors, i);
    if(node.passable && node.g < g-node.cost && (node.occupant == null || node.occupant.enemy == active.enemy)){
        node.g = g-node.cost;
        node.parent = id;
        with(node){
            move_range_loop();
        }
    }
}

