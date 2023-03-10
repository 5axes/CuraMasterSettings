# Top Surface Skin Overlap

Adjust the amount of overlap between the walls and (the endpoints of) the top surface skin-centerlines. A slight overlap allows the walls to connect firmly to the skin. Note that, given an equal skin and wall line-width, any value over half the width of the wall may already cause any skin to go past the wall, because at that point the position of the nozzle of the skin-extruder may already reach past the middle of the wall.

![Top Surface Skin Overlap mm](../images-mb/roofing_overlap_mm.svg)

To be enabled the [Top Surface Skin Layers](../top_bottom/roofing_layer_count.md) must be  > 0 and [Top/Bottom Pattern](../top_bottom/top_bottom_pattern.md) must be different from  'Concentric'.

The following settings are defined in [fdmprinter.def.json](https://github.com/smartavionics/Cura/blob/mb-master/resources/definitions/fdmprinter.def.json) : roofing_overlap_mm

