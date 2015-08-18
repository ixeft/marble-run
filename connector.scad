$fn=600;
difference()
{   union()
   { 
    difference()
    {
        cylinder(r=27.6/2, h=34.5);
            translate([0,0,-1])
        cylinder(r= (23.5+0.4)/2, h=32.5);
    }
        translate([0,0,34.5])
    intersection()
    {
        cylinder(r= (26.1)/2, h=6.5,$fn=6);
        cylinder(r= (23.5)/2, h=6.5);

    }
}     
translate([0,0, 30])    
cylinder(r= 20.0/2, h=20);
}
