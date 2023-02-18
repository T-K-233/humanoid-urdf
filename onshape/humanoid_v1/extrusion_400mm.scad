% scale(1000) import("extrusion_400mm.stl");

translate([65, -60, 210])
cube([20, 20, 400], center=true);

translate([-65, -60, 210])
cube([20, 20, 400], center=true);
