//
// ktRack27
//
//


gap1 = 0.001;
gap2 = 0.002;

th = 2;



A();
//B();
//UNIT();


module A()
difference()
{
    union()
    {
        translate([-th, -th, -th]) cube([52+th*2, 23+th*2, 81+th]);
        translate([37-th, 23+th, -th]) cube([6, 20, 60]);
    }

    UNIT();
    
    translate([41, 35, 50]) rotate([0, -90, 0]) rear_screw_hole();
    translate([41, 35, 10]) rotate([0, -90, 0]) rear_screw_hole();
    
}


module B()
translate([0, 0, 81])
difference()
{
    union()
    {
        translate([-th, -th, 0]) cube([52+th*2, 23+th*2, 28]);
        translate([37-th, 23+th, 0]) cube([6, 20, 28]);
    }
    translate([0, -17, 0]) rotate([0, 90, 0]) cylinder(h=200, r=40, center=true, $fn=100);
    translate([-30, -10, 0]) cube([100, 20, 100]);

    translate([41, 35, 22]) rotate([0, -90, 0]) rear_screw_hole();
    translate([41, 35,  7]) rotate([0, -90, 0]) rear_screw_hole();
}



module UNIT()
{
difference()
{
    union()
    {
        translate([0, 23-20.2, 0]) cube([52, 20.2, 107]);
        translate([(52-43)/2, 0, 0]) cube([43, 23, 107]);
    }
}
}



module rear_screw_hole()
{
    translate([0, 0, 3]) cylinder(5, 1.8, 1.8, $fn=30);
    translate([0, 0, 2.2-gap1]) cylinder(0.8+gap2, 1.8+0.7, 1.8, $fn=30);
    translate([0, 0, -gap1]) cylinder(2.2+gap1, 2.75+0.4, 2.75-0.6, $fn=30);
    translate([0, 0, -10]) cylinder(10, 2.75+0.4, 2.75+0.4, $fn=30);
}