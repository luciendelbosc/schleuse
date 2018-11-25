
module part1() {
  include <schleuse1.scad>;
}
module part2() {
  include <schleuse2.scad>;
}
module part3() {
  include <schleuse3.scad>;
}

//MAIN
part1();
translate([0,0,+10]) part2();
translate([0,0,-10]) rotate([180,0,0]) part3();