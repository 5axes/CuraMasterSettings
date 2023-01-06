# only_one_wall_top 

Visible Top Skins Have Only One Wall


# only_one_wall_top description
When enabled, visible top skins are surrounded by only one wall.


# only_one_wall_bottom
Bottom Skin Has Only One Wall


# only_one_wall_bottom description
When enabled, the bottom skin is surrounded by only one wall.


# min_gap_area
Minimum Gap Area


# min_gap_area description
Filter out gaps whose area is less than this.


# inner_layer_min_gap_area
Inner Layer Minimum Gap Area


# inner_layer_min_gap_area description
Filter out gaps on inner layers whose area is less than this.


# xy_offset_taper_layers
Horizontal Expansion Taper Layers


# xy_offset_taper_layers description
The horizontal expansion tapers from the value used for the initial layer to the value used for the above layers over this many layers.


# hole_xy_offset_max_size
Hole Horizontal Expansion Max Size


# hole_xy_offset_max_size description
When non-zero, horizontal expansion is only applied to holes whose diameter is less than this value.


# hole_xy_offset_max_path_len
Hole Horizontal Expansion Max Length


# hole_xy_offset_max_path_len description
When non-zero, horizontal expansion is only applied to holes whose perimeter length is less than this value.


# z_seam_not_over_air
Z Seam Not Over Air


# z_seam_not_over_air description
When enabled, if the z seam location is above air, it is moved so that it is not above air (if possible).


# monotonic_skin_lines
Monotonic Skin Lines (mb-master)


# monotonic_skin_lines description
Print the skin lines monotonically. This may improve the visual quality of the skin. Only applied when the 'Lines' skin pattern is used.


# monotonic_skin_lines_reversed
Reverse Monotonic Line Order


# monotonic_skin_lines_reversed description
Print the skin lines monotonically in reverse order.


# ironing_fan_enable
Ironing Fan Speed Override


# ironing_fan_enable description
When enabled, the print cooling fan speed is altered for the ironed regions.


# ironing_fan_speed
Ironing Fan Speed


# ironing_fan_speed description
Percentage fan speed to use when printing ironed regions.


# roofing_overlap
Top Surface Skin Overlap Percentage


# roofing_overlap description
Adjust the amount of overlap between the walls and (the endpoints of) the top surface skin-centerlines, as a percentage of the line widths of the skin lines and the innermost wall. A slight overlap allows the walls to connect firmly to the skin. Note that, given an equal skin and wall line-width, any percentage over 50% may already cause any skin to go past the wall, because at that point the position of the nozzle of the skin-extruder may already reach past the middle of the wall.


# roofing_overlap_mm
Top Surface Skin Overlap


# roofing_overlap_mm description
Adjust the amount of overlap between the walls and (the endpoints of) the top surface skin-centerlines. A slight overlap allows the walls to connect firmly to the skin. Note that, given an equal skin and wall line-width, any value over half the width of the wall may already cause any skin to go past the wall, because at that point the position of the nozzle of the skin-extruder may already reach past the middle of the wall.


# infill_pattern_resolution
Infill Pattern Resolution


# infill_pattern_resolution description
The resolution of the infill pattern of the print. High resolution produces the most accurate pattern, low resolution generates the fewest lines.


# infill_pattern_resolution option high_resolution
High


# infill_pattern_resolution option medium_resolution
Medium


# infill_pattern_resolution option low_resolution
Low


# infill_constrain_gyroid_pitch
Minimise Gyroid Holes


# infill_constrain_gyroid_pitch description
When enabled, the gyroid line pitch is altered to ensure that the lines 'cross' twice per gyroid cycle. This will partially fill the holes that often appear where the line orientation changes. Note that enabling this will make some infill densities impossible to print so a higher density that is printable will be used instead. This feature is disabled when adaptive layer heights are enabled.


# discrete_lines_infill_definition
Discrete Lines Definition


# discrete_lines_infill_definition description
Either a definition written as a JSON string or an @ followed by the name of a JSON file that contains the definition. The definition file name can either be absolute or relative to the current project file's directory or the user's home directory. Note that even when the Infill Density setting is not explicitly used when generating discrete lines, a density value of 0 will still generate no infill and a density value of 100 will generate completely solid infill.


# infill_scaling_z
Infill Vertical Scaling


# infill_scaling_z description
Scales the vertical infill pattern. Values larger than 100% stretch the pattern, values less than 100% compress the pattern. Note that some infill patterns do not work well with scaling values that differ greatly from 100%.


# infill_fan_enable
Infill Fan Speed Override


# infill_fan_enable description
When enabled, the print cooling fan speed is altered for the infill.


# infill_fan_speed
Infill Fan Speed


# infill_fan_speed description
Percentage fan speed to use when printing infill. Using a reduced or even zero fan speed when printing infill can make the part stronger.


# material_max_mm3_per_sec
Max Filament Flow Rate


# material_max_mm3_per_sec description
When non-zero, sets the maximum allowed filament flow rate (in mm^3/S). The filament flow rate of each printed line is calculated as layer height * line width * print speed. The flow rate limit is enforced by reducing the print speed.


# speed_walls_layer_0
Initial Layer Wall Speed


# speed_walls_layer_0 description
The speed used to print walls in the initial layer. Reducing this speed may increase adhesion to the build plate while still allowing the skin areas to be printed at a faster speed.


# acceleration_walls_layer_0
Initial Layer Wall Acceleration


# acceleration_walls_layer_0 description
The acceleration during the printing of walls in the initial layer.


# jerk_walls_layer_0
Initial Layer Walls Jerk


# jerk_walls_layer_0 description
The maximum instantaneous velocity change during the printing of walls in the initial layer.


# avoid_frequency
Avoid Frequency


# avoid_frequency description
When non-zero, this specifies a resonant frequency to be avoided when printing using the lines and zig zag patterns. To stop the print head oscillating at that frequency, the print speed is reduced where appropriate.


# travel_no_combing_on_initial_layer
Disable combing on the initial layer


# travel_no_combing_on_initial_layer description
Disabling combing on the initial layer can improve the adhesion of wall lines to the build plate.


# retraction_combing_max_extra_distance
Max Comb Extra Distance


# retraction_combing_max_extra_distance description
When non-zero, combing travel moves that exceed the straight line distance by this amount or more will be replaced with a straight line travel move.


# retraction_hop_initial_layers
Z Hop Initial Layers


# retraction_hop_initial_layers description
The number of initial layers that use Z Hop. A non-zero value reduces the chance of the initial layer lines coming away from the build plate.


# cool_fan_min_at_height
Initial Fan Speed at Height


# cool_fan_min_at_height description
The height at which the fans spin at Initial Fan Speed. The fans are off below this height.


# cool_fan_min_layer
Initial Fan Speed at Layer


# cool_fan_min_layer description
The layer at which the fans spin at Initial Fan Speed. If Initial Fan Speed at Height is set, this value is calculated and rounded to a whole number.


# cool_fan_lag
Cooling Fan Lag


# cool_fan_lag description
The time it takes the cooling fan to accelerate from 0 to 100%.


# support_pattern_resolution
Support Pattern Resolution


# support_pattern_resolution description
The resolution of the support pattern of the print. High resolution produces the most accurate pattern, low resolution generates the fewest lines.


# support_pattern_resolution option high_resolution
High


# support_pattern_resolution option medium_resolution
Medium


# support_pattern_resolution option low_resolution
Low


# support_interface_wall_count
Support Interface Wall Line Count


# support_interface_wall_count description
The number of walls with which to surround support interface. Adding a wall can make support print more reliably and can support overhangs better, but increases print time and material used.


# support_roof_wall_count
Support Roof Wall Line Count


# support_roof_wall_count description
The number of walls with which to surround support interface roof. Adding a wall can make support print more reliably and can support overhangs better, but increases print time and material used.


# support_bottom_wall_count
Support Bottom Wall Line Count


# support_bottom_wall_count description
The number of walls with which to surround support interface floor. Adding a wall can make support print more reliably and can support overhangs better, but increases print time and material used.


# support_roof_top_layer_density
Support Roof Top Layer Density


# support_roof_top_layer_density description
The density of the top layer of the roof of the support structure. A higher value results in better overhangs, but the supports are harder to remove.


# support_roof_top_layer_line_distance
Support Roof Top Layer Line Distance


# skirt_brim_z_offset
Skirt/Brim Z Offset


# skirt_brim_z_offset description
Offset the nozzle height by this amount when printing skirt or brim lines (negative values move the nozzle down).


# brim_inside_only
Brim Only on Inside


# brim_inside_only description
Only print the brim on the inside of the model. This reduces the amount of brim you need to remove afterwards, while it doesn't reduce the bed adhesion that much.


# extruder_min_volume
Extruder Minimum Volume


# extruder_min_volume description
The minimum volume to be extruded for each layer the extruder is used. The combined volume of the print and the prime tower will be greater or equal to this.


# prime_tower_compact
Compact Prime Tower


# prime_tower_compact description
When enabled, all extruders share the same prime tower area rather than each extruder having its own area (mb-master).


# prime_all_extruders_on_layer_0
Prime All Extruders Used On Initial Layer


# prime_all_extruders_on_layer_0 description
When enabled, all extruders used on the initial layer are primed. Otherwise, only the outermost extruder is primed (mb-master).


# meshfix_remove_holes_above_air
Remove Holes Above Air


# meshfix_remove_holes_above_air description
Remove the holes in each layer that are not supported by the layer below. This blanks off the bottom of the hole and provides support for the hole's perimeter walls on the next layer.


# spiralize_min_line_width
Minimum Spiralized Line Width


# spiralize_min_line_width description
The minimum width of a spiralized contour line as a percentage of the normal line width. Setting this to a value less than 100 enables variable width spiralized contours.


# spiralize_max_line_width
Maximum Spiralized Line Width


# spiralize_max_line_width description
The maximum width of a spiralized contour line as a percentage of the normal line width. Setting this to a value greater than 100 enables variable width spiralized contours.


# gradient_infill_type
Gradient Infill Type


# gradient_infill_type description
The type of gradient infill to use. All types modify the infill line flow in proportion to the distance to the model outline. At the model outline, the infill line flow will be gradient infill max flow. Away from the model outline, the infill line flow will be gradient infill min flow. 1D simply uses the distance to the nearest end of the current infill line. 2D differs in that the distance is measured to the nearest wall on the same layer. 2D+ also takes into account the distance to the build plate and the distance to the top layer of the model. 3D uses the distance to the nearest wall or skin on any layer.


# gradient_infill_type option none
None


# gradient_infill_type option linear_1d
1D


# gradient_infill_type option linear_2d
2D


# gradient_infill_type option linear_2d+
2D+


# gradient_infill_type option linear_3d
3D


# gradient_infill_min_flow
Gradient Infill Min Flow


# gradient_infill_min_flow description
The minimum flow used when printing a gradient infill line. Expressed as a percentage of the normal infill line flow.


# gradient_infill_max_flow
Gradient Infill Max Flow


# gradient_infill_max_flow description
The maximum flow used when printing a gradient infill line. Expressed as a percentage of the normal infill line flow.


# gradient_infill_speed_scheme
Gradient Infill Speed Scheme


# gradient_infill_speed_scheme description
The speed modification scheme to use when printing gradient infill. Fast alters the print speed to keep the extrusion rate constant, the print speed can both increase and decrease. Slow is similar except the print speed can only decrease. On flow change reduces the print speed where the infill flow is changing.


# gradient_infill_type option none
None


# gradient_infill_type option constant_fast
Fast


# gradient_infill_type option constant_slow
Slow


# gradient_infill_type option flow_change
On Flow Change


# gradient_infill_speed_factor
Gradient Infill Speed Factor


# gradient_infill_speed_factor description
Scales the effect the infill speed scheme has on the print speed.


# gradient_infill_dist
Gradient Infill Distance


# gradient_infill_dist description
The distance over which the infill flow is reduced from max to min.


# wall_overhang_over_support
Ignore Support Below Overhangs


# wall_overhang_over_support description
When enabled, support is ignored and so overhangs over support are printed using overhanging wall settings.


# wall_overhang_fan_speed
Overhanging Wall Fan Speed


# wall_overhang_fan_speed description
Percentage fan speed to use when printing overhanging walls.


# wall_overhang_material_flow
Overhanging Wall Flow


# wall_overhang_material_flow description
When printing overhanging walls, the amount of material extruded is multiplied by this value.


# bridge_skin_min_area
Minimum Bridge Skin Area


# bridge_skin_min_area description
Unsupported skin regions whose area is less than this will be printed using the normal skin settings. Larger unsupported skin regions will be printed using the bridge skin settings.


# bridge_over_support
Bridge Over Support


# bridge_over_support description
Ignore any support so that bridges are created over support.


# bridge_extend_floating_walls
Bridge Extend Floating Walls


# bridge_extend_floating_walls description
Extend bridge wall lines that start/end above air so that they are anchored to the part outline. The amount a line is extended is limited to twice the original length.


# bridge_wall_end_boost
Bridge Wall End Boost


# bridge_wall_end_boost description
This controls the amount the extrusion rate is increased immediately after a bridge wall ends. Increasing the extrusion rate can stop under-extrusion occurring at the start of the following line.


# bridge_wall_acceleration
Bridge Wall Acceleration


# bridge_wall_acceleration description
The acceleration with which all bridge walls are printed.


# bridge_wall_jerk
Bridge Wall Jerk


# bridge_wall_jerk description
The maximum instantaneous velocity change with which all bridge walls are printed.


# bridge_skin_acceleration
Bridge Skin Acceleration


# bridge_skin_acceleration description
The acceleration with which all bridge skins are printed.


# bridge_skin_jerk
Bridge Skin Jerk


# bridge_skin_jerk description
The maximum instantaneous velocity change with which all bridge skins are printed.


# bridge_skin_overlap
Bridge Skin Overlap Percentage


# bridge_skin_overlapdescription
Skin overlap used for bridge skins expressed as a percentage of the outer wall line width.


# bridge_skin_overlap_mm
Bridge Skin Overlap


# bridge_skin_overlap_mm description
Skin overlap distance used for bridge skins. Ideally, this should be less than Bottom Skin Expand Distance.


# bridge_wall_layers
Bridge Wall Layers


# bridge_wall_layers description
The number of layers above air that are printed using the bridge wall settings.


# bridge_skin_overlap_2
Bridge Second Skin Overlap Percentage


# bridge_skin_overlap_2 description
Skin overlap used for the second bridge skin layer expressed as a percentage of the outer wall line width.


# bridge_skin_overlap_mm_2
Bridge Second Skin Overlap


# bridge_skin_overlap_mm_2 description
Skin overlap distance used for the second bridge skin layer. Ideally, this should be less than Bottom Skin Expand Distance.


# bridge_skin_overlap_3
Bridge Third Skin Overlap Percentage


# bridge_skin_overlap_3 description
Skin overlap used for the third bridge skin layer expressed as a percentage of the outer wall line width.


# bridge_skin_overlap_mm_3
Bridge Third Skin Overlap


# bridge_skin_overlap_mm_3 description
Skin overlap distance used for the third bridge skin layer. Ideally, this should be less than Bottom Skin Expand Distance.


# mesh_temperature_delta
Mesh Temperature Delta


# mesh_temperature_delta description
The nozzle temperature used for the current mesh is increased by this amount. Negative values reduce the nozzle temperature


# mesh_temperature_dawdle_speed
Mesh Dawdle Speed


# mesh_temperature_dawdle_speed description
Print speed used when waiting for the temperature to change at the start and end of the mesh.


# mesh_temperature_dawdle_time
Mesh Dawdle Time


# mesh_temperature_dawdle_time description
The amount of time to print using Mesh Dawdle Speed when waiting for the temperature to change at the start and end of the mesh.


# skin_lines_boost_flow
Travel Compensate Skin Lines


# skin_lines_boost_flow description
When enabled, skin line flow is progressively increased to compensate for the nozzle pressure loss that occurs during the preceding travel move. This pressure loss can result in reduced skin print quality. The longer the preceding travel move or shorter the skin line, the more the flow is increased.


# skin_lines_boost_flow_scaling
Travel Compensation Scaling Factor


# skin_lines_boost_flow_scaling description
The amount the skin line flow is increased in proportion to the length of the preceding travel move is multiplied by this factor. Larger values increase the amount the flow is boosted for a given travel distance.


# skin_lines_boost_max_travel_len
Maximum compensated travel distance


# skin_lines_boost_max_travel_len description
Limits the travel distance used to calculate the amount of boost applied to skin lines. Travels longer than this distance are treated as if they are this length.


# skin_lines_max_flow_boost
Skin Lines Max Flow


# skin_lines_max_flow_boost description
The maximum flow multiplier used when printing skin lines.


# skin_lines_max_flow_boost_0
Skin Lines Initial Layer Max Flow


# skin_lines_max_flow_boost_0 description
The maximum flow multiplier used when printing skin lines on the initial layer.


# arrange_model_spacing_mm
Model Spacing Distance


# arrange_model_spacing_mm description
The spacing distance between arranged objects. After changing this setting, do 'Arrange All Models' to re-arrange the models.


# arrange_disable_model_rotations
Disable Model Rotations


# arrange_disable_model_rotations description
When enabled, models are not rotated when they are arranged. Does not alter any existing rotation the models may have.

