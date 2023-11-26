Regrouper les parois extérieures
====
Avec cette option, les parois extérieures des différents îlots d'une même couche sont imprimées dans l'ordre. Lorsqu'elle est activée, le nombre de changements de flux est limité car les parois sont imprimées un type à la fois. Lorsqu'elle est désactivée, le nombre de déplacements entre les îlots est réduit car les parois des mêmes îlots sont regroupées.

![Regrouper les parois extérieures Off](../../articles/images/group_outer_walls_off.png)
![Regrouper les parois extérieures ON](../../articles/images/group_outer_walls_on.png)

Cura évite autant que possible de changer de "caractéristique". Dans ce cas, il fait tous les murs intérieurs avant de revenir ensuite pour faire les murs extérieurs. Avec cette option, c'est la façon dont Cura travaille, les murs intérieurs et extérieurs sont réalisés à des vitesses différentes, ce qui signifie qu'ils utilisent des taux différents de flux de matériau - en limitant le changement de flux autant que possible, vous pouvez (dans certaines circonstances) obtenir une qualité d'impression globale plus élevée.

En laissant le mode de regroupement des murs externes désactivé et en activant le paramètre appelé [Optimiser l'ordre d'impression des murs] (../shell/optimize_wall_printing_order.md) dans la section Murs. Cela permet de renoncer à ce qui précède en ce qui concerne les murs et de les regrouper, en imprimant successivement l'intérieur et l'extérieur pour chaque "île" rencontrée. Par défaut, ce paramètre est désactivé.
