$fn=16;



use <..\generic.scad>;

difference()
{
// cube to start from
translate([0,0,-1])
    cube([20, 16, 12]);

// hollow out the insides (where the switch lives)
translate([1,1,0])
    cube([18, 14, 11]);
    
// remove the top
translate([1,0,0])
    cube([18, 1, 11]);

// remove the switch hole
    translate([19,6,0])
    cube([1, 9, 11]);
}
    
    


    
    