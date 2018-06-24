
$fn = 100;
nothing = 0.01;

// Material to cut from
material_z = 3;

// The inside measures of the box
cargo_x = 360;
cargo_y = 360;
cargo_z = 80;

// How much space to leave between nose cutouts and material corner
support_margin = 3;

// Resulting box measures
box_x = cargo_x + 2*material_z + 2*support_margin;
box_y = cargo_y + 2*material_z;
box_z = cargo_z + 2*material_z + 2*support_margin;

// Nose properties
nose_x_width = box_x / 4;
nose_y_width = box_y / 4;
nose_x_inset = material_z + 2*support_margin;
nose_y_inset = material_z + support_margin;
diminution_x_width = box_x - 2*nose_x_inset - 2*nose_x_width - 2*support_margin;
diminution_y_width = box_y - 2*nose_y_inset - 2*nose_y_width - 2*support_margin;

/*
 * Snap joint parameters
 */
/*
snap_joint_width = 25;
snap_joint_height = 25;
snap_joint_feather_hook_height = 5;
*/
snap_joint_width = 40;
snap_joint_height = 40;
snap_joint_feather_width = 7;
snap_joint_feather_hook_width = 2;
snap_joint_feather_hook_height = 5;
snap_joint_feather_hook_cutaway = 3;
snap_joint_feather_base_height = 0.5;
snap_joint_stick_width = 6;

snap_joint_cutout_width = snap_joint_width + 2;

