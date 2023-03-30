$fn=16;

use <generic.scad>;
use <pico.scad>;

module noir_cam() 
{

    circle(r= 8);

    translate([-30,0]) 
        circle(r = 10);
    
    translate([-19, 6.5])
        circle(r= 3.5);

    translate([30,0]) 
        circle(r=10);
    
    translate([19, -6.5])
        circle(r= 3.5);
}

module thermal_cam()
{
    circle(r=5);
}


difference() {
    rotate([90,0,0]) myBox(90, 90, 20);
    translate([45,5,30]) rotate([90,0,0]) linear_extrude(10) noir_cam();
    translate([45,5,70]) rotate([90,0,0]) linear_extrude(10) thermal_cam();
}


