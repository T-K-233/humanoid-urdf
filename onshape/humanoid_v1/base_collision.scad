% scale(1000) import("base_collision.stl");

translate([0, 0, 200])
cube([150, 140, 400], center=true);

translate([0, 0, -55])
rotate([0, 90, 0])
cylinder(r=45, h=160, center=true);
