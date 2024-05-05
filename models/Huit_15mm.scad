$fs = 0.3;
$fa = 1;

union(){
difference() {
	cylinder(r=15, h=15);
	translate([0, 0, -1]) {
		cylinder(r=10, h=20);
	}
difference() {
	cylinder(r=15, h=15);
	translate([0, 0, -1]) {
		cylinder(r=10, h=20);
	}
}
}