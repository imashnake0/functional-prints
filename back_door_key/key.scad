// Scale: Units of used vernier caliper
scale_svg_to_1 = 0.00145;

scale_shoulder_to_tip = 31;
height = 1.2;

scale([scale_shoulder_to_tip, scale_shoulder_to_tip, 1]) {
    scale([scale_svg_to_1, scale_svg_to_1, 1]) {
        linear_extrude(
            height = 1, 
            center = true, 
            convexity = 10
        ) {
            import(file = "key.svg");
        }    
    }
    // #cube(size=[1, 1, 1]);
}

