$fn=32;

use <generic.scad>
*translate([-4,-4-0]) cube([4,4,1]);
*translate([-2, -2, 1]) stud(1, 2);

translate([0,0,0]) cube([4,4,1]);
translate([2,2,1]) studHole(1.1, 5);

translate([4,0,0]) cube([4,4,1]);
translate([6,2,1]) studHole(1.2, 5);