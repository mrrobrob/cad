$fn = 32;

topGap = 2.15;
midGap = 1.80;
bottomGap = 0.80;
width = 35.6 + bottomGap * 2 + topGap * 2;

rotate([180,0,0])
difference() {
    union(){
        hull() {
            z = bottomGap/2;
            adjust = topGap+0.8;
            translate ([adjust, adjust, z]) cylinder(bottomGap, 0, bottomGap, center = true);
            translate ([adjust,width-adjust, z]) cylinder(bottomGap, 0, bottomGap, center = true);
            translate ([width-adjust,width-adjust, z]) cylinder(bottomGap, 0, bottomGap, center = true);
            translate ([width-adjust,adjust, z]) cylinder(bottomGap, 0, bottomGap, center = true);
        }

        hull() {
            z = bottomGap+midGap/2;
            adjust = topGap + 0.8;
            translate ([adjust, adjust,z]) cylinder(midGap, 0.8, 0.8, center = true);
            translate ([adjust,width-adjust,z]) cylinder(midGap, 0.8, 0.8, center = true);
            translate ([width-adjust,width-adjust,z]) cylinder(midGap, 0.8, 0.8, center = true);
            translate ([width-adjust,adjust,z]) cylinder(midGap, 0.8, 0.8, center = true);
        }

        hull() {
            z = bottomGap+midGap+ topGap/2;            
            r1 = 7.5/2;
            r2 = r1 - topGap;
            adjust = 7.5/2;
            translate ([adjust, adjust,z]) cylinder(topGap, r2, r1, center = true);
            translate ([adjust,width-adjust,z]) cylinder(topGap, r2, r1, center = true);
            translate ([width-adjust,width-adjust,z]) cylinder(topGap, r2, r1, center = true);
            translate ([width-adjust,adjust,z]) cylinder(topGap, r2, r1, center = true);
        }
    };
    translate([4, 4, 0]) cube([34,34,10]);

}

