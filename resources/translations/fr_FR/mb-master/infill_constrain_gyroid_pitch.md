# Minimise Gyroid Holes

When enabled, the gyroid line pitch is altered to ensure that the lines 'cross' twice per gyroid cycle. This will partially fill the holes that often appear where the line orientation changes. Note that enabling this will make some infill densities impossible to print so a higher density that is printable will be used instead. 

![Minimise Gyroid Holes Off](../images-mb/infill_constrain_gyroid_pitch_off.png)

![Minimise Gyroid Holes On](../images-mb/infill_constrain_gyroid_pitch_on.png)

This feature is disabled when [adaptive layer heights](../experimental/adaptive_layer_height_enabled.md) are enabled.

Le paramètre suivant est défini dans [fdmprinter.def.json](https://github.com/smartavionics/Cura/blob/mb-master/resources/definitions/fdmprinter.def.json) : infill_constrain_gyroid_pitch

