
switch(active.class){
    case "engineer":
        with(node_o){
            i = ds_list_find_index(telegraphs, active);
            while(i != null){
                if(occupant != null && occupant.enemy){
                    damage_phase(occupant,-12);
                }
                ds_list_delete(telegraphs, i);
                i = ds_list_find_index(telegraphs, active);
            }
        }
        break;    

    
    case "aoe":
        with(node_o){
            i = ds_list_find_index(telegraphs, active);
            while(i != null){
                if(occupant != null && !occupant.enemy){
                    damage_phase(occupant,-15);
                }
                ds_list_delete(telegraphs, i);
                i = ds_list_find_index(telegraphs, active);
            }
        }
        break;
        
    
    default:
        break;
}

