dicke_size=2;
size=65;
d=53.8;
r=d/2;
$fn=120;
module zylinder1()     {
 cylinder(h = 12, r1 = r+1, r2 = r+1, center = false);   }   
module zylinder2(){
   cylinder(h = 60, r1 = r, r2 = r, center = true);     } 
module schleuse() {
    cube([size, size, dicke_size], center=true);
    translate([size/2,0,0]);}
    
module loch(s) {
    cube([s, s, dicke_size], center=true);}
module loescher(s=7){
  for(x = [size/2 : -2*s: -size/2]) {
    for(y = [-size/2 : s+2: size/2]){
      translate([x,y,0]) loch(s);}    }} 
  
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