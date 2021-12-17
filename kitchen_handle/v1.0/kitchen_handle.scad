fn=40;
fn1=40;
fn2=40;
handleTotHeight=85.5;
handleTotDepth=34.5;
comfortRadius=(handleTotHeight-55.11)/2;

intersection(){
    handle();
    translate([-5.5, 0, 0]){
        cube([$t*(handleTotDepth*2), 30, 100], center=true);
    }
}

module handle(){
    // handleTotHeight=85.5;
    // handleTotDepth=34.5;
    // comfortRadius=(handleTotHeight-55.11)/2;

    // Vertical - Center
    cylinder(r=9.81/2, h=handleTotHeight-comfortRadius*2+0.5, center=true, $fn=fn);

    // Horizontal - Top
    translate([handleTotDepth/2+comfortRadius/2, 0, handleTotHeight/2]) {
        difference() {
            rotate([0, 90, 0]) {
                cylinder(r=9.81/2, h=handleTotDepth-comfortRadius+0.5, center=true, $fn=fn);
            }
            rotate([0, 90, 0]) {
                cylinder(r=3.5, h=handleTotDepth-comfortRadius+0.5+0.05, center=true, $fn=fn);
            }
        }
    }

    // Horizontal - Bottom
    translate([handleTotDepth/2+comfortRadius/2, 0, -handleTotHeight/2]) {
        difference() {
            rotate([0, 90, 0]) {
                cylinder(r=9.81/2, h=handleTotDepth-comfortRadius+0.5, center=true, $fn=fn);
            }
            rotate([0, 90, 0]) {
                cylinder(r=3.5, h=handleTotDepth-comfortRadius+0.5+0.05, center=true, $fn=fn);
            }
        }
    }


    // translate([comfortRadius, 0, (handleTotHeight-comfortRadius*2)/2]) {
    //     rotate([90, 0, 0]) {
    //         circle(comfortRadius, $fn=fn);       
    //     }
    // }

    // Curve - Top
    intersection(){
        translate([comfortRadius, 0, handleTotHeight/2-comfortRadius]) {
            rotate([90, 0, 0]) {
                rotate_extrude(convexity = 10, $fn = fn1, angle=360)
                    translate([comfortRadius, 0, 0])
                        circle(9.81/2, $fn=fn2);
            }
        }
        translate([9.81/2, 0, handleTotHeight/2-9.81/2]) {
            cube(size=comfortRadius+9.81/2, center=true);
        }
    }

    // Curve - Bottom
    rotate([180, 0, 0]) {
        intersection(){
            translate([comfortRadius, 0, handleTotHeight/2-comfortRadius]) {
                rotate([90, 0, 0]) {
                    rotate_extrude(convexity = 10, $fn = fn1, angle=360)
                        translate([comfortRadius, 0, 0])
                        circle(9.81/2, $fn=fn2);
                }
            }
            translate([9.81/2, 0, handleTotHeight/2-9.81/2]) {
                cube(size=comfortRadius+9.81/2, center=true);
            }
        }
    }

    // Name
    translate([-9.81/2, 0, 0]) {
        rotate([0, 90+180, 0]) {
            scale([0.34, 0.34, 1]) {
                linear_extrude(height=1, center=true, convexity=10, twist=0) {
                    text("(•~•)Ψ", halign = "center", valign = "center", $fn = 300);
                }
            }
        }
    }
}