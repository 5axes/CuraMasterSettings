# Cooling Fan Lag

Le temps nécessaire au ventilateur pour accélérer de 0 à 100%. Le paramètre de retard du ventilateur est là pour indiquer à Cura combien de temps il faut au ventilateur pour passer de l'état stationnaire à la vitesse maximale. En sachant cela, il peut activer/désactiver le ventilateur avant que le changement de flux d'air ne soit nécessaire. 


Par exemple, lors de l'impression d'une ligne de mur de pont qui nécessite un ventilateur à 100 %, il peut activer le ventilateur à fond, disons une seconde avant que la buse n'atteigne la ligne de mur de pont. 


Le paramètre suivant est défini dans [fdmprinter.def.json](https://github.com/smartavionics/Cura/blob/mb-master/resources/definitions/fdmprinter.def.json) : cool_fan_lag