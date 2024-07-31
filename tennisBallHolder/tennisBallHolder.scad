$fn= 32;

height = 40;

difference() {
    hull() {
        translate([-10/2,-10/2,0]) cylinder(d=70, h= height);
        translate([-10/2,10/2,0]) cylinder(d=70, h= height);
        translate([10/2,-10/2,0]) cylinder(d=70, h= height);
        translate([10/2,10/2,0]) cylinder(d=70, h= height);
    }
    translate([0, 0, 2]) {
        cylinder(d1=73, d2=74, h=height+5);
    } 
}