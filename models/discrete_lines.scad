$fs = 0.5;
$fa = 1;

difference() {
	cylinder(r=40, h=15);
	cylinder(r=15, h=21);

	translate([33, 0, 0]) {
			cylinder(r=5, h=21);
	}
    
    rotate([0,0,120]) translate([33, 0, 0]) {
			cylinder(r=5, h=21);
	}
    
    rotate([0,0,240]) translate([33, 0, 0]) {
			cylinder(r=5, h=21);
	}
}