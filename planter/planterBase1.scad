width = 75;
depth = 100;
height=10;
wallThickness = 2;

difference() {

    hull() {
        translate([-1-wallThickness,-1-wallThickness,0]) cylinder(r=10, h=height);
        translate([width +1 + wallThickness , -1- wallThickness, 0]) cylinder(r=10, h=height);
        translate([width +1 + wallThickness ,depth+1+wallThickness,0]) cylinder(r=10, h=height);
        translate([-1-wallThickness,depth+1+wallThickness,0]) cylinder(r=10, h=height);
    }

    hull() {
        translate([-1,-1,wallThickness]) cylinder(r=10, h=height);
        translate([width +1 , -1, wallThickness]) cylinder(r=10, h=height);
        translate([width +1 ,depth+1,wallThickness]) cylinder(r=10, h=height);
        translate([-1,depth+1,wallThickness]) cylinder(r=10, h=height);
    }

}

union() {
    translate([-1-wallThickness,-1-wallThickness,0]) cylinder(r=8, h=6);
    translate([width +1 + wallThickness , -1- wallThickness, 0]) cylinder(r=8, h=6);
    translate([width +1 + wallThickness ,depth+1+wallThickness,0]) cylinder(r=8, h=6);
    translate([-1-wallThickness,depth+1+wallThickness,0]) cylinder(r=8, h=6);
}