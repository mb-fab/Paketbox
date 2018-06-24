
include <config.scad>;
use <side-xy.scad>;
use <side-xz.scad>;
use <side-yz.scad>;

module model()
{
    translate([0, 0, bottom_inset_z])
    side_xy();

    translate([0, 0, box_z - top_inset_z - material_z])
    side_xy();

    #color("green")
    translate([0, -nothing, 0])
    side_xz(true, false);

    color("green")
    translate([0, box_y - material_z + nothing, 0])
    side_xz(false, true);

    #color("blue")
    translate([side_y_inset - nothing, 0, 0])
    side_yz();

    color("blue")
    translate([box_x - side_y_inset - material_z + nothing, 0, 0])
    side_yz();
}

model();
