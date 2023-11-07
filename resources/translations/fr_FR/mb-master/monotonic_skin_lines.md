# Monotonic Skin Lines (mb-master)

Print the skin lines monotonically. This may improve the visual quality of the skin. Only applied when the 'Lines' [skin pattern](../top_bottom/top_bottom_pattern_lines.md) is used.

This parameter was introduced before the official version of Cura integrated its own [Monotonic Top/Bottom Order](../top_bottom/skin_monotonic.md). The result obtained being different, the Cura-MAster fill option was kept. 

![Ordre monotone de la version  officiel de Cura](../../../articles/images-mb/monotonic_skin_lines_regular_cura.png)
![Ordre monotone de Cura Master](../../../articles/images-mb/monotonic_skin_lines_cura_master.png)

En fonction du résultat obtenu, vous pouvez décider d'activer l'un ou l'autre de l'ordre monotone.

Notez que si le remplissage monotone de la version officielle de Cura est déjà actif, vous ne pouvez pas activer cette option.


Le paramètre suivant est défini dans [fdmprinter.def.json](https://github.com/smartavionics/Cura/blob/mb-master/resources/definitions/fdmprinter.def.json) : monotonic_skin_lines
