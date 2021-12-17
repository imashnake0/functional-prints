difference() {
    import("../stl/pixel_5_case_template.stl");
    sim_gap();
}

translate([0, 40, 0]) {
    rotate([0, 0, 180]) {
        template_gap();
    }
}


module template_gap() {
    intersection(){
        translate([35, 20, 0]) {
            cube([10, 45, 20], center=true);
        }
        import("../stl/pixel_5_case_template.stl");
    }
    
}

module sim_gap(){
    rotate([0, 180, 0]) {
        translate([35, 20, 0]) {
            cube([10, 45, 20], center=true);
        }
    }
}
