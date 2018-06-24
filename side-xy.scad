
include <config.scad>;

module side_xy()
{
    // Central plate
    translate([
        material_z + side_y_inset,
        material_z,
        0
        ])
    cube([
        box_x - 2*material_z - 2*side_y_inset,
        box_y - 2*material_z,
        material_z
        ]);

    // Add front and back edge noses
    for (y = [
                0,
                box_y - material_z - nothing
            ])
    {
        translate([
            nose_offset_x,
            y,
            0
            ])
        cube([
            nose_width,
            material_z + nothing,
            material_z
            ]);
    }

    // Add left and right edge noses
    for (x = [
            side_y_inset,
            box_x - side_y_inset - material_z - nothing
            ])
    {
        translate([
            x,
            nose_offset_y,
            0
            ])
        cube([
            material_z + nothing,
            nose_width,
            material_z
            ]);
    }
}

side_xy();

