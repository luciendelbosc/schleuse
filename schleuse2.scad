dicke_size=0.3;
module zylinder1(size=65)     {
 cylinder(h = 30, r1 = 25, r2 = 25, center = false);   }   
module zylinder2(){
   cylinder(h = 60, r1 = 24, r2 = 24, center = true);     } 
module schleuse(size=65) {
    cube([size, size, dicke_size], center=true);
    translate([size/2,0,0]);}
module loch(size=5) {
    cube([size, size, dicke_size], center=true);}
module loescher(){
  for(x = [-30 : 10: 30]) {
    for(y = [-30 : 7: 30]){
      translate([x,y,0]) loch();}    }} 
module zylinder3(){
   cylinder(h = 0.3, r1 = 25, r2 = 25, center = true);  }    
module A() {
module hut() {
schleuse();
zylinder1();
}
difference (){
    hut();
    zylinder2();
}}
// main
A();
difference (){
schleuse();
loescher();}