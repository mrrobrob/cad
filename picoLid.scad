$fn=32;

use <generic.scad>;
use <pico.scad>;

difference() {    
    myBox(-1.1,-1.1,0,37.2,83.2, 10);
    
    for (a = [2:11]) {
        translate([4, a* 4, -3]) cube([28,1.5,6]);
    }
    for (a = [14:19]) {
        translate([4, a* 4, -3]) cube([28,1.5,6]);
    }
}

translate([7, 0.5, 0]) 
    picoStudHoles(13);

