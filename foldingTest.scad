linear_extrude(1)
    square(5);

linear_extrude(0.2)
    translate([5,0])
    square([3,5]);

linear_extrude(1)
    translate([8,0])
    square(5);
