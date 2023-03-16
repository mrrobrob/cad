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
    myBox(-45,-15,0,90,30,20);
    translate([0, 0, -5])
        linear_extrude(5) 
            noir_cam();
}


    
