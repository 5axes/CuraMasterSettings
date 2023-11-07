# Max Filament Flow Rate

Lorsqu'il est différent de zéro, définit le débit de filament maximum autorisé (en mm^3/s). Le débit de filament de chaque ligne imprimée est calculé comme suit [hauteur de la couche](../resolution/layer_height.md) X [largeur de ligne](../resolution/line_width.md) X [vitesse d'impression](../speed/speed_print.md). La limite de débit est appliquée en réduisant la vitesse d'impression.

Le paramètre suivant est défini dans [fdmprinter.def.json](https://github.com/smartavionics/Cura/blob/mb-master/resources/definitions/fdmprinter.def.json) : material_max_mm3_per_sec