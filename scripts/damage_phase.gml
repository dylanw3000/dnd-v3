
target = argument0;
a = argument1;

bubble = instance_create(x,y,text_bubble);

if(a < 0){
    damage = a + target.armor;
    target.hp += damage;
    
    if(target.hp <= 0){
        target.hp = 0;
        a = target.enemy;
        
        node = map[target.gridX, target.gridY];
        node.occupant = null;
        with(target){
            instance_destroy();
        }
        
        if(a){
            if(instance_number(enemy_o) == 0){
                show_message("win");
                room_restart();
            }
        }
        else{
            if(instance_number(ally_o) == 0){
                show_message("lose");
                room_restart();
            }
        }

    }
    
    bubble.text = string(damage);
}
else{
    target.hp += a;
    
    if(target.hp > target.hp_max){
        target.hp = target.hp_max;
    }
    
    bubble.text = "+" + string(a);
}

