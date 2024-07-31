$fn=32;

use <..\generic.scad>;
use <..\pico.scad>;

difference() {
    myBox(35,60,10);
    for (a = [0:10]) {
        translate([4, a* 4 + 4, -3]) cube([28,1.5,6]);
    }

    
    for (a = [0:12]) {
        translate([-4, a* 4 + 4, 3]) cube([44,1.5,4]);
    }

    translate ([26, 53, -10]) linear_extrude(100) resize([3.8, 5.4]) circle(d=1);
    translate ([20, 53, -10]) linear_extrude(100) resize([3.8, 5.4]) circle(d=1);

}


difference() {
    translate ([0.2,0.2,8]) cube([34.6,59.6,4]);
    translate ([2.2,2.2,6]) cube([30.6,55.6,16]);

}

for (a=[0:6]) {
    translate ([2.2,2.2 + 9.6*a,8]) rotate([270,0,180]) linear_extrude(2) polygon([[0,0],[2,2],[2,0]]);
    translate ([32.8,0.2 + 9.6*a,8]) rotate([270,0,0]) linear_extrude(2) polygon([[0,0],[2,2],[2,0]]);
}

for (a=[0:4]) {
    translate ([0.2 + 8.15*a,2.2,8]) rotate([270,0,270]) linear_extrude(2) polygon([[0,0],[2,2],[2,0]]);
    translate ([2.2 + 8.15*a,57.8,8]) rotate([270,0,90]) linear_extrude(2) polygon([[0,0],[2,2],[2,0]]);    
}

