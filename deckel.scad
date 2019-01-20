 d=53.8;
r=d/2;
$fn=120;

module aussen() {
  cylinder(h = 20, r1 = r+1, r2 = r+1, center = false);
    translate([0,-r+2,14]) rotate([90,0,0])
   cylinder(h = 15, r1 = 11.5/2, r2 = 10.5/2, center = false);    
}
module innen() {
     cylinder(h = 10, r1 = r, r2 = r, center = false);
      cylinder(h = 18, r1 = r-1, r2 = r-1, center = false);

    translate([0,-r+2,14]) rotate([90,0,0])
     cylinder(h = 15, r1 = 9/2, r2 = 8/2, center = false); 
}
 difference() {
 aussen();
 innen();
 }