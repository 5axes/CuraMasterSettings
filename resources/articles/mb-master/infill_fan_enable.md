# Infill Fan Speed Override

When enabled, the print cooling fan speed is altered for the infill. Using a reduced or even zero fan speed when printing infill can make the part stronger. The new value for the fan speed is defined by the option [Infill Fan Speed](infill_fan_speed.md).


The part cooling can have a tremendous impact on the layer adhesion with PLA. Basically, the difference between 100% fan and 0% fan was a pretty linear increase of strength up to 50% - the less cooling, the stronger the layer adhesion. The downside for normal printing is obviously worse overhangs and print quality in general.

By using this special setting for the Infill area, you could increase the strength of the part for the Infill with no degradation of the overall visual quality.


The following settings are defined in [fdmprinter.def.json](https://github.com/smartavionics/Cura/blob/mb-master/resources/definitions/fdmprinter.def.json) : infill_fan_enable