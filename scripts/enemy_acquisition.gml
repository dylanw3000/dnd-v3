
//enemy_acquisition(ally_o, range_min, range_max)

start = map[argument0.gridX, argument0.gridY];
start.h = argument2;
start.hh = argument1;

with(start){
    enemy_acquisition_loop();
}

