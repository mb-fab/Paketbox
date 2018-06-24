
include <config.scad>;

module side_xy()
{
    // Central plate
    translate([
        support_margin + material_z,
        material_z,
        0
        ])
    cube([
        box_x - 2*material_z - 2*support_margin,
        box_y - 2*material_z,
        material_z
        ]);

    // Add noses in X axis
    for (x = [
            nose_x_inset,
            box_x - nose_x_width - nose_x_inset
            ])
    {
        for (y = [
                0,
                box_y - material_z - nothing
                ])
        {
            translate([x, y, 0])
            cube([
                nose_x_width,
                material_z + nothing,
                material_z
                ]);
        }
    }

    // Add noses in Y axis
    for (x = [
            support_margin,
            box_x - support_margin - material_z - nothing
            ])
    {
        for (y = [
                nose_y_inset,
                box_y - nose_y_width - nose_y_inset
                ])
        {
            translate([x, y, 0])
            cube([
                material_z + nothing,
                nose_y_width,
                material_z
                ]);
        }
    }
}

side_xy();

