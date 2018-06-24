
$fn = 100;
nothing = 0.01;

// Material to cut from
material_z = 3;

// The inside measures of the box
cargo_x = 360;
cargo_y = 360;
cargo_z = 15;

// How much space to leave between nose cutouts and material corner
support_margin = 3;

// Resulting box measures
size_x = cargo_x + 2*material_z + 2*support_margin;
size_y = cargo_y + 2*material_z;
size_z = cargo_z + 0;

// Nose properties


// Snap joint properties



box_x = 200;
box_y = box_x;
box_z = 100;

top_inset_z = 5;
bottom_inset_z = 5;
side_y_inset = 5;

nose_width = box_x / 3;
nose_offset_x = box_x/2 - nose_width/2;
nose_offset_y = nose_offset_x;

/*
 * Snap parameters
 */
/*
snap_joint_width = 25;
snap_joint_height = 25;
snap_joint_feather_hook_height = 5;
*/

snap_joint_width = 60;
snap_joint_height = 40;
snap_joint_feather_width = 7;
snap_joint_feather_hook_width = 2;
snap_joint_feather_hook_height = 5;
snap_joint_feather_hook_cutaway = 3;
snap_joint_feather_base_height = 0.5;
snap_joint_stick_width = 10;

snap_joint_cutout_width = snap_joint_width + 2;


/*
 * Pintsch Bamag KNRW-220-G measures
 */
lamp_diameter = 165;
// [hole_x, hole_y hole_diameter]
lamp_holes = [
    // The big one
    [112.352, 93.705, 19],
    // The inner screw holes in counterclockwise order
    [82.735, 141.303, 6],
    [25.113, 51.206, 6],
    [131.988, 46.073, 6],
    // The outer screw holes in counterclockwise order
    [66.192, 142.490, 6],
    [32.613, 36.141, 6],
    [141.364, 59.746, 6]
    ];

lamp_offset_x = (box_x - lamp_diameter)/2;
lamp_offset_y = (box_y - lamp_diameter)/2;


/*
 * nRFduino coordinates (in side-x)
 */
nrfduino_offset_x = 45;
nrfduino_offset_z = 25;

/*
 * Relay coordinates (in side-x)
 */
relay_offset_x = 55;
relay_offset_z = 35;

