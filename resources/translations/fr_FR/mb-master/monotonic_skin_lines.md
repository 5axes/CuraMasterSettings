# Monotonic Skin Lines (mb-master)

Print the skin lines monotonically. This may improve the visual quality of the skin. Only applied when the 'Lines' [skin pattern](../top_bottom/top_bottom_pattern_lines.md) is used.

This parameter was introduced before the official version of Cura integrated its own [Monotonic Top/Bottom Order](../top_bottom/skin_monotonic.md). The result obtained being different, the Cura-MAster fill option was kept. 

![Monotonic Order from Official Cura release](../../articles/images-mb/monotonic_skin_lines_regular_cura.png)
![Monotonic Order from Cura Master](../../articles/images-mb/monotonic_skin_lines_cura_master.png)

Depending on the result obtained, you can decide to activate one or the other of the Monotonic Order.

Note that if the Monotonic fill of the official version of Cura is already active, you cannot activate this option.


Le paramètre suivant est défini dans [fdmprinter.def.json](https://github.com/smartavionics/Cura/blob/mb-master/resources/definitions/fdmprinter.def.json) : monotonic_skin_lines
