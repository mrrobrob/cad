$fn=32;

use <generic.scad>;

module picoStuds(x,y,z)
{
    translate([x,y,z])
    union() {
        stud(4.8, 2, 0, 1, 5);
        stud(16.2, 2, 0, 1, 5);
        stud(4.8, 49, 0, 1, 5);
        stud(16.2, 49, 0, 1, 5);
    }
}

module picoStudHoles(x,y,z, h)
{
    translate([x+1,y+1,z])
    union() {
        studHole(4.8, 2, 0, 2, h);
        studHole(16.2, 2, 0, 2, h);
        studHole(4.8, 49, 0, 2, h);
        studHole(16.2, 49, 0, 2, h);
    }
}

*difference() {
    myBox(0,0,0,35,80,15);
    translate([17.5, 0, 15])
        cube([8,6,24], center=true);
    translate([17.5, 5, 9])    
        rotate([90,0,0])
            cylinder(10, 3, 3);
}
picoStuds(7,0.5,0);

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
