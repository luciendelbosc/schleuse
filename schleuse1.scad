
dicke_size=2;
size=65;
module schleuse() {
    cube([size, size, dicke_size], center=true);
    
}
module loch(s) {
    cube([s, s, dicke_size], center=true);}

module loescher(s=7){
  for(x = [size/2 +s : -2*s: -size/2]) {
    for(y = [-size/2 : s+2: size/2]){
      translate([x,y,0]) loch(s);}    }
  translate([(size)/2 + s,0,0])
        cube([30,size,dicke_size], center=true);     

      } 

module loescher2() {
  for(x = [-25 : 10: 25]) {
    for(y = [-25 : 7: 25]) {
      translate([x,y,0]) loch();
    }
  }
  translate([37.5,0,0])
  cube([30,size,dicke_size], center=true);     
}

// main
difference() {
   schleuse();
   loescher();
}
translate([size/2,0,0]) cube([21,10, dicke_size], center=true);