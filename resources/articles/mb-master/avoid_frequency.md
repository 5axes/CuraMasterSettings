# Avoid Frequency

When non-zero, this specifies a resonant frequency to be avoided when printing using the lines and zig zag patterns. To stop the print head oscillating at that frequency, the print speed is reduced where appropriate.

![Speed modification due to Avoid Frequency modification](../images-mb/avoid_frequency.jfif)


The following settings are defined in [fdmprinter.def.json](https://github.com/smartavionics/Cura/blob/mb-master/resources/definitions/fdmprinter.def.json) : avoid_frequency