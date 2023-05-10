$fn=16;

difference() {
    translate([-45,-30,-10]) cube([95,60,30]);
    hull() {
        cylinder(40, d=31, center = true);
        translate([0, 30, 0]) cylinder(40, d=33, center = true);
    };
    translate([-33.5,-40,-5]) cube([6, 80, 40]);
    translate([-40.5,-40,-5]) cube([20, 20, 10]);
    translate([25, -70,-5]) cube([13.5, 91, 31 ]);
}