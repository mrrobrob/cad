use <generic.scad>;

module picoStuds()
{
    union() {
        stud(4.8, 2, 0, 1, 5);
        stud(16.2, 2, 0, 1, 5);
        stud(4.8, 49, 0, 1, 5);
        stud(16.2, 49, 0, 1, 5);
    }
}

module picoStudHoles(h)
{    
    union() {
        studHole(4.8, 2, 0, 1, h);
        studHole(16.2, 2, 0, 1, h);
        studHole(4.8, 49, 0, 1, h);
        studHole(16.2, 49, 0, 1, h);
    }
}