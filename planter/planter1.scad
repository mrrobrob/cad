width = 75;
depth = 100;
height = 50;
wallThickness = 2;

difference() {
    hull() {
        cylinder(r=10, h=height);
        translate([width, 0, 0]) cylinder(r=10, h=height);
        translate([width,depth,0]) cylinder(r=10, h=height);
        translate([0,depth,0]) cylinder(r=10, h=height);
    }

    translate([-10,depth/2 - 1.5,0]) cube([depth+ 20,3,10]);   
    translate([-10,depth/2 - 14,0]) cube([depth+ 20,3,10]);   
    translate([-10,depth/2 - 26.5,0]) cube([depth+ 20,3,10]);   

    translate([-10,depth/2 + 11, 0]) cube([depth+ 20,3,10]);   
    translate([-10,depth/2 + 23.5, 0]) cube([depth+ 20,3,10]);  

    hull() {
        translate([wallThickness,wallThickness,wallThickness]) cylinder(r=10, h=height);
        translate([width-wallThickness, wallThickness, wallThickness]) cylinder(r=10, h=height);
        translate([width-wallThickness,depth-wallThickness,wallThickness]) cylinder(r=10, h=height);
        translate([wallThickness,depth-wallThickness,wallThickness]) cylinder(r=10, h=height);
    }


}
