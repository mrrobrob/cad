$fn=16;

use <generic.scad>;

module noir_cam() 
{

    circle(r= 7.5);

    translate([-30,0]) 
        circle(r = 10);
    
    translate([-19.5, -7])
        circle(r= 3);

    translate([30,0]) 
        circle(r=10);
    
    translate([19.5, 7])
        circle(r= 3);
}

module thermal_cam()
{
    circle(r=4.5);
}

difference() {
    color([1,0.5,0.5]) 
        myBox(-45,-15,0,90,30,45);
    
    rotate([-90,0,0])
    union() {
        translate([0,-12, -20])        
            linear_extrude(10) 
                noir_cam();
    
        translate([0, -35, -20])
            linear_extrude(10)
                thermal_cam();
    }
}


    
