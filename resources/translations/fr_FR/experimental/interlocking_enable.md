Générer une structure de connexion
====

Cette option permet de générer, aux endroits où les modèles se touchent, une structure de structures imbriquées. Cela permet d'améliorer l'adhérence entre les modèles, en particulier les modèles imprimés dans des matériaux différents.

![Interlocking sample](../../articles/images/interlocking_model.jpg)


Cette structure de chevauchement alterné "verrouille" physiquement les deux matériaux ensemble, de sorte que la force du lien entre eux ne dépend plus de leur compatibilité, mais est seulement limitée par la force du plus faible des deux matériaux.

 
Les implications sont énormes. Jusqu'à présent, pour imprimer des documents multimatériaux sur une imprimante capable de double extrusion, par exemple, il fallait consulter un tableau de compatibilité des matériaux comme celui-ci pour savoir si les matériaux utilisés pouvaient fonctionner ensemble. De nombreux matériaux doivent être imprimés à des températures différentes et d'autres sont chimiquement incompatibles. Grâce à l'emboîtement des matériaux, tous les matériaux peuvent être utilisés.

 
Vous n'avez pas non plus à vous soucier d'utiliser des solutions de contournement telles que la conception de pièces utilisant des joints, des clips ou des astuces fantaisistes d'impression sur place. Il n'est plus nécessaire d'imprimer une pièce en plusieurs morceaux et de les assembler à l'aide d'adhésifs ou d'attaches. Au lieu de cela, il suffit de charger dans Cura une pièce conçue pour l'impression de plusieurs matériaux et de la découper en activant le nouveau paramètre "Generate Interlocking Structure" (Générer une structure d'emboîtement).

 
Pour vérifier que le réglage a été correctement appliqué, vous pouvez aller dans l'onglet de prévisualisation dans Cura, et utiliser la barre de défilement sur le côté droit de l'écran pour passer à une partie de l'impression où les deux matériaux se rencontrent. Le motif d'emboîtement apparaîtra dans la partie découpée comme suit :

![Structure de connexion](../../articles/images/interlocking_pattern.png)


Les structures de connexion peuvent être adaptées à l'aide des paramètres suivants :
* [Largeur des attaches de connexion](interlocking_beam_width.md)
* [Orientation de la structure de connexion](interlocking_orientation.md)
* [Nombre de couches des attaches de connexion](interlocking_beam_layer_count.md)
* [Profondeur de connexion](interlocking_depth.md)
* [Distance limite de connexion](interlocking_boundary_avoidance.md)


Remarque : ce paramètre n'est disponible que lors de l'utilisation des préréglages avancés et experts. Ou s'il est activé via le menu des préférences. 

 
