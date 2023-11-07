# Top Surface Skin Overlap Percentage

Ajustez la quantité de chevauchement entre les murs et (les points d'extrémité des) lignes centrales de la peau de la surface supérieure, en pourcentage de la largeur des lignes de la peau et du mur le plus à l'intérieur. Un léger chevauchement permet aux murs de se raccorder fermement à la peau. 

![Pourcentage de chevauchement de la peau de la surface supérieure](../images-mb/roofing_overlap.svg)

Pour être activée, les [Couches de la surface supérieure](../top_bottom/roofing_layer_count.md) doit être > 0 et [Motif haut/bas](../top_bottom/top_bottom_pattern.md) doit être différent de 'Concentrique'.

Il convient de noter qu'à largeur de ligne égale entre la peau et la paroi, tout pourcentage supérieur à 50 % peut déjà faire passer la peau au-delà de la paroi, car à ce moment-là, la position de la buse de l'extrudeuse de peau peut déjà dépasser le milieu de la paroi.

Le paramètre suivant est défini dans [fdmprinter.def.json](https://github.com/smartavionics/Cura/blob/mb-master/resources/definitions/fdmprinter.def.json) : roofing_overlap

