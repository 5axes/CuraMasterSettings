# Mesh Temperature Delta

The nozzle temperature used for the current mesh is increased by this amount. Negative values reduce the nozzle temperature.

This parameter is mainly used as a specific parameter to be specified on a selected mesh. It allows in this way for prints with several parts to define a different temperature for the parts.

You can also modify the temperature of a print locally by defining the temperature delta using a local modification mesh. 

Note: As the temperature change command is given with an M104 S code (without waiting for the hotend to reach the required temperature), it is possible that the temperature may not be fully reached at the time of printing.

The following settings are defined in [fdmprinter.def.json](https://github.com/smartavionics/Cura/blob/mb-master/resources/definitions/fdmprinter.def.json) : mesh_temperature_delta