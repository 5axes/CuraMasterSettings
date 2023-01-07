$fs = 0.5;
$fa = 1;

difference() {
	cylinder(r=30, h=20);
	cylinder(r=12, h=50);

	translate([24, 0, 0]) {
			cylinder(r=4, h=50);
	}
    
    rotate([0,0,120]) translate([24, 0, 0]) {
			cylinder(r=4, h=50);
	}
    
    rotate([0,0,240]) translate([24, 0, 0]) {
			cylinder(r=4, h=50);
	}
}