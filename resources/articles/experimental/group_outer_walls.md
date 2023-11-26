Group Outer Walls
====
With this option Outer walls of different islands in the same layer are printed in sequence. When enabled the amount of flow changes is limited because walls are printed one type at a time, when disabled the number of travels between islands is reduced because walls in the same islands are grouped.

![Group outer walls Off](../images/group_outer_walls_off.png)
![Group outer walls ON](../images/group_outer_walls_on.png)

Cura avoids changing "feature" as much as possible. In this case it's doing all of the Inner Walls before coming back afterwards and doing the Outer Walls. With this option it's the way Cura work , the Inner and Outer Walls are done at different speeds, which in turn means they're using different rates of material flow - by limiting the change of flow as much as possible you're able to (in some circumstances) achieve a higher overall print quality.

By leaving the External Walls grouping mode set to off , and activating the parameter called [Optimize Wall Printing Order](../shell/optimize_wall_printing_order.md) in the Walls section. This foregoes the above as far as Walls are concerned and will group them together, printing both the Inner and Outer in succession for each "island" it encounters. By default this setting is disabled.