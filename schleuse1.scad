
dicke_size=1;

module schleuse(size=65) {
    cube([size, size, dicke_size], center=true);
    translate([size/2,0,0]) cube([20,10, dicke_size], center=true);
}


module loch(size=5) {
    cube([size, size, dicke_size], center=true);
}



module loescher(){
  for(x = [-25 : 10: 25]) {
    for(y = [-25 : 7: 25]){
      translate([x,y,0]) loch();}
      
  }
}


// main
difference() {
   schleuse();
   loescher();
}