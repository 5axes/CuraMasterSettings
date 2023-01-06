
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


# gradient_infill_type option none
None


# gradient_infill_type option constant_fast
Fast


# gradient_infill_type option constant_slow
Slow


# gradient_infill_type option flow_change
On Flow Change


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


The following settings are defined in [fdmprinter.def.json](https://github.com/smartavionics/Cura/blob/mb-master/resources/definitions/fdmprinter.def.json) : arrange_disable_model_rotations