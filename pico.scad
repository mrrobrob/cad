use <generic.scad>;

module picoStuds()
{
    union() {
        translate([4.8, 2, 0]) stud(0.85, 5);
        translate([16.2, 2, 0]) stud(0.85, 5);
        translate([4.8, 49, 0]) stud(0.85, 5);
        translate([16.2, 49, 0]) stud(0.85, 5);
    }
}

module picoStudHoles(h)
{    
    union() {
        translate([4.8, 2, 0]) studHole(1.2, h);
        translate([16.2, 2, 0])studHole(1.2, h);
        translate([4.8, 49, 0]) studHole(1.2, h);
        translate([16.2, 49, 0]) studHole(1.2, h);
    }
}

module piZeroStuds(h)
{
    union() {
        translate([3.5, 3.5, 0]) stud(1.3, h);
        translate([61.5, 3.5, 0]) stud(1.3, h);
        translate([3.5, 26.5, 0]) stud(1.3, h);
        translate([61.5, 26.5, 0]) stud(1.3, h);
    }
}