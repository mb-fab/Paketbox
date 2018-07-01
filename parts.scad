
include <config.scad>;
use <side-xz.scad>;
use <side-xy.scad>;
use <side-yz.scad>;

spacing = 2;

module side_xz_planar(cut1, cut2)
{
    rotate([-90, 0, 0])
    side_xz(cut1, cut2);
}

module side_yz_planar()
{
    rotate([-90, 270, 0])
    side_yz();
}

module parts()
{
    side_xz_planar();

    translate([material_z, box_z + spacing, 0])
    side_yz_planar();

    translate([0, 2*(box_z + spacing), 0])
    side_xz_planar();
    
    translate([material_z, 3*(box_z + spacing), 0])
    side_yz_planar();
    
    translate([box_x + spacing, 0, 0])
    side_xy();
    
    translate([box_x + spacing, box_y + spacing, 0])
    side_xy();
}

parts();
