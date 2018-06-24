
include <config.scad>;
use <snap-joint/snap-joint.scad>;

module side_yz()
{
    snap_cutout_size_y = snap_joint_height - snap_joint_feather_hook_height;
    difference()
    {
        // Plate
        translate([0, material_z, 0])
        cube([
            material_z,
            box_y - 2*material_z,
            box_z
            ]);

        // Edge nose cutouts
        for (y = [
                nose_y_inset,
                box_y - nose_y_width - nose_y_inset
                ])
        {
            for (z = [
                    support_margin,
                    box_z - material_z - support_margin
                    ])
            {
                translate([-nothing, y, z])
                cube([
                    material_z + 2*nothing,
                    nose_y_width,
                    material_z
                    ]);
            }
        }

        // Front edge snap-joint cutout
        translate([
            -nothing,
            -nothing,
            box_z/2 - snap_joint_cutout_width/2
            ])
        cube([
            material_z + 2*nothing,
            snap_cutout_size_y,
            snap_joint_cutout_width
            ]);

        // Back edge snap-joint cutout
        translate([
            -nothing,
            box_y - snap_cutout_size_y + nothing,
            box_z/2 - snap_joint_cutout_width/2
            ])
        cube([
            material_z + 2*nothing,
            snap_cutout_size_y,
            snap_joint_cutout_width
            ]);
    }

    // Front edge snap-joint
    translate([
        material_z/2,
        snap_joint_height - snap_joint_feather_hook_height + nothing,
        box_z/2
        ])
    rotate([180, 90, 0])
    snap_joint(
        width = snap_joint_width,
        height = snap_joint_height + 2*nothing,
        stick_width = snap_joint_stick_width
        );

    // Back edge snap-joint
    translate([
        material_z/2,
        box_y - snap_joint_height + snap_joint_feather_hook_height - nothing,
        box_z/2
        ])
    rotate([0, 90, 0])
    snap_joint(
        width = snap_joint_width,
        height = snap_joint_height + 2*nothing,
        stick_width = snap_joint_stick_width
        );
}

side_yz();


