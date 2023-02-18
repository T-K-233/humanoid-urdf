% scale(1000) import("extrusion_150mm.stl");


translate([0, 60, 0])
cube([150, 20, 20], center=true);

translate([0, -60, 0])
cube([150, 20, 20], center=true);
