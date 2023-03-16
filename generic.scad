module myBox(x,y,z,w,d,h) 
{
    translate([x-1,y-1,z-1])
    difference() {
        cube([w+2, d+2, h+1]);
        translate([1, 1, 1])
            cube([w, d, h]);
    }
}

module stud(x,y,z, radius, h)
{
    translate([x,y,z])
    union() {
        cylinder(h, radius + 0.7, radius+0.7);
        translate([0,0, h])
        cylinder(3, radius, radius);        
    }
}

module studHole(x,y,z, radius, h)
{
    translate([x,y,z])
    difference() {
        cylinder(h, radius + 1, radius+1);
        translate([0,0,h-2])
        cylinder(2, radius, radius);
    }    
}