# Initial Layer Walls Jerk

Ce paramètre détermine la vitesse à laquelle la buse peut passer dans les coins lors de l'impression des murs de la couche initiale. Celle-ci peut être configurée séparément du reste des couches.

Le fait de passer à grande vitesse dans des angles aigus ne fait pas seulement vibrer la tête d'impression horizontalement. La plaque de construction peut également vibrer verticalement. Cela affecte négativement l'adhérence du lit. Le fait de passer les coins avec un peu plus de précaution lors de la première couche permet d'obtenir une adhérence plus régulière, mais l'impression sera plus longue.

En outre, la réduction de la saccade entraîne normalement un dépôt plus important de matériau dans les angles vifs, car la buse ralentit et le flux de matériau est retardé lorsque le débit est réduit. C'est souvent dans ces angles aigus que l'impression se détache en premier de la plaque de construction en raison d'une déformation. Déposer un peu plus de matériau dans ces angles est donc avantageux, car cela permet aux angles de mieux adhérer.

Le paramètre suivant est défini dans [fdmprinter.def.json](https://github.com/smartavionics/Cura/blob/mb-master/resources/definitions/fdmprinter.def.json) : jerk_walls_layer_0