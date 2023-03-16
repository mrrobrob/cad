$fn=32;

use <generic.scad>;
use <pico.scad>;

difference() {    
    myBox(-0.1,-1.5,-1.5,37.2,83, 10);
    translate([-2,-4, -4 ]) cube([140, 3, 100], center = false);
    for (a = [0:8]) {
        translate([5, a* 4 + 12, -3]) cube([28,1,6]);
    }
    for (a = [11:15]) {
        translate([5, a* 4 + 12, -3]) cube([28,1,6]);
    }
}

picoStudHoles(7, 0.5, -1.5, 13);
