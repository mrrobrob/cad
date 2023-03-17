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
    for (a = [0:8]) {
        translate([4, a* 4 + 12, -3]) cube([28,1.5,6]);
    }
    for (a = [11:15]) {
        translate([4, a* 4 + 12, -3]) cube([28,1.5,6]);
    }
}

translate([7,0.5,0])
    picoStuds();