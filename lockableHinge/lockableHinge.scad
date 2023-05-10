$fn = 16;

gearH = 2;
supportH = 4;
radius = 10;
teeth = $fn;

angleFactor = 360 / teeth;

module hinge() {
    for(r=[0:teeth-1]) {

        angle1 = angleFactor * r;
        angle2 = angleFactor * (r + 1);

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

difference() {
    hinge();
    translate ([0,0,-100]) cylinder(r=2.1, h=1000, center=true);
}

translate ([25,0,-supportH/2]) 
    difference() {
        translate([0,0,gearH/2]) cylinder(r=radius, h=supportH+gearH, center=true);
        translate([0,0,supportH]) rotate([180, 0, 0]) hinge();
        translate ([0,0,-100]) cylinder(r=2.1, h=1000, center=true);
    
    }
    

