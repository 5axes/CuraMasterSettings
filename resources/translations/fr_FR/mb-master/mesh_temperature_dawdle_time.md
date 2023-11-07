# Mesh Dawdle Time

The amount of time to print using Mesh Dawdle Speed when waiting for the temperature to change at the start and end of the mesh. This parameter allows, when using the [Mesh Temperature Delta](mesh_temperature_delta.md) parameter, to specify a delay for the extruder to reach the right temperature.
As the option uses the M104 code that sets a new target hot end temperature and continue without waiting, this parameter allows to anticipate the temperature change by triggering the temperature change command earlier or later.  

Le paramètre suivant est défini dans [fdmprinter.def.json](https://github.com/smartavionics/Cura/blob/mb-master/resources/definitions/fdmprinter.def.json) : mesh_temperature_dawdle_time