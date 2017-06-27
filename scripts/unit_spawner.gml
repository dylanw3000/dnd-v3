
//unit_spawner(x,y,unit_o)

tmp = instance_create(argument0*GRID_SIZE, argument1*GRID_SIZE, argument2);
tmp.gridX = argument0;
tmp.gridY = argument1;
map[argument0, argument1].occupant = tmp;

return tmp;

