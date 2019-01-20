dicke_size=2;
d=53.8;
r=d/2;
$fn=120;
size=65.2;
translate([-size/2-dicke_size+2,-size/2-dicke_size+2,-dicke_size*2]) cube([3,3,dicke_size+0.8]);
translate([size/2-dicke_size+1,-size/2-dicke_size+2,-dicke_size*2]) cube([1,3,dicke_size+0.8]);
translate([size/2-dicke_size+1.15,size/2-dicke_size+0.15,-dicke_size*2]) cube([1,2,dicke_size+0.8]);
translate([-size/2-dicke_size+1.85,size/2-dicke_size-0.6,-dicke_size*2]) cube([2,3,dicke_size+0.8]);
module zylinder1(size=65)     {
    cylinder(h = 12, r1 = r+1, r2 = r+1, center = false);   }   
module zylinder2(){
    cylinder(h = 60, r1 = r, r2 = r, center = true);    } 
module schleuse() {
    cube([size+4, size+4, dicke_size], center=true);
    translate([size/2,0,0]);}  
module A() {
module hut() {
   schleuse();
   zylinder1();}
   difference (){
     hut();
     zylinder2();}}
module rand(sizeR=65) {
 translate([0,0,-2.3])
    difference(){
      cube([sizeR+4.3, sizeR+4.3, 7.5], center=true);
      cube([sizeR+0.6, sizeR+0.6, 7.5], center=true);}}
module randloch(){
 
   difference(){
     rand(); 
     translate([30,0,-2.3])  
     cube([60,10.2,50], center=true);  }}
// main
A();
randloch();
   