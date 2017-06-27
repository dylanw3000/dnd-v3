
//attack_range(start, min, max)

start = argument0;
start.h = argument2;
start.hh = argument1;

with(start){
    attack_range_loop();
}

opt = 0;

for(i=0; i<instance_number(node_o); i++){
    node = instance_find(node_o, i);
    if(node.h != null && node.hh == 0){
        node.option = opt;
        opt++;
    }
}

