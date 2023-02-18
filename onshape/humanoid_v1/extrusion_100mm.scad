% scale(1000) import("extrusion_100mm.stl");

translate([65, 0, 0])
cube([20, 100, 20], center=true);

translate([-65, 0, 0])
cube([20, 100, 20], center=true);
