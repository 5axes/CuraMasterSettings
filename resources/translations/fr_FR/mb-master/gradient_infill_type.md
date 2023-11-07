# Gradient Infill Type

The type of gradient infill to use. All types modify the infill line flow in proportion to the distance to the model outline. At the model outline, the infill line flow will be gradient infill max flow. Away from the model outline, the infill line flow will be gradient infill min flow. 1D simply uses the distance to the nearest end of the current infill line. 2D differs in that the distance is measured to the nearest wall on the same layer. 2D+ also takes into account the distance to the build plate and the distance to the top layer of the model. 3D uses the distance to the nearest wall or skin on any layer.
This type in gradient based infil is based on the idea from [CNCKitchen](https://www.cnckitchen.com/blog/gradient-infill-for-3d-prints) and [Github repository](https://github.com/CNCKitchen/GradientInfill).


![CncKitchen Gradient Infill](../../articles/images-mb/CncKitchenGradientInfill.png)

## Option

- None : the Gradient Infill is not active

- 1D : trivial and fast, it simply calculates the distance to the closest end of the current infill line.

- 2D : bit slower, now calculates the minimum distance to the boundary on the current layer.

- 2D+ : same as 2D but also looks at the distance to the build plate and to the top of the print. A good choice if the model doesn't vary in height.

- 3D : the full monty, calculates the min distance to the nearest wall or skin (the object boundary). Could be very slow for large models and dense infill.


## Gradient Infill Speed Scheme

The speed modification scheme to use when printing gradient infill. Fast alters the print speed to keep the extrusion rate constant, the print speed can both increase and decrease. Slow is similar except the print speed can only decrease. On flow change reduces the print speed where the infill flow is changing.


## Gradient Infill Speed Scheme option 
- None
- Fast
- Slow
- On Flow Change

![Gradient Infill Speed Scheme](../../articles/images-mb/Gradient_Infill_Speed_Scheme.jpg)

The fast and slow schemes both modify the print speed so that throughout all of the infill, the extruder will turn at the same speed. So for both schemes, when the flow rate doubles, the speed has to halve, and so on.

The fast scheme uses the normal print speed for normal flow so if that normal infill speed is 100 mm/s you will indeed get 200 mm/s where the flow is 50% and 50 mm/s where the flow is 200%. This is assuming the infill speed factor is 100%. If you modify that the speed changes will be less or more depending on whether you reduce the speed factor or increase it. Note that changing the speed factor from 100% will make the extruder rate change.

The slow scheme uses the normal print speed for the lowest flow and so all other flows will make the print speed reduce. So in your example, with the slow scheme, at 50% flow the speed will be 100 mm/s, at 100% flow the speed will be 50 mm/s and at 200% flow, the speed will be 25 mm/s.

[Implement gradient infill Discussion on Github](https://github.com/smartavionics/Cura/issues/38)


Le paramètre suivant est défini dans [fdmprinter.def.json](https://github.com/smartavionics/Cura/blob/mb-master/resources/definitions/fdmprinter.def.json) : gradient_infill_type