$fn=120;
module aussen() {
cylinder(h = 20, r1 = 27.9, r2 = 27.9, center = false);
translate([0,-27.9,14]) rotate([90,0,0])
    cylinder(h = 15, r1 = 11.5/2, r2 = 10.5/2, center = false); 
}
module innen() {
cylinder(h = 10, r1 = 26.9, r2 = 26.9, center = false);
      cylinder(h = 18, r1 = 25.9, r2 =25.9, center = false);

    translate([0,-27.9,14]) rotate([90,0,0])
     cylinder(h = 15, r1 = 9/2, r2 = 8/2, center = false); 
}
difference(){
aussen();
innen();
}