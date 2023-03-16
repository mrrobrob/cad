$fn=32;

use <generic.scad>;
use <pico.scad>;

difference() {
    myBox(0,0,0,35,80,15);
    translate([17.5, 0, 15])
        cube([8,6,24], center=true);
    translate([17.5, 5, 9])    
        rotate([90,0,0])
            cylinder(10, 3, 3);
}
picoStuds(7,0.5,0);