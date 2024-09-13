$fn=16;

use <..\generic.scad>;


difference() 
{
    // main hat
    translate([-0.1,-0.1, 0])
    myBox(20.2,16.2,4);
    
    // remove top edge
    translate([1,16,-1])
    cube([18,1.2,13]);
    
    // remove switch hole
    translate([20,1,0])
    cube([1.2,9,12]);
    
    // remove annoying screw hole
    translate([1,1,-1])
    cube([7,7,1]);
}


