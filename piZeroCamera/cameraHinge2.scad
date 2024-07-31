$fn=16;

use <..\lockableHinge\lockableHinge.scad>;



difference() {
    hingeBottom(48, 16, 4, 8);    
    linear_extrude(3.5)  circle(r=4, $fn=6);
}