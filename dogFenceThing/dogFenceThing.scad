
difference() {
    linear_extrude(5)
        difference() {
            square([40, 20]);
            translate ([10, 10]) circle(d=5);
            translate ([30, 10]) circle(d=5);
            
        };
    translate ([18, 0, 4]) cube( [ 4, 20, 2]);
}