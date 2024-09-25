$fs=0.01;
difference() {
    union() {
      difference() {
        difference() {
          difference() {
            rotate([90.0,0.0,0.0]) import("iphone_se_case_v1.stl");
              translate([-26.5,-61.5,0.0]) 
              intersection() {
                translate([-100.0,-200.0,0.0]) cube([200.0, 400.0, 100.0]);
                minkowski() {
                  cube([53.0, 123.0, 3.0]);
                  cylinder(r1=5.395, h=6.5, r2=5);
                }
              }
          }
        }
        translate([-100.0,-52.0,-2.5]) 
          minkowski() {
            cube([200.0, 99.0, 1.0]);
            cylinder(r1=0, h=8, r2=16.0);
          }
      }

      // For Battery
      // distance between orign and back plane: 3.75mm, 4.95mm
      // Battery Dimensions: 48x102x4 mm
      // left: 12mm, right: 11mm, top: 30mm, bottom: 8mm
      translate([-25.0,-52+11, -6-3.76]) {
        union() {
          minkowski() {
            cube([50.0, 104.0, 4]);
            sphere(r = 2, $fn=32);
          }
          translate([0,0, 3.0]) 
            minkowski() {
              cube([50.0, 104.0, 1]);
              cylinder(r = 2,h=2, $fn=32);
            }
        }
      }
    }

    // Slot for battery
    translate([-24.0, -51.0+11, -5-3.74]) {
      cube([48, 102, 5]);
    }
}