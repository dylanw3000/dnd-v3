
//aoe_gen(tile, min_range, max_range, option);

start = argument0;
start.hh = argument1;
start.h = argument2;

with(start){
    aoe_gen_loop();
}

with(node_o){
    if(h != null && hh == 0){
        option = argument3;
    }
}

