# Mesh Dawdle Time

Le temps d'impression à l'aide de Mesh Dawdle Speed en attendant que la température change au début et à la fin de la maille. Ce paramètre permet, lors de l'utilisation de la fonction [Mesh Temperature Delta](mesh_temperature_delta.md) pour spécifier un délai avant que l'extrudeuse n'atteigne la bonne température.

Comme l'option utilise le code M104 qui définit une nouvelle température cible du point chaud et continue sans attendre, ce paramètre permet d'anticiper le changement de température en déclenchant la commande de changement de température plus tôt ou plus tard.  

Le paramètre suivant est défini dans [fdmprinter.def.json](https://github.com/smartavionics/Cura/blob/mb-master/resources/definitions/fdmprinter.def.json) : mesh_temperature_dawdle_time