use <generic.scad>;

module picoStuds(x,y,z)
{
    translate([x,y,z])
    union() {
        stud(4.8, 2, 0, 1, 5);
        stud(16.2, 2, 0, 1, 5);
        stud(4.8, 49, 0, 1, 5);
        stud(16.2, 49, 0, 1, 5);
    }
}

module picoStudHoles(x,y,z, h)
{
    translate([x+1,y+1,z])
    union() {
        studHole(4.8, 2, 0, 2, h);
        studHole(16.2, 2, 0, 2, h);
        studHole(4.8, 49, 0, 2, h);
        studHole(16.2, 49, 0, 2, h);
    }
}