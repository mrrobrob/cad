module private_hinge(radius, teeth, gearH, supportH) {
    for(dr=[0:teeth-1]) {

        angleFactor = 360 / teeth;

        angle1 = angleFactor * dr;
        angle2 = angleFactor * (dr + 1);

        x1 = radius * sin(angle1);
        y1 = radius * cos(angle1);

        x2 = radius * sin(angle2);
        y2 = radius * cos(angle2);        
        
        hull() {
            translate ([0,0,0]) cube(0.01);
            translate ([x1, y1, 0]) cube(0.01);
            translate([x2,y2,0]) cube(0.01);
            translate([0, 0, gearH]) cube(0.01);
            translate([(x1+x2)/2, (y1+y2)/2, gearH]) cube(0.01);
            translate([0,0,-supportH]) cube(0.01);
            translate([x1,y1,-supportH]) cube(0.01);
            translate([x2,y2,-supportH]) cube(0.01);            
        }  
    }
}

module hingeTop(radius, teeth, gearH, supportH) {
    translate([0,0,supportH])
    difference() {
        private_hinge(radius, teeth, gearH, supportH);
        translate ([0,0,-100]) cylinder(r=2.1, h=1000, center=true);
    }
}

module hingeBottom(radius, teeth, gearH, supportH)
    translate([0,0,supportH/2])
    difference() {
        translate([0,0,gearH/2]) cylinder(r=radius, h=supportH+gearH, center=true);
        translate([0,0,supportH]) rotate([180, 0, 0]) private_hinge(radius, teeth, gearH, supportH);
        translate ([0,0,-100]) cylinder(r=2.1, h=1000, center=true);
    
    }
   
// Example Usage
// hingeTop(30, 16, 4, 8);
// translate ([80,0,0]) hingeBottom(30,16,4,8);