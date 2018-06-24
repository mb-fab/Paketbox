
$fn = 100;
nothing = 0.01;

// Material to cut from
material_z = 3;

// The inside measures of the box
cargo_x = 360;
cargo_y = 360;
cargo_z = 150;

// How much space to leave between nose cutouts and material corner
support_margin = 3;

// Resulting box measures
box_x = cargo_x + 2*material_z + 2*support_margin;
box_y = cargo_y + 2*material_z;
box_z = cargo_z + 0;

top_inset_z = 5;
bottom_inset_z = 5;
side_y_inset = 5;

// Nose properties
nose_width = box_x / 3;
nose_offset_x = box_x/2 - nose_width/2;
nose_offset_y = nose_offset_x;

/*
 * Snap joint parameters
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

