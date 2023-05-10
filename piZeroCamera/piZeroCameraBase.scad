$fn=16;

rotate([90,0,45]) translate ([-0.5,-0.5,-0.5]) cube([36,20,1]);
rotate([90,0,135])  translate ([-0.5,-0.5,-0.5]) cube([36,20,1]);

linear_extrude(5) polygon(points=[[0,0], [25,25], [25, -55], [-25,-55], [-25, 25]] );
