$fn=16;

use <..\generic.scad>;

difference()
{
// cube to start from
translate([0,0,-1])
    cube([26, 22, 14]);

// hollow out the insides (where the switch lives)
translate([1,1,0])
    cube([24, 20, 13]);
    
// remove the top
translate([1,0,0])
    cube([24, 1, 13]);

// remove the switch hole
    translate([25,12,0])
    cube([1, 9, 13]);
}
    
    


    
    