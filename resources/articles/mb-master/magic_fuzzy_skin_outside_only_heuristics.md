# Fuzzy Skin Outside Only Heuristics

A bit mask that selects the heuristic(s) to use when determining if a wall is facing outside or not (YMMV). The bit mask values are: 1 = convex hull heuristic. 2 = 'ray-trace' heuristic.

The parameter is only visible if the [Fuzzy Skin Outside Only](../experimental/magic_fuzzy_skin_outside_only.md) is activated.

![Fuzzy Skin Outside Only Heuristics = 0](../images-mb/magic_fuzzy_skin_outside_only_heuristics_2.png)

![Fuzzy Skin Outside Only Heuristics = 1](../images-mb/magic_fuzzy_skin_outside_only_heuristics_1.png)

![Fuzzy Skin Outside Only Heuristics = 2](../images-mb/magic_fuzzy_skin_outside_only_heuristics_2.png)


The following settings are defined in [fdmprinter.def.json](https://github.com/smartavionics/Cura/blob/mb-master/resources/definitions/fdmprinter.def.json) : magic_fuzzy_skin_outside_only_heuristics
