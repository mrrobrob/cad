$fn=16;

use <..\lockableHinge\lockableHinge.scad>;


hingeTop(48, 16, 4, 8);
difference() {
    union () {
        hull() {
            translate([-50,-50,0]) cube(1);
            translate([50,-50,-0]) cube(1);
            translate([-50,50,0]) cube(1);
            translate([50,50,-0]) cube(1);
            translate([-50,-50,-20]) cube(1);
            translate([-50,50,-20]) cube(1);    
        } 
        difference() {
            translate([-52,-50,-20]) cube([3,101,45]);
            translate([0,-20,15]) rotate([0,90,0]) cylinder(r=3.1, h=1000, center=true);
            translate([0,20,15]) rotate([0,90,0]) cylinder(r=3.1, h=1000, center=true);
        }
    }
    
    
    
}