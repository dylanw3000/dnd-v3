
switch(active.class){
    case "warrior":
        if(occupant != null && occupant.enemy){
            damage_phase(occupant, -6);
        }
        break;
    case "esper":
        if(occupant != null){
            if(occupant.enemy){
                damage_phase(occupant, -8);
            }
            else{
                damage_phase(occupant, 6);
            }
        }
        break;
    case "engineer":
        ds_list_add(telegraphs, active);
        option = null;
        break;
        
        
        
    case "add":
        if(occupant != null && !occupant.enemy){
            damage_phase(occupant, -5);
        }
        break;
    case "archer":
        if(occupant != null && !occupant.enemy){
            damage_phase(occupant, -6);
        }
        break;
    case "aoe":
        ds_list_add(telegraphs, active);
        option = null;
        break;
    case "runner":
        if(occupant != null && !occupant.enemy){
            damage_phase(occupant, -8);
        }
        break;
        
        
    default:
        break;
}

