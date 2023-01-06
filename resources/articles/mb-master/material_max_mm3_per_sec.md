# Max Filament Flow Rate

When non-zero, sets the maximum allowed filament flow rate (in mm^3/S). The filament flow rate of each printed line is calculated as [layer height](../resolution/layer_height.md) X [line width](../resolution/line_width.md) X [print speed](../speed/speed_print.md). The flow rate limit is enforced by reducing the print speed.

The following settings are defined in [fdmprinter.def.json](https://github.com/smartavionics/Cura/blob/mb-master/resources/definitions/fdmprinter.def.json) : material_max_mm3_per_sec