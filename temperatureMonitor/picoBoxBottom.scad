$fn=32;

use <..\generic.scad>;
use <..\pico.scad>;

difference() {
    myBox(35,60,10);
    translate([17.5, 0, 4])
        cube([8,6,4], center=true);
    for (a = [0:8]) {
        translate([4, a* 4 + 12, -3]) cube([28,1.5,6]);
    }

    
    for (a = [0:12]) {
        translate([-4, a* 4 + 4, 3]) cube([44,1.5,4]);
    }

}


translate([7,0.5,0])
    picoStuds();