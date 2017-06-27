
switch(active.class){
    case "warrior":
        //active_tile.option = 0;
        aoe_gen(active_tile, 1,1.5,0);
        break;
    case "esper":
        for(i=1; i<=4; i++){
            if(active_tile.gridX-i >= 0){
                map[active_tile.gridX-i, active_tile.gridY].option = 0;
            }
            if(active_tile.gridX+i < mapWidth){
                map[active_tile.gridX+i, active_tile.gridY].option = 1;
            }
            if(active_tile.gridY-i >= 0){
                map[active_tile.gridX, active_tile.gridY-i].option = 2;
            }
            if(active_tile.gridY-i < mapHeight){
                map[active_tile.gridX, active_tile.gridY+i].option = 3;
            }
        }
        break;
    case "engineer":
        attack_range(active_tile, 4, 6);
        break;
        
        
        
    case "add":
        map[target.gridX, target.gridY].option = 0;
        break;
    case "archer":
        map[target.gridX, target.gridY].option = 0;
        break;
    case "aoe":
        target_tile = map[target.gridX, target.gridY];
        target_tile.option = 0;
        aoe_gen(target_tile, 1, 2, 0);
        with(node_o){
            h = null;
            hh = null;
        }
        aoe_gen(target_tile, 3.5, 4.5, 0);
        with(node_o){
            h = null;
            hh = null;
        }
        aoe_gen(target_tile, 6, 7, 0);
        break;
    case "runner":
        //map[target.gridX, target.gridY].option = 0;
        aoe_gen(target_tile, 0, 1.5, 0);
        break;
        
        
        
    default:
        advance = 1;
        break;
}

