$fn=16;

use <..\generic.scad>;

difference() 
{
    // main hat
    myBox(26,22,4);
    
    // remove top edge
    translate([1,22,-1])
    cube([24,1,15]);
    
    // remove switch hole
    translate([26,1,0])
    cube([1,9,14]);
    
    // remove annoying screw hole
    translate([1,1,-1])
    cube([7,7,1]);
}


