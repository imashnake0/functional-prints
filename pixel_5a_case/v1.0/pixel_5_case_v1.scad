difference() {
    difference() {
        import("../stl/pixel_5_case_template.stl");
        name();
    }
    return();

}

module name(){
    translate([30, 5, -5.5]) {
        rotate([0, 180, 90]) {
            scale([1, 1, 4]) {
                linear_extrude(height=10, center=true, convexity=10, twist=0) {
                    text("imashnake_", font = "Product Sans");
                }
            }
        }
    }
}

module return(){
    translate([0, 0, 0]) {
        translate([-30, -30, 0]) {
            rotate([0, 0, 0]) {
                scale([0.55, 0.55, 1]) {
                    linear_extrude(height=10, center=true, convexity=10, twist=0) {
                        text("649 Albert St.,", font = "Product Sans");
                    }
                }
            }
        }

        translate([-30, -40, 0]) {
            rotate([0, 0, 0]) {
                scale([0.55, 0.55, 1]) {
                    linear_extrude(height=10, center=true, convexity=10, twist=0) {
                        text("Waterloo, ON", font = "Product Sans");
                    }
                }
            }
        }

        translate([-25, -10, 0]) {
            rotate([0, 0, 90]) {
                scale([0.3, 0.3, 1]) {
                    linear_extrude(height=10, center=true, convexity=10, twist=0) {
                        text("kamaleshpaluru07@gmail.com", font = "Product Sans");
                    }
                }
            }
        }
    }
}