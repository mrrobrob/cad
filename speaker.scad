
linear_extrude(1)
difference() {
    translate([-45,-35]) square([90, 70]);
    circle(33);
    translate([26.16, 26.16]) circle(2.3);
    translate([-26.16, 26.16]) circle(2.3);
    translate([26.16, -26.16]) circle(2.3);
    translate([-26.16, -26.16]) circle(2.3);
    translate([-38, 26]) circle(4);
}

hull() {
    translate([45, 35, 0])  cube(1);
    translate([45, 14, -50]) cube(1);
    translate([-45, 14, -50]) cube(1);
    translate([-45, 35, 0]) cube(1);
}

hull() {
    translate([45, 35, 0])  cube(1);
    translate([45, 14, -50]) cube(1);
    translate([45, -14, -50]) cube(1);
    translate([45, -35, 0]) cube(1);
}

hull() {
    translate([-45, 35, 0])  cube(1);
    translate([-45, 14, -50]) cube(1);
    translate([-45, -14, -50]) cube(1);
    translate([-45, -35, 0]) cube(1);
}

