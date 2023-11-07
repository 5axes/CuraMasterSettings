# Mesh Temperature Delta

La température de la buse utilisée pour le maillage actuel est augmentée de cette valeur. Les valeurs négatives réduisent la température de la buse.

Ce paramètre est principalement utilisé comme un paramètre spécifique à spécifier sur une maille sélectionnée. Il permet ainsi, pour les impressions comportant plusieurs pièces, de définir une température différente pour chacune d'entre elles.

Vous pouvez également modifier localement la température d'une impression en définissant le delta de température à l'aide d'une maille de modification locale. 

Note : Comme la commande de changement de température est donnée avec un code M104 S (sans attendre que le hotend atteigne la température requise), il est possible que la température ne soit pas complètement atteinte au moment de l'impression.

Le paramètre suivant est défini dans [fdmprinter.def.json](https://github.com/smartavionics/Cura/blob/mb-master/resources/definitions/fdmprinter.def.json) : mesh_temperature_delta