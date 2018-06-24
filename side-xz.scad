
include <config.scad>;
use <snap-joint/snap-nut.scad>;

module side_xz()
{
    difference()
    {
        // Plate
        cube([
            box_x,
            material_z,
            box_z
            ]);

        // Edge nose cutouts
        for (x = [
                nose_x_inset,
                box_x - nose_x_width - nose_x_inset
                ])
        {
            for (z = [
                    support_margin,
                    box_z - material_z - support_margin
                    ])
            {
                translate([x, -nothing, z])
                cube([
                    nose_x_width,
                    material_z + 2*nothing,
                    material_z
                    ]);
            }
        }

        // Snap nuts
        for (x = [
                material_z/2 + support_margin,
                box_x - material_z/2 - support_margin
                ])
        {
            scale([1, 2, 1])
            translate([x, 0, box_z/2])
            rotate([0, 90, 0])
            snap_nut_cutout(
                width = snap_joint_width,
                height = snap_joint_height + 2*nothing,
                stick_width = snap_joint_stick_width
                );
        }

        // Middle diminution
        for (z = [
                -nothing,
                box_z - material_z + nothing
                ])
        {
            translate([
                box_x/2 - diminution_x_width/2,
                -nothing,
                z
                ])
            cube([
                diminution_x_width,
                material_z + 2*nothing,
                material_z
                ]);
        }
    }
}

side_xz();

