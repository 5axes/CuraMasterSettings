
# material_max_mm3_per_sec
Max Filament Flow Rate


# material_max_mm3_per_sec description
When non-zero, sets the maximum allowed filament flow rate (in mm^3/S). The filament flow rate of each printed line is calculated as layer height * line width * print speed. The flow rate limit is enforced by reducing the print speed.

The following settings are defined in [fdmprinter.def.json](https://github.com/smartavionics/Cura/blob/mb-master/resources/definitions/fdmprinter.def.json) : arrange_disable_model_rotations