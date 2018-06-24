
include <config.scad>;
use <side-xy.scad>;
use <side-xz.scad>;
use <side-yz.scad>;

module model()
{
    translate([0, 0, support_margin])
    side_xy();

    translate([0, 0, box_z - support_margin - material_z])
    side_xy();

    #color("green")
    translate([0, -nothing, 0])
    side_xz(true, false);

    color("green")
    translate([0, box_y - material_z + nothing, 0])
    side_xz(false, true);

    #color("blue")
    translate([support_margin - nothing, 0, 0])
    side_yz();

    color("blue")
    translate([box_x - support_margin - material_z + nothing, 0, 0])
    side_yz();
}

model();
