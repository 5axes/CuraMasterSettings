$fs = 0.3;
$fa = 1;

union(){
difference() {
	cylinder(r=25, h=15);
	translate([0, 0, -1]) {
		cylinder(r=15, h=20);
	}
    }
translate([40,0,0]) difference() {
	cylinder(r=25, h=15);
	translate([0, 0, -1]) {
		cylinder(r=15, h=20);
	}
}

cylinder(r=4, h=15);
translate([40,0,0]) cylinder(r=4, h=15);
}