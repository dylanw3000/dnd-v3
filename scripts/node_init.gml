
//create node!
for(xx = 0; xx < mapWidth; xx += 1){
    for(yy = 0; yy < mapHeight; yy += 1){
        tmp = instance_create(xx * GRID_SIZE, yy * GRID_SIZE, node_o);
        tmp.gridX = xx;
        tmp.gridY = yy;
        map[xx, yy] = tmp;
    }
}

//populate neighbor lists!
for(xx = 0; xx < mapWidth; xx += 1){
    for(yy = 0; yy < mapHeight; yy += 1){
    
        node = map[xx, yy];
        
        //add left neighbor
        if(xx > 0){
        ds_list_add(node.neighbors, map[xx - 1, yy]);
        }
        
        //add right neighbor
        if(xx < mapWidth - 1){
        ds_list_add(node.neighbors, map[xx + 1, yy]);
        }
        
        //add top neighbor
        if(yy > 0){
        ds_list_add(node.neighbors, map[xx, yy - 1]);
        }
        
        //add bottom neighbor
        if(yy < mapHeight - 1){
        ds_list_add(node.neighbors, map[xx, yy + 1]);
        }
        
        
        //Extended
        
        //top left neighbor
        if(xx > 0 && yy > 0){
        ds_list_add(node.neighbors_ext, map[xx - 1, yy - 1]);
        }
        
        //top right neighbor
        if(xx < mapWidth - 1 && yy > 0){
        ds_list_add(node.neighbors_ext, map[xx + 1, yy - 1]);
        }
        
        //bottom left neighbor
        if(xx > 0 && yy < mapHeight - 1){
        ds_list_add(node.neighbors_ext, map[xx - 1, yy +1]);
        }
        
        //bottom right neighbor
        if(xx < mapWidth - 1 && yy < mapHeight - 1){
        ds_list_add(node.neighbors_ext, map[xx + 1, yy + 1]);
        }
    
    }

}

