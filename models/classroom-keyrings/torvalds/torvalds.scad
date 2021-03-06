module base(){
       difference(){ 

            square([65,20]);
            
            translate([3,10])
            circle([10], $fn=100);
            
            translate([60,1])
            square([4,18]);
       }
}

module torvalds(){
    linear_extrude(1){
        difference(){ 
            base();
            
            translate([5,6])
            scale([0.7,0.7])
            text("Torvalds");
            
            translate([32,40])   
            scale([0.3,0.3,0.1])    
            import("torvalds.dxf");
        }
        translate([64,1.3])
        rotate(90)
        scale([0.24,0.42])
        text("TORVALDS");
    }   
}

translate([-30,-45]){
    turing();
    translate([0,22])
    stallman();
    translate([0,44])
    torvalds();
    translate([0,66])
    ada();
    translate([0,88])
    darwin();
}