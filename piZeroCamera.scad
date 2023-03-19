$fn=16;

use <generic.scad>;
use <pico.scad>;

module noir_cam() 
{

    circle(r= 8);

    translate([-30,0]) 
        circle(r = 10);
    
    translate([-19, -6.5])
        circle(r= 3.5);

    translate([30,0]) 
        circle(r=10);
    
    translate([19, 6.5])
        circle(r= 3.5);
}

module thermal_cam()
{
    circle(r=5);
}

difference() {
    color([1,0.5,0.5]) 
        union() {
            translate([-45,-20,0]) myBox(90,35,25);
            translate([-46,16,25]) rotate([90,0,0]) linear_extrude(1) polygon([[0,0], [31,20], [61,20], [92,0]]);
            translate([-20, -81, 0]) myBox(40,60,25);
        }
    
    translate([-45, -45, 0]) cube([90,50,27]);
    rotate([-90,0,0])
        linear_extrude(20) 
            union() {
                translate([0,-12, -20])        
                    noir_cam();    
                translate([0, -35])            
                    thermal_cam();
        };
    
    
}

translate([15, -80,0]) rotate([0,0,90]) piZeroStuds(20);

difference() {
    translate([0,0,-1]) linear_extrude(26) polygon([[-21,-21],[-20,-46],[-46,-21]]);
    translate([0.6,0.6,0]) linear_extrude(26) polygon([[-21,-21],[-20,-46],[-46,-21]]);
}

difference() {
    translate([0,0,-1]) linear_extrude(26) polygon([[21,-20],[20,-46],[46,-21]]);
    translate([-0.6,0.6,0]) linear_extrude(26) polygon([[21,-20],[20,-46],[46,-21]]);
}
