# Cooling Fan Lag

The time it takes the cooling fan to accelerate from 0 to 100%. The fan lag setting is there to tell Cura how long it takes the fan to spool up from stationary to full speed. With that knowledge, it can turn the fan on/off before the airflow change is required. 


i.e. when printing a bridge wall line that requires 100% fan, it can turn the fan on full, say, 1 second before the nozzle gets to the bridge wall line. 


The following settings are defined in [fdmprinter.def.json](https://github.com/smartavionics/Cura/blob/mb-master/resources/definitions/fdmprinter.def.json) : cool_fan_lag