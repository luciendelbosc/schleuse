dicke_size=0.3;
module zylinder1(size=65)     {
    cylinder(h = 30, r1 = 25, r2 = 25, center = false);   }   
module zylinder2(){
    cylinder(h = 60, r1 = 24, r2 = 24, center = true);    } 
module schleuse(size=65) {
    cube([size, size, dicke_size], center=true);
    translate([size/2,0,0]);}
module zylinder3(){
    cylinder(h = 0.3, r1 = 25, r2 = 25, center = true);  }    
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
      cube([size+2, size+2, 5], center=true);
      cube([size, size, 5], center=true);}}
module randloch(){
 
   difference(){
     rand(); 
     translate([30,0,-2.3])  
     cube([60,10,50], center=true);  }}
// main
A();
randloch();
   