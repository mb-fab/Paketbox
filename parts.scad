
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
    // Align the higher stack to the left side, so we can read the required material height
    side_pieces_height = 4*box_z + 3*spacing;
    top_bottom_pieces_height = 2*box_y + spacing;
    side_pieces_x = (side_pieces_height > top_bottom_pieces_height) ? 0 : (box_x + spacing);
    top_bottom_pieces_x = (side_pieces_height > top_bottom_pieces_height) ? (box_x + spacing) : 0;

    translate([
        side_pieces_x,
        0,
        0
        ])
    side_xz_planar();

    translate([
        side_pieces_x + snap_joint_feather_hook_height + material_z,
        box_z + spacing,
        0
        ])
    side_yz_planar();

    translate([
        side_pieces_x,
        2*(box_z + spacing),
        0
        ])
    side_xz_planar();
    
    translate([
        side_pieces_x + snap_joint_feather_hook_height + material_z,
        3*(box_z + spacing),
        0
        ])
    side_yz_planar();
    
    translate([
        top_bottom_pieces_x,
        0,
        0
        ])
    side_xy();
    
    translate([
        top_bottom_pieces_x,
        box_y + spacing,
        0
        ])
    side_xy();
}

parts();
