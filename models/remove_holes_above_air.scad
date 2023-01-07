$fs = 0.4;
$fa = 1;

difference(){
    union() {
        cube(10);
        translate([25, 0, 0]) cube(10);
        translate([0, 0, 10]) cube([35, 10, 5]);
    }
    translate([18, 5, 5])cylinder(r=2,h=12);
}