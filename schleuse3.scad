dicke_size=2;
d=53.8;
r=d/2;
$fn=120;
module zylinder1(size=65)     {
    cylinder(h = 12, r1 = r+1, r2 = r+1, center = false);   }   
module zylinder2(){
    cylinder(h = 60, r1 = r, r2 = r, center = true);    } 
module schleuse(size=65.2) {
    cube([size+4, size+4, dicke_size], center=true);
    translate([size/2,0,0]);}  
module A() {
module hut() {
   schleuse();
   zylinder1();}
   difference (){
     hut();
     zylinder2();}}
module rand(size=65) {
 translate([0,0,-2.3])
    difference(){
      cube([size+4.3, size+4.3, 5], center=true);
      cube([size+0.4, size+0.4, 5], center=true);}}
module randloch(){
 
   difference(){
     rand(); 
     translate([30,0,-2.3])  
     cube([60,10.2,50], center=true);  }}
// main
A();
randloch();
   