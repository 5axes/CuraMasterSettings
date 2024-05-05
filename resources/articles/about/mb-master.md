# What's different from the regular master branch?

* Initial Layer Wall Speed/Acceleration/Jerk lets you specify those values for the walls on the initial layer.

* Initial Fan Speed At Height/Layer lets you specify the layer at which the initial fan speed comes into effect. Below that layer, the fans are off.

* Improved wall overlap compensation.

* Improved handling of inter-wall gap filling and thin walls.

* Use combing distances when deciding print order of inner walls.

* Added Cooling Fan Lag setting thus allowing the fan to reach the required speed before the fan override region is encountered.

* Added Overhanging Wall Fan Speed setting to override fan speed when printing overhung walls and Ignore Support Below Overhangs setting.

* Spiralized models that are not 100% solid can be printed using variable line widths.

* Implementation of [gradient infill](https://www.cnckitchen.com/blog/gradient-infill-for-3d-prints).

* Added ability to override fan speed when printing infill.

* Reworked handling of bridge skins - now partitions skins into bridged and non-bridged regions and processes each region separately.

* Anti-resonance feature.

* Settings to disable combing on initial layer and use z-hop only on initial layer.

* Setting to enable bridging over support.

* (Very experimental) settings to modify print temperature within a mesh.

* Increase skin layer counts to maintain skin thickness when using variable layer heights.

* Medium and low resolution gyroid infill variants.

* Setting to fill the holes in the gyroid pattern.

* 3d infill patterns can be scaled in the vertical direction.

* Add Schwarz P and Schwarz D infill patterns.

* Setting to enable z hop for just initial layers.

* Elimination of z-seam wobble when z-seam alignment is user-specified and z-seam corner preference is none.

* Added compact prime tower and other settings to improve compatibility with Palette II.

* Added setting to remove holes in skin that are above air, this makes it easier to make holes for fasteners where you have a small diameter hole above a larger diameter hole. After printing, just drill out the single layer that closes the bottom of the small diameter hole.

* Added settings to avoid underextrusion when printing short skin lines.

* Added honeycomb pattern for infill and support.

* Added monotonic skin printing.

* Added setting to restrict hole horizontal expansion to those holes whose perimeter length is less than the setting value.

* Added Hilbert pattern for infill and skins.

* Added settings to control spacing and rotation when models are rearranged.

* Added setting to specify z-offset of skirt and brim lines.

* Added setting to specify that brim lines should only be printed on inside (i.e. within holes) of model.

* Added preference to move models loaded from 3mf files not created by Cura to the centre of the buildplate.

* Added setting to taper the horizontal expansion at the bottom of the model.

* Added setting to force gyroid lines to "cross" so minimising the size of the holes in the pattern.

* Added settings to surround the bottom skin and the visible top skins with only 1 wall.

* Added Discrete Lines infill pattern.

* Added settings to specify overlap of bridge skins.

* Added settings to specify overlap of top surface skins.

* Improved random z-seam positioning.

# What new settings are provided?

* **Minimum Gap Area** Filter out gaps whose area is less than this.

* **Inner Layer Minimum Gap Area** Filter out gaps on inner layers whose area is less than this.

* **Infill Fan Speed Override** When enabled, the print cooling fan speed is altered for the infill.

* **Infill Vertical Scaling** Scales the vertical infill pattern. Values larger than 100% stretch the pattern, values less than 100% compress the pattern.

* **Infill Fan Speed** Percentage fan speed to use when printing infill. Using a reduced or even zero fan speed when printing infill can make the part stronger.

* **Infill Pattern Resolution** The resolution of the infill pattern of the print. High resolution produces the most accurate pattern, low resolution generates the fewest lines.

* **Initial Layer Wall Speed** The speed used to print walls in the initial layer. Reducing this speed may increase adhesion to the build plate while still allowing the skin areas to be printed at a faster speed.

* **Initial Layer Wall Acceleration** The acceleration during the printing of walls in the initial layer.

* **Initial Layer Walls Jerk** The maximum instantaneous velocity change for travel moves in the initial layer.

* **Minimise Gyroid Holes** When enabled, the gyroid line pitch is altered to ensure that the lines 'cross' twice per gyroid cycle. This will partially fill the holes that often appear where the line orientation changes. Note that enabling this will make some infill densities impossible to print so a higher density that is printable will be used instead.

* **Avoid Frequency** When non-zero, this specifies a resonant frequency to be avoided when printing using the lines and zig zag patterns. To stop the print head oscillating at that frequency, the print speed is reduced where appropriate.

* **Max Comb Extra Distance** When non-zero, combing travel moves that exceed the straight line distance by this amount or more will be replaced with a straight line travel move.

* **Disable combing on the initial layer** Disabling combing on the initial layer can improve the adhesion of wall lines to the build plate.

* **Z Hop Initial Layers** The number of initial layers that use Z Hop. A non-zero value reduces the chance of the initial layer lines coming away from the build plate.

* **Initial Fan Speed at Height** The height at which the fans spin at Initial Fan Speed. The fans are off below this height.

* **Initial Fan Speed at Layer** The layer at which the fans spin at Initial Fan Speed. If Initial Fan Speed at Height is set, this value is calculated and rounded to a whole number.

* **Cooling Fan Lag** The time it takes the cooling fan to accelerate from 0 to 100%.

* **Extruder Minimum Volume** The minimum volume to be extruded for each layer the extruder is used. The combined volume of the print and the prime tower will be greater or equal to this.

* **Prime All Extruders Used On Initial Layer** When enabled, all extruders used on the initial layer are primed. Otherwise, only the outermost extruder is primed.

* **Compact Prime Tower** When enabled, all extruders share the same prime tower area rather than each extruder having its own area.

* **Minimum Spiralized Line Width** The minimum width of a spiralized contour line as a percentage of the normal line width. Setting this to a value less than 100 enables variable width spiralized contours.

* **Maximum Spiralized Line Width** The maximum width of a spiralized contour line as a percentage of the normal line width. Setting this to a value greater than 100 enables variable width spiralized contours.

* **Ignore Support Below Overhangs** When enabled, support is ignored and so overhangs over support are printed using overhanging wall settings.

* **Overhanging Wall Fan Speed** Percentage fan speed to use when printing overhanging walls.

* **Overhanging Wall Flow** When printing overhanging walls, the amount of material extruded is multiplied by this value.

* **Bridge Wall Layers** The number of layers above air that are printed using the bridge wall settings.

* **Maximum Bridge Wall Length** When non-zero, unsupported walls longer than this will be printed using the normal wall settings.

* **Bridge Extend Floating Walls** Extend bridge wall lines that start/end above air so that they are anchored to the part outline. The amount a line is extended is limited to twice the original length.

* **Bridge Wall End Boost** This controls the amount the extrusion rate is increased immediately after a bridge wall ends. Increasing the extrusion rate can stop under-extrusion occurring at the start of the following line.

* **Minimum Bridge Skin Area** Unsupported skin regions whose area is less than this will be printed using the normal skin settings. Larger unsupported skin regions will be printed using the bridge skin settings.

* **Bridge Sparse Infill Max Density** Maximum density of infill considered to be sparse. Skin over sparse infill is considered to be unsupported and so may be treated as a bridge skin.

* **Bridge Wall Acceleration** The acceleration with which all bridge walls are printed.

* **Bridge Wall Jerk** The maximum instantaneous velocity change with which all bridge walls are printed.

* **Bridge Skin Acceleration** The acceleration with which all bridge skins are printed.

* **Bridge Skin Jerk** The maximum instantaneous velocity change with which all bridge skins are printed.

* **Mesh Temperature Delta** The nozzle temperature used for the current mesh is increased by this amount. Negative values reduce the nozzle temperature.

* **Mesh Dawdle Speed** Print speed used when waiting for the temperature to change at the start and end of the mesh.

* **Mesh Dawdle Time** The amount of time to print using Mesh Dawdle Speed when waiting for the temperature to change at the start and end of the mesh.

* **Bridge Over Support** Ignore any support so that bridges are created over support.

* **Support Roof Top Layer Density** The density of the top layer of the roof of the support structure. A higher value results in better overhangs, but the supports are harder to remove.

* **Support Roof Top Layer Line Distance** Distance between the printed support lines on the top roof layer. This setting is calculated by the Support Roof Top Layer Density, but can be adjusted separately.

* **Support Pattern Resolution** The resolution of the support pattern of the print. High resolution produces the most accurate pattern, low resolution generates the fewest lines.

* **Gradient Infill Type** The type of gradient infill to use. All types modify the infill line flow in proportion to the distance to the model outline. At the model outline, the infill line flow will be gradient infill max flow. Away from the model outline, the infill line flow will be gradient infill min flow. 1D simply uses the distance to the nearest end of the current infill line. 2D differs in that the distance is measured to the nearest wall on the same layer. 2D+ also takes into account the distance to the build plate and the distance to the top layer of the model. 3D uses the distance to the nearest wall or skin on any layer.

* **Gradient Infill Min Flow** The minimum flow used when printing a gradient infill line. Expressed as a percentage of the normal infill line flow.

* **Gradient Infill Max Flow** The maximum flow used when printing a gradient infill line. Expressed as a percentage of the normal infill line flow.

* **Gradient Infill Speed Scheme** The speed modification scheme to use when printing gradient infill. Fast alters the print speed to keep the extrusion rate constant, the print speed can both increase and decrease. Slow is similar except the print speed can only decrease. On flow change reduces the print speed where the infill flow is changing.

* **Gradient Infill Speed Factor** Scales the effect the infill speed scheme has on the print speed.

* **Gradient Infill Distance** The distance over which the infill flow is reduced from max to min.

* **Remove Holes Above Air** Remove the holes in each layer that are not supported by the layer below. This blanks off the bottom of the hole and provides support for the hole's perimeter walls on the next layer.

* **Travel Compensate Skin Lines** When enabled, skin line flow is progressively increased to compensate for the nozzle pressure loss that occurs during the preceding travel move. This pressure loss can result in reduced skin print quality. The longer the preceding travel move or shorter the skin line, the more the flow is increased.

* **Skin Lines Max Flow** The maximum flow multiplier used when printing skin lines.

* **Skin Lines Initial Layer Max Flow** The maximum flow multiplier used when printing skin lines on the initial layer.

* **Travel Compensation Scaling Factor** The amount the skin line flow is increased in proportion to the length of the preceding travel move is multiplied by this factor. Larger values increase the amount the flow is boosted for a given travel distance.

* **Maximum compensated travel distance** Limits the travel distance used to calculate the amount of boost applied to skin lines. Travels longer than this distance are treated as if they are this length.

* **Monotonic Skin Lines** Print the skin lines monotonically. This may improve the visual quality of the skin. Only applied when the 'Lines' skin pattern is used.

* **Reverse Monotonic Line Order** Print the skin lines monotonically in reverse order.

* **Hole Horizontal Expansion Max Size** When non-zero, horizontal expansion is only applied to holes whose diameter is less than this value.

* **Hole Horizontal Expansion Max Length** When non-zero, horizontal expansion is only applied to holes whose perimeter length is less than this value.

* **Horizontal Expansion Taper Layers** The horizontal expansion tapers from the value used for the initial layer to the value used for the above layers over this many layers.

* **Model Spacing Distance** The spacing distance between arranged objects. After changing this setting, do 'Arrange All Models' to re-arrange the models.

* **Disable Model Rotations** When enabled, models are not rotated when they are arranged. Does not alter any existing rotation the models may have.

* **Bridge Skin Overlap Percentage** Skin overlap used for bridge skins expressed as a percentage of the outer wall line width.

* **Bridge Skin Overlap** Skin overlap distance used for bridge skins. Ideally, this should be less than Bottom Skin Expand Distance.

* **Bridge Second Skin Overlap Percentage** Skin overlap used for the second bridge skin layer expressed as a percentage of the outer wall line width.

* **Bridge Second Skin Overlap** Skin overlap distance used for the second bridge skin layer. Ideally, this should be less than Bottom Skin Expand Distance.

* **Bridge Third Skin Overlap Percentage** Skin overlap used for the third bridge skin layer expressed as a percentage of the outer wall line width.

* **Bridge Third Skin Overlap** Skin overlap distance used for the third bridge skin layer. Ideally, this should be less than Bottom Skin Expand Distance.

* **Skirt/Brim Z Offset** Offset the nozzle height by this amount when printing skirt or brim lines (negative values move the nozzle down).

* **Visible Top Skins Have Only One Wall** When enabled, visible top skins are surrounded by only one wall.

* **Bottom Skin Has Only One Wall** When enabled, the bottom skin is surrounded by only one wall.

* **Discrete Lines Definition** Either a definition written as a JSON string or an @ followed by the name of a JSON file that contains the definition. The definition file name can either be absolute or relative to the current project file's directory or the user's home directory. Note that although the Infill Density setting is ignored when generating discrete lines, a density value of 0 will still generate no infill and a density value of 100 will generate completely solid infill.

* **Brim Only on Inside** Only print the brim on the inside of the model. This reduces the amount of brim you need to remove afterwards, while it doesn't reduce the bed adhesion that much.

* **Top Surface Skin Overlap Percentage** Adjust the amount of overlap between the walls and (the endpoints of) the top surface skin-centerlines, as a percentage of the line widths of the skin lines and the innermost wall. A slight overlap allows the walls to connect firmly to the skin. Note that, given an equal skin and wall line-width, any percentage over 50% may already cause any skin to go past the wall, because at that point the position of the nozzle of the skin-extruder may already reach past the middle of the wall.

* **Top Surface Skin Overlap** Adjust the amount of overlap between the walls and (the endpoints of) the top surface skin-centerlines. A slight overlap allows the walls to connect firmly to the skin. Note that, given an equal skin and wall line-width, any value over half the width of the wall may already cause any skin to go past the wall, because at that point the position of the nozzle of the skin-extruder may already reach past the middle of the wall.

* **Ironing Fan Speed Override** When enabled, the print cooling fan speed is altered for the ironed regions.

* **Ironing Fan Speed** Percentage fan speed to use when printing ironed regions.

* **Max Filament Flow Rate** When non-zero, sets the maximum allowed filament flow rate (in mm^3/S). The filament flow rate of each printed line is calculated as layer height * line width * print speed. The flow rate limit is enforced by reducing the print speed.

* **Z Seam Not Over Air** When enabled, if the z seam location is above air, it is moved so that it is not above air (if possible).

