# Gradient Infill Type


## description
The type of gradient infill to use. All types modify the infill line flow in proportion to the distance to the model outline. At the model outline, the infill line flow will be gradient infill max flow. Away from the model outline, the infill line flow will be gradient infill min flow. 1D simply uses the distance to the nearest end of the current infill line. 2D differs in that the distance is measured to the nearest wall on the same layer. 2D+ also takes into account the distance to the build plate and the distance to the top layer of the model. 3D uses the distance to the nearest wall or skin on any layer.


## Option

- None
-1D
-2D
-2D+
-3D


## Gradient Infill Speed Scheme


### Scheme description
The speed modification scheme to use when printing gradient infill. Fast alters the print speed to keep the extrusion rate constant, the print speed can both increase and decrease. Slow is similar except the print speed can only decrease. On flow change reduces the print speed where the infill flow is changing.


## gradient_infill_type option 
- Fast
- Slow
- On Flow Change


# gradient_infill_min_flow
Gradient Infill Min Flow


# gradient_infill_min_flow description
The minimum flow used when printing a gradient infill line. Expressed as a percentage of the normal infill line flow.


# gradient_infill_max_flow
Gradient Infill Max Flow


# gradient_infill_max_flow description
The maximum flow used when printing a gradient infill line. Expressed as a percentage of the normal infill line flow.


# gradient_infill_speed_factor
Gradient Infill Speed Factor


# gradient_infill_speed_factor description
Scales the effect the infill speed scheme has on the print speed.


# gradient_infill_dist
Gradient Infill Distance


# gradient_infill_dist description
The distance over which the infill flow is reduced from max to min.


The following settings are defined in [fdmprinter.def.json](https://github.com/smartavionics/Cura/blob/mb-master/resources/definitions/fdmprinter.def.json) : gradient_infill_type