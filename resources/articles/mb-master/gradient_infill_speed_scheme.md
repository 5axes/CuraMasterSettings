# Gradient Infill Speed Scheme

## Description
The speed modification scheme to use when printing gradient infill. Fast alters the print speed to keep the extrusion rate constant, the print speed can both increase and decrease. Slow is similar except the print speed can only decrease. On flow change reduces the print speed where the infill flow is changing.


### Gradient Infill Speed Scheme
- None
- Fast
- Slow
- On Flow Change


### [Gradient Infill Speed Factor](gradient_infill_speed_factor.md)
Scales the effect the infill speed scheme has on the print speed.

### [Gradient Infill Distance](gradient_infill_dist.md)
The distance over which the infill flow is reduced from max to min.


The following settings are defined in [fdmprinter.def.json](https://github.com/smartavionics/Cura/blob/mb-master/resources/definitions/fdmprinter.def.json) : gradient_infill_speed_scheme

