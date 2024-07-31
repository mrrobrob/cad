$fn=32;

use <..\generic.scad>;
use <..\pico.scad>;

difference() {
    union () {
        translate ([0.2,0.2,0]) cube([34.6,59.6,3]);
        translate ([0,0,3]) myBox(35,60,5);
    }
    translate ([5, 25, 0]) cube([25,10,5]);
}